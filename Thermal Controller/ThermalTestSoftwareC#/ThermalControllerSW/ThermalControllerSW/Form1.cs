using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using LibUsbDotNet;
using LibUsbDotNet.DeviceNotify;
using LibUsbDotNet.Info;
using LibUsbDotNet.Main;
using System.IO.Ports;
using System.Threading;



namespace ThermalControllerSW
{
    

    public partial class ThermalBackgroundWorker : Form
    {
        Athena obj = new Athena();
        char[] Char1 = new char[64];
        public static string StageMasterCommand;
        public static string AthenaResponse;
        public static bool SetValueChanged = false;
        public static bool SerialDataAvailable = false;
        public static bool UpdateStageTemp = false;
        public static bool GetStatus = false;
        public static int i = 0;
        static int j = 0;

        public ThermalBackgroundWorker()
        {
            InitializeComponent();
            
        }
        
       private void OnDeviceNotifyEvent(object sender, DeviceNotifyEventArgs e)
            {

                int r;
                numericUpDown3.Value = ++numericUpDown3.Value;
                //if this is your usb device, in my case an Arduino
                if (e.Object.ToString().Split('\n')[1].Contains("0x04D8"))
                {
                    if (e.EventType == EventType.DeviceArrival)
                    {
                        //see what com port has been added
                        //connect to it
                        //Thread.Sleep(250);
                        r = mySerialPort.PortyUpdate();

                        if (r == 0)
                        {
                            textBox2.Text = "No Connection";
                            //error
                        }
                        else
                        {
                            SetTempValue.Enabled = true;
                            StageTempValue.Enabled = true;
                            textBox1.Text = obj.GetStatus();
                            textBox2.Text = mySerialPort.portname;
                        }
                    }
                    else
                    {
                        //r = mySerialPort.Porty();
                        mySerialPort.ResetConnection();
                        //Get current availabale COM ports
                        Thread.Sleep(250);
                        try
                        {
                            r = mySerialPort.Porty();
                        }
                        catch
                        {

                            
                        }
                        SetTempValue.Enabled = false;
                        StageTempValue.Enabled = false;
                        textBox1.Text = "No Com";
                        textBox2.Text = "No Com";
                       // textBox2.Text = mySerialPort.portname;

                    }
                }
            }


        private void GetTempButton_Click(object sender, EventArgs e)
        {
            UpdateStageTemp = true; 
        }

        private void SystemTimer_Tick(object sender, EventArgs e)
        {        
            string BufferString ="";
             
             
            i++;
            
            //All Athena COmmunication is done with this timer

            //if data in serial buffer from StageMaster send to Athena
            if (SerialDataAvailable == true)
            {

                int bytes = serialPort1.BytesToRead;
                //create a byte array to hold the awaiting data
                byte[] StageMasterCommand1 = new byte[bytes];
                //read the data and store it
                serialPort1.Read(StageMasterCommand1, 0, bytes);
                SerialDataAvailable = false;



                //Parse out all commands to send
                //StageMaster will send multiple commands with out getting response :/
                try
                {
                    foreach (char c in StageMasterCommand1)
                    {
                        Char1[j++] = c;


                        if (c == '\r')
                        {
                            BufferString = new String(Char1);
                            StageMasterCommand = BufferString.Substring(0, j);
                            if (j > 1)
                            {
                                AthenaResponse = obj.PassToAthena(StageMasterCommand + "\n");
                                if (AthenaResponse[0] == '\n' && AthenaResponse[1] == '\n')
                                {
                                    AthenaResponse = AthenaResponse.Substring(1, AthenaResponse.Length - 1);
                                }
                            }

                            serialPort1.Write(AthenaResponse + "\r\n");
                            j = 0;
                        }
                    }

                }
                catch
                {
                }

            }






            else if (GetStatus == true)
            {
                textBox3.Text = obj.GetStatus();
                GetStatus = false;
            }


        //Update Stage Temp if required
            else if (checkBox1.Checked == true && i >= 5)
            {
                double StageTemp = obj.GetStageTemp();
                if (StageTemp != -1.0)
                {
                    StageTempValue.Text = Convert.ToString(StageTemp);
                }

                i = 0;
            }




            else if (UpdateStageTemp == true)
            {
                double StageTemp = obj.GetStageTemp();
                if (StageTemp != -1.0)
                {
                    StageTempValue.Text = Convert.ToString(StageTemp);
                }

                UpdateStageTemp = false;
            }

            //Change Set Temp if Value changed
            else if (SetValueChanged == true)
            {
                double AthenaSetTemp = obj.SetTemp(Convert.ToDouble(SetTempValue.Text));
                if (AthenaSetTemp != -1.0)
                {
                    SetTempValue.Text = Convert.ToString(AthenaSetTemp);
                }

                SetValueChanged = false;
            }










            
           
        }

        private void SetTempValue_ValueChanged(object sender, EventArgs e)
        {
           
            SetValueChanged = true;
          
        }

        private void ThermalBackgroundWorker_Shown(object sender, EventArgs e)
        {
            obj.SendValueUpdated += new COMUpdateDelegate(SentData);
            obj.SendValueUpdatedR += new COMUpdateDelegateR(ReceivedData);
            obj.COMTimeoutE += new COMTimeoutDelegate(COMTimeout);
            obj.UsbDeviceNotifier.OnDeviceNotify += OnDeviceNotifyEvent;


            FileReader.ReadParms();
            FileReader.SetParms();
            obj.SetUpCOMTimer();


            if (FileReader.parms.Debug == 0)
            {
                this.Hide();
            }


            if (FileReader.parms.COMLog == 1)
            {
                FileReader.ClearCOMLog();
            }
           

            Thread.Sleep(250);
            mySerialPort.Connect1();
          
            double SetTemp;
            double StageTemp;

            textBox1.Text = obj.GetStatus();
            textBox2.Text = mySerialPort.portname;
            SetTemp = obj.GetSetTemp();
            StageTemp = obj.GetStageTemp();
            {
               
                

                if (SetTemp != -1.0)
                {
                    SetTempValue.Text = Convert.ToString(SetTemp);
                }
                if (StageTemp != -1.0)
                {
                StageTempValue.Text = Convert.ToString(StageTemp);
                }
            }

            try
            {
               serialPort1.PortName = FileReader.parms.VirtualCOMPort;
               serialPort1.BaudRate = Convert.ToInt32(FileReader.parms.BaudRate);
               serialPort1.Open();
            }
            catch
            {

            }
           

        }

        private void serialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
           // int timerflag;
           // string Command;
          //  string Response;

            //turn off events so this communication is not interupted
        //    this.checkBox1.CheckedChanged -= new System.EventHandler(this.checkBox1_CheckedChanged);
         //   this.numericUpDown1.ValueChanged -= new System.EventHandler(this.numericUpDown1_ValueChanged);
         //   this.timer1.Tick -= new System.EventHandler(this.timer1_Tick);


           


       //     try
        //    {
         //       StageMasterCommand = serialPort1.ReadTo("\r");
         //   }
          //  catch
          //  {
          //      StageMasterCommand = "ReadTempError";
          //  }
            SerialDataAvailable = true;

           //   Response = obj.PassToAthena(StageMasterCommand + "\r\n");
              //Two line feeds can sometimes cause errors
              //cut it off
          //    if (Response[0] == '\n' && Response[1] == '\n')
            //  {
             //     Response = Response.Substring(1, Response.Length - 1);
            //  }
              
           //   serialPort1.Write(Response + "\r\n");
              //Essentailly flush buffer of extra command/garbage
              //Error one command behind this should enable this doesn't happen again
     ///         if (serialPort1.BytesToRead != 0)
       //       {
        //          try
         //         {
         //             Command = serialPort1.ReadLine();
           //       }
           //       catch
           //       {

           //       }
            //  }
              //turn off events so this communication is not interupted
         //     this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
         //     this.numericUpDown1.ValueChanged += new System.EventHandler(this.numericUpDown1_ValueChanged);
          //    this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
                
           
        }

        private void SentData(object sender, COMUpdate e)
        {
            // Update the text box on this form (the parent) with the new value
            int w = e.n;
            textBox4.Text = Convert.ToString(w);
            // textBox1.Text = RampString1;
           // RampTimer.Start();
        }

        private void ReceivedData(object sender, COMUpdate e)
        {
            // Update the text box on this form (the parent) with the new value
            int w = e.n;
            textBox5.Text = Convert.ToString(w);
            // textBox1.Text = RampString1;
            // RampTimer.Start();
        }

        private void COMTimeout(object sender, COMUpdate e)
        {
            // Update the text box on this form (the parent) with the new value
            int w = e.n;
            textBox6.Text = Convert.ToString(w);
            // textBox1.Text = RampString1;
            // RampTimer.Start();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            serialPort1.Close();
        }

        private void FlushButton_Click(object sender, EventArgs e)
        {
           
            try
            {
                string testy = mySerialPort.serialPort.ReadTo("\r");
                textBox3.Text = testy;
            }
            catch
            {

            }
        }

        private void StatusButton_Click(object sender, EventArgs e)
        {
            GetStatus = true;
            
        }
    }
}
