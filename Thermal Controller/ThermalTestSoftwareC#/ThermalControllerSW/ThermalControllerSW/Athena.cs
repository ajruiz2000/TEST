using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO.Ports;
using System.Windows.Forms;
using LibUsbDotNet;
using LibUsbDotNet.DeviceNotify;
using LibUsbDotNet.Info;
using LibUsbDotNet.Main;
using System.Runtime.InteropServices;
using System.IO.Ports;
using System.Threading;

namespace ThermalControllerSW
{
   public class Athena : Form
    {

      // public delegate void CommandSentEvent(object sender, EventArgs e);

      // public event CommandSentEvent Changed;

       System.Windows.Forms.Timer aTimer = new System.Windows.Forms.Timer();
        
       
  //  aTimer.Interval=5000;
    //aTimer.Enabled=true;


       // private System.Windows.Forms.Timer COMTimer;

        //this.SystemTimer = new System.Windows.Forms.Timer(this.components);
       // this.SystemTimer.Enabled = true;
       // this.SystemTimer.Tick += new System.EventHandler(this.SystemTimer_Tick);
       
       public event COMUpdateDelegate SendValueUpdated;
       public event COMUpdateDelegateR SendValueUpdatedR;
       public event COMTimeoutDelegate COMTimeoutE;
       private static readonly Object obj1 = new Object();


        public UsbDevice MyUsbDevice;

        //Vendor ID etc can be found through enumerating the USB devices
        public UsbDeviceFinder MyUsbFinder = new UsbDeviceFinder(0x04D8, 0x000A);
        public IDeviceNotifier UsbDeviceNotifier = DeviceNotifier.OpenDeviceNotifier();


        public static int CommandSent =0;
        public static int CommandReceived = 0;
        public static int COMTimeout = 0;
        public static string ReadAthena;
        public static string ReadAthenaWrite;
        public static string Response;
        public static string temp;
        public static int count = 0;
        public static bool COMtimer;
        char[] Char2 = new char[64];
        public string BufferString1;
       // private string ReadTemp;
        private int firstCharacter;
        private int firstCharacter1;
        private double TempValue;



        public void SetUpCOMTimer()
        {

            aTimer.Tick += new EventHandler(timer_Tick);
            COMtimer = false;
            aTimer.Enabled = false;
            aTimer.Interval = 50;
            // aTimer.Start();


        }

        public String GetStatus()
        {
            Response = SendReceiveData("$V\r");
            return Response;
        }

        //Return -1.0 on error
        public double SetTemp(double n)
        {

            Response = SendReceiveData("#01M01 " + n.ToString("0.0") + "C\r\n");
            return ExtractDouble(Response);
              //  try
              //  {
               //     firstCharacter = Response.IndexOf("C");
                //    firstCharacter1 = Response.IndexOf("M");
                //    Response = Response.Substring(firstCharacter1 + 4, firstCharacter - firstCharacter1 - 4);
                 //   TempValue = Convert.ToDouble(Response);
                 //   return TempValue;
               // }
              //  catch
              //  {
                //    return -1.0;
               // }
        }

        public String PassToAthena(string n)
        {

            if (n.Length <= 1)
            {
                return "error1";
            }


                Response = SendReceiveData(n + "\r");
                if (Response.Contains("Error"))
                {
                    return "#01R00= -99.0C\r";
                }
                else
                {
                return Response;
                }
            
              //  try
               // {
                  //  mySerialPort.serialPort.Write(n + "\r");
                    
                   // Response = 
                    
                    //flush buffer

                   
                       // string testy = mySerialPort.serialPort.ReadTo("\r");
                        // textBox3.Text = testy;
                   


                    //  firstCharacter = ReadTemp.IndexOf("C");
                    //  firstCharacter1 = ReadTemp.IndexOf("M");
                    // ReadTemp = ReadTemp.Substring(firstCharacter1 + 4, firstCharacter - firstCharacter1 - 4);
                    // TempValue = Convert.ToDouble(ReadTemp);
                    
                
               // catch
              //  {
              //      return "#01R00= -98.0C\r";
               // }
            




           // return "#01R00= -99.0C\r";
        }

        //Return -1.0 on error
        public double GetStageTemp()
        {

            Response = SendReceiveData("#01R00\r\n");
            return ExtractDouble(Response);

            //    try
            //    {
                    
                    
              //      firstCharacter = Response.IndexOf("C");
              //      firstCharacter1 = Response.IndexOf("=");
              //      Response = Response.Substring(firstCharacter1 + 2, firstCharacter - firstCharacter1 - 2);
               //     TempValue = Convert.ToDouble(Response);
               //     return TempValue;
              //  }
             //   catch
              //  {
              //      return -1.0;
              //  }
            
           


        }

        //Return -1.0 on error
        public double GetSetTemp()
        {
            Response = SendReceiveData("#01R01\r\n");
            return ExtractDouble(Response);
            //    try
            //    {
                    
              //      firstCharacter = Response.IndexOf("C");
               //     firstCharacter1 = Response.IndexOf("=");
               //     Response = Response.Substring(firstCharacter1 + 2, firstCharacter - firstCharacter1 - 2);
               //     TempValue = Convert.ToDouble(Response);
                //    return TempValue;
              //  }
             //   catch
            //    {
             //       return -1.0;
             //   }

            
        }

        public string SendReceiveData(String ToSend)
        {
            int bytes;



            if (mySerialPort.serialPort.IsOpen == true)
            {
                
                    try
                    {
                        //Write to Athena
                        mySerialPort.serialPort.Write(ToSend);
                        //aTimer.Start();
                        COMUpdate valueArgs = new COMUpdate(++CommandSent); //initisiate delegate to call method NewValue
                        SendValueUpdated(this, valueArgs);
                        if (FileReader.parms.COMLog == 1)
                        {
                            if (ToSend[ToSend.Length - 1] == '\n')
                            {
                                ToSend = ToSend.Substring(0, ToSend.Length - 1);

                            }
                            FileReader.WriteCOMLog((Convert.ToString(CommandSent)) + "  Sent  " + ToSend);
                        }
                    }
                    catch
                    {
                        return "Write Error";
                    }
                    try
                    {
                        //Thread.Sleep(50);
                       // ReadAthena = mySerialPort.serialPort.ReadTo("\r"); // appaers to be

                        //Read Everything
                        //Wait for data 50ms 

                        aTimer.Enabled = true;
                        while ((bytes = mySerialPort.serialPort.BytesToRead) == 0 && COMtimer == false)
                        {

                        }
                       aTimer.Enabled = false;
                        //create a byte array to hold the awaiting data
                        byte[] StageMasterCommand1 = new byte[bytes];
                        //read the data and store it
                        mySerialPort.serialPort.Read(StageMasterCommand1, 0, bytes);

                        //need to parse out the responses seperated by \r
                        foreach (char c in StageMasterCommand1)
                        {
                            Char2[count++] = c;

                            if (c == '\r') //full response 
                            {
                                BufferString1 = new String(Char2);
                                ReadAthena = BufferString1.Substring(0, count);
                                if (count > 1)
                                {
                                    COMUpdate valueArgsR = new COMUpdate(++CommandReceived); //initisiate delegate to call method NewValue
                                    SendValueUpdatedR(this, valueArgsR);
                                    if (FileReader.parms.COMLog == 1)
                                    {
                                        if (ReadAthena[0] == '\n' && ReadAthena[1] == '\n')
                                        {
                                            ReadAthenaWrite = ReadAthena.Substring(1, ReadAthena.Length - 1);
                                        }
                                        FileReader.WriteCOMLog((Convert.ToString(CommandReceived)) + "  Recv  " + ReadAthenaWrite + "\r\n");
                                    } 
                                }

                            }

                        }
                        count = 0;
                        return ReadAthena;









              //          COMUpdate valueArgsR = new COMUpdate(++CommandReceived); //initisiate delegate to call method NewValue
               //         SendValueUpdatedR(this, valueArgsR);

               //         if (FileReader.parms.COMLog == 1)
                //        {
                //            if (ReadAthena[0] == '\n' && ReadAthena[1] == '\n')
                //            {
                  //              ReadAthenaWrite = ReadAthena.Substring(1, ReadAthena.Length - 1);
                   //         }
                   //         FileReader.WriteCOMLog((Convert.ToString(CommandReceived)) + "  Recv  " + ReadAthenaWrite + "\r\n");
                   //     }


                   //     return ReadAthena;
                    }

                    catch
                    {
                        //flush buffer
                        try
                        {
    
                            string testy = mySerialPort.serialPort.ReadLine();
                            COMUpdate valueArgsR = new COMUpdate(++CommandReceived); //initisiate delegate to call method NewValue
                            SendValueUpdatedR(this, valueArgsR);

                            if (FileReader.parms.COMLog == 1)
                            {
                                if (ReadAthena[0] == '\n' && ReadAthena[1] == '\n')
                                {
                                    ReadAthenaWrite = ReadAthena.Substring(1, ReadAthena.Length - 1);
                                }
                                FileReader.WriteCOMLog((Convert.ToString(CommandReceived)) + "  Recv  FLUSH" + testy + "\r\n");
                                return testy;






                            }
                        }
                        catch
                        {
                            FileReader.WriteCOMLog("Read Error");
                            return "Read Error";
                            
                        }




                        return "Read/Write Error";

                    }
                }
            
            else
            {
                return "No COM Error";
            }
        }

        public double ExtractDouble(String r)
        {
            try
            {
                firstCharacter = r.IndexOf("C");
                if (r[firstCharacter - 5] == '0')
                {
                    temp = r.Substring(firstCharacter - 4, 4);
                }
                else
                {
                    temp = r.Substring(firstCharacter - 5, 5);
                }
                TempValue = Convert.ToDouble(temp);
                return TempValue;

            }
            catch
            {
                return -1.0;
            }
        }

        void timer_Tick(object sender, EventArgs e)
        {
            COMtimer = true;
            COMUpdate valueArgsR = new COMUpdate(++COMTimeout); //initisiate delegate to call method NewValue
            COMTimeoutE(this, valueArgsR);
        }
      

            


        

       


    }
}