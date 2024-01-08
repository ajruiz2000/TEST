using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Threading;
using ZedGraph;
using System.IO;


namespace WindowsFormsApplication1
{



    public partial class Form1 : Form
    {

        private Form2 childA;
        private Form3 childB;
        
       // private string RampString;
         string RampString1;
         string RampStart = "15";
         string RampStop = "35";
        
        public Form1()
        {
            InitializeComponent();
          


          GraphPane myPane = zedGraphControl1.GraphPane;
            myPane.Title.Text = "Temp vs Time";
            myPane.XAxis.Title.Text = "Time(s)";
            myPane.YAxis.Title.Text = "Temp(" + ((char)(176)) + "C)";


       }
    



       




         void SET25C_Click(object sender, EventArgs e)
        {

            serialPort1.Open();
            Thread.Sleep(10);//wait ten milliseconds   
            serialPort1.Write("#01e01+25.0\r");
            serialPort1.Close();
            textBox2.Text = "25.0" + ((char)(176)) + 'C';

           

        }
        bool standby_flag = false;
        private void StandBy_Click(object sender, EventArgs e)
        {

                   



            if (standby_flag == false)
            {
                serialPort1.Open();
                Thread.Sleep(10);//wait ten milliseconds   
                serialPort1.Write("#01N0\r");
                serialPort1.Close();
                standby_flag = true;
                StandBy.Text = "Stand By OFF";
            }
            else
            {
                serialPort1.Open();
                Thread.Sleep(10);//wait ten milliseconds   
                serialPort1.Write("#01F0\r");
                serialPort1.Close();
                standby_flag = false;
                StandBy.Text = "Stand By ON";
            }




        }


        string c;
        
        bool start_flag;
        private void button2_Click(object sender, EventArgs e)
        {
            string b = textBox1.Text;
            double value;
            bool isNum = double.TryParse(b, out value);


            if (isNum)
            {
                if (value > 200)
                {
                    value = 200;
                }
                c = String.Format("{0:0.0}", value); //format with one decimal

                if (checkSerial == true) ;
                {
                    serialPort1.Open();
                    Thread.Sleep(10);//wait ten milliseconds   
                    serialPort1.Write("#01e01");
                    Thread.Sleep(10);//wait ten milliseconds 
                    if (value >= 0)
                    {
                        Thread.Sleep(10);//wait ten milliseconds   
                        serialPort1.Write("+");

                    }
                    serialPort1.Write(c);
                    Thread.Sleep(10);//wait ten milliseconds 
                    serialPort1.Write("\r");
                    Thread.Sleep(10);
                    serialPort1.Close();
                    Thread.Sleep(2000);
                    textBox1.Text = null;
                    textBox2.Text = c + ((char)(176)) + 'C';
                }
            }

            else
            {
                //textBox1.Text = "INVALID INPUT";
                MessageBox.Show("Invalid Input", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }


        private void CheckKeys(object sender, System.Windows.Forms.KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                string b = textBox1.Text;
                double value;
                bool isNum = double.TryParse(b, out value);


                if (isNum)
                {
                    //value = Convert.ToSingle(b);
                    if (value > 200)
                    {
                        value = 200;
                    }
                    c = String.Format("{0:0.0}", value); //format with one decimal


                    serialPort1.Open();
                    Thread.Sleep(10);//wait ten milliseconds   
                    serialPort1.Write("#01e01");
                   Thread.Sleep(10);//wait ten milliseconds 
                    if (value >= 0)
                    {
                        Thread.Sleep(10);//wait ten milliseconds   
                        serialPort1.Write("+");

                    }
                    serialPort1.Write(c);
                    Thread.Sleep(10);//wait ten milliseconds 
                    serialPort1.Write("\r");
                   Thread.Sleep(10);//wait ten milliseconds


                    serialPort1.Close();
                   // Thread.Sleep(2000);
                    textBox1.Text = null;
                    textBox2.Text = c + ((char)(176)) + 'C';
                }
                else
                {
                    textBox1.Text = null;
                    //textBox1.Text = "Invalid Entry";
                    MessageBox.Show("Invalid Input", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        int i;

        
        
        double athenatemp_double;
        bool file_open = false;
      //  string colorStr = "Red";


        FileStream fileStream = new FileStream(@"C:\test\" + DateTime.Now.ToString("dd-MM-yy HH_mm_ss") + ".txt", FileMode.Create, FileAccess.Write);
        private void timer1_Tick(object sender, EventArgs e)
        {

            GraphPane myPane = zedGraphControl1.GraphPane;





            if (serialPort1.IsOpen == true)
            {
                serialPort1.Close();
            }
            

           
          
            
                Thread.Sleep(10);//wait ten milliseconds
                serialPort1.Open();
                serialPort1.Write("#01R0\r");
               Thread.Sleep(10);//wait ten milliseconds
                string message = serialPort1.ReadTo("\r");
                Thread.Sleep(10);//wait ten milliseconds
                serialPort1.Close();

                int start_temp = message.IndexOf(' ');
            if (start_temp == -1)
            {
                start_temp = message.IndexOf('-') - 1;
            }
                int stop_temp = message.IndexOf('C');


                string athenatemp = message.Substring((start_temp + 1), (stop_temp - start_temp - 1)); 
                athenatemp_double = Convert.ToSingle(athenatemp);


                if (athenatemp_double > 500)
                {
                    MessageBox.Show("No Stage...Plug in Stage", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    while (athenatemp_double > 500)
                    {
                        Thread.Sleep(10);//wait ten milliseconds
                    }
                }

                athenatemp = String.Format("{0:0.0}", athenatemp_double);
                textBox3.Text = athenatemp + ((char)(176)) + 'C';
               

                if (start_flag == true)//start graph
                {
                    PointPairList list1 = new PointPairList();
                    Color graph_color = new Color();
                    if (graph_counter % 4 == 1)
                    {
                        //Color graph_color = new Color();
                        graph_color = Color.Red;
                        
                    }

                    if (graph_counter % 4 == 2)
                    {
                        //Color graph_color = new Color();
                        graph_color = Color.Blue;

                    }

                    if (graph_counter % 4 == 3)
                    {
                        //Color graph_color = new Color();
                        graph_color = Color.Green;

                    }

                    if(graph_counter % 4 == 0)
                    {
                    
                        //Color graph_color = new Color();
                        graph_color = Color.Purple;

                    }

                    if (file_open == false)
                    {

                        StreamWriter m_streamWriter1 = new StreamWriter(fileStream);
                        m_streamWriter1.WriteLine("{0} {1}", DateTime.Now.ToLongTimeString(), DateTime.Now.ToLongDateString());
                        // m_streamWriter.WriteLine(dateStr);

                        m_streamWriter1.Flush();
                        file_open = true;

                    }



                    
                    i++;
                    list1.Add(i, athenatemp_double);
                    LineItem myCurve = myPane.AddCurve("", list1, graph_color, SymbolType.Circle);
                   StreamWriter m_streamWriter = new StreamWriter(fileStream);
                    
                    m_streamWriter.WriteLine("{0},{1}", i.ToString(), athenatemp);
                    m_streamWriter.Flush(); 

                    zedGraphControl1.AxisChange();
                    zedGraphControl1.Invalidate(); //force redraw!!!!!!!!!




                }



           

        }

        public void zedGraphControl1_Load(object sender, EventArgs e)
        {

            


        }
        bool checkSerial = true;
        private void timer2_Tick(object sender, EventArgs e)
        {

            if (serialPort1.IsOpen == true)
            {
                serialPort1.Close();
            }

            if (checkSerial == true)
            {
                Thread.Sleep(10);//wait ten milliseconds

                serialPort1.Open();
                serialPort1.Write("#01R01\r");
                Thread.Sleep(10);//wait ten milliseconds
                string AthenaSetTempCommand = serialPort1.ReadTo("\r");
                Thread.Sleep(10);//wait ten milliseconds
                serialPort1.Close();

                int start_temp = AthenaSetTempCommand.IndexOf(' ');
                if (start_temp == -1)
                {
                    start_temp = AthenaSetTempCommand.IndexOf('-')-1;
                }
                int stop_temp = AthenaSetTempCommand.IndexOf('C');


                string AthenaSetTemp = AthenaSetTempCommand.Substring((start_temp + 1), (stop_temp - start_temp - 1));
                double AthenaSetTemp_double = Convert.ToSingle(AthenaSetTemp);

                AthenaSetTemp = String.Format("{0:0.0}", AthenaSetTemp_double);

                textBox2.Text = AthenaSetTemp + ((char)(176)) + 'C';

            }

            else
            {
                MessageBox.Show("No Com Port...Plug in Stage", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }






        }
        int graph_counter = 0;
        private void button4_Click(object sender, EventArgs e)
        {
            
            
            i = 0;
            start_flag = true;
            graph_counter++;

        }

        private void button5_Click(object sender, EventArgs e)
        {
            start_flag = false;
            file_open = false;
            RampFlag1 = false;
        }

        private void Ramp_Click(object sender, EventArgs e)
        {
          


            // Create the child form
            this.childA = new Form2();

            // Add an event so that the parent form is informed when the child
            // is updated.
            
            this.childA.ValueUpdated += new ValueUpdatedEventHandler(childA_ValueUpdated);

            this.childA.ShowDialog();

        }


        private void childA_ValueUpdated(object sender, ValueUpdatedEventArgs e)
        {
            // Update the text box on this form (the parent) with the new value
            RampString1 = e.NewValue;
           // textBox1.Text = RampString1;
            RampTimer.Start();
        }




        private void Form1_Show(object sender, EventArgs e)
        {
            GraphPane myPane = zedGraphControl1.GraphPane;


            // Set the Titles
            myPane.Title.Text = "Temp vs Time";
            myPane.XAxis.Title.Text = "Time(s)";
            myPane.YAxis.Title.Text = "Temp(" + ((char)(176)) + "C)";

        }
        bool RampFlag1;
        public void RampTimer_Tick(object sender, EventArgs e)
        {


          



           //MessageBox.Show("Please Wait For Stage to Reach Start Temp ", "", MessageBoxButtons.OKCancel, MessageBoxIcon.Hand);
           // this.textBox1.Text = null;
           // textBox1.Text = "245";
           

            int start_temp;
            int stop_temp;


//
           // if (RampString1 != null)
           // {
                start_temp = RampString1.IndexOf(' ');
                stop_temp = RampString1.Length;

                 RampStart = RampString1.Substring(0, start_temp);
                 RampStop = RampString1.Substring(start_temp + 1, stop_temp - start_temp - 1);
           // }
            if (RampFlag1 != true)
            {
                textBox1.Text = RampStart; //start value
                graph_counter++; // count numbers of graph for graph color
                i = 0;
              
                button2.PerformClick(); // send start temp to athena
                RampFlag1 = true;
            }
            //check to see if reached start temp
            double RampStartD = Convert.ToSingle(RampStart);
            double RampStopD = Convert.ToSingle(RampStop);

            if (RampStartD == athenatemp_double )
            {

                Thread.Sleep(2000);
                if (RampStartD == athenatemp_double)
                {

                    //start ramp graph
                    textBox1.Text = RampStop;
                    button2.PerformClick();
                    start_flag = true; //start graphing
                   
                    //  RampFlag1 = true;

                }
            }
            if (RampStopD == athenatemp_double && RampFlag1 == true)
            {

                Thread.Sleep(2000);
                if (RampStopD == athenatemp_double)
                {

                    //start ramp graph
                    textBox1.Text = RampStop;
                    // button2.PerformClick();
                    start_flag = false;
                    //  RampFlag1 = true;
                    int minutes = i / 60;
                    int seconds = i % 60;
                    string minuteS;
                    string secondS;
                    if (minutes == 1)
                    {
                         minuteS = "minute and ";
                    }
                    else
                    {
                        minuteS = "minutes and ";
                    }


                    if (seconds == 1)
                    {
                        secondS = "second";
                    }
                    else
                    {
                        secondS = "seconds";
                    }
                    RampTimer.Stop();
                    RampFlag1 = false;
                    textBox1.Text = null;

                    MessageBox.Show("Ramp Finished Total time " + minutes.ToString() + minuteS + seconds.ToString() + secondS, "", MessageBoxButtons.OK, MessageBoxIcon.Error);
                   
                }
            }


        }

      private void Form1_Load(object sender, EventArgs e)
        {
        }

      private void ClearGraph_Click(object sender, EventArgs e)
      {
          zedGraphControl1.GraphPane.CurveList.Clear();
          zedGraphControl1.Invalidate(); //force redraw!!!!!!!!!
          graph_counter = 0;// clear graph counter
      }

      private void AthenaInit_Click(object sender, EventArgs e)
      {
          this.childB = new Form3();
          this.childB.ShowDialog();
      }

    }
}
           