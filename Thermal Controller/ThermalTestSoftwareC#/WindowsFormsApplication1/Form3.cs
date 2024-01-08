using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }


        //Load default values
        private void Form3_Load(object sender, EventArgs e)
        {
           Form3 obj = new Form3();
           // obj.SetVerticalScrollPosition(100);


         //  int scrollPosition = this.VerticalScroll.Value;
          this.VerticalScroll.Value = 0;


            textBox3.Text = "150"; //Gn01
            textBox4.Text = "1.0"; //Gr02
            textBox5.Text = "01"; //Rate
            textBox6.Text = "06"; //Reset
            comboBox1.Text = "Normal"; //Damping dPnG
            textBox8.Text = "00"; //Cycle Time 1 cyc1
            textBox9.Text = "00"; //Cycle Time 2 cyc2
            textBox10.Text = "Off"; //Set Point Target Time Sptt 
            

        }



        public string AthenadPnG;
        public string AthenaSPtt;
        private void Submit_Click(object sender, EventArgs e)
        {
        
              string AthenaHighReturn = AthenaProcess.WriteToAthena("#01E17 " + textBox1.Text + "\r");
              string AthenaLowReturn = AthenaProcess.WriteToAthena("#01E16 " + textBox2.Text + "\r");
              string AthenaGN01Return = AthenaProcess.WriteToAthena("#01E03 " + textBox3.Text + "\r");
              string AthenaGR02Return = AthenaProcess.WriteToAthena("#01E04 " + textBox4.Text + "\r");
              string AthenaRateReturn = AthenaProcess.WriteToAthena("#01E05 " + textBox5.Text + "\r");
              string AthenarrSetReturn = AthenaProcess.WriteToAthena("#01E06 " + textBox6.Text + "\r");
              string AthenadPnGReturn = AthenaProcess.WriteToAthena("#01E10 " + AthenadPnG + "\r");
              string Athenacyct1Return = AthenaProcess.WriteToAthena("#01E13 " + textBox8.Text + "\r");
              string Athenacyct2Return = AthenaProcess.WriteToAthena("#01E14 " + textBox9.Text + "\r");
              string AthenaSPttReturn = AthenaProcess.WriteToAthena("#01E15 " + AthenaSPtt + "\r");
            
        }

       
        
        //TextBox1 Athena High Limit
        private void textBox1_Leave(object sender, EventArgs e)
        {
            string AthenaDecimalHigh = AthenaProcess.FormatAthenaInputValue(textBox1.Text);
            if (AthenaDecimalHigh == "Error")
            {
                textBox1.Text = "Error";
            }
            else
            {
                textBox1.Text = AthenaDecimalHigh;
            }
        }

        //TextBox2 Athena Low Limit
        private void textBox2_Leave(object sender, EventArgs e)
        {
            string AthenaDecimalLow = AthenaProcess.FormatAthenaInputValue(textBox2.Text);
            if (AthenaDecimalLow == "Error")
            {
                textBox2.Text = "Error";
            }
            else
            {
                textBox2.Text = AthenaDecimalLow;
            }

        }

        //TextBox3 Gn01
        private void textBox3_Leave(object sender, EventArgs e)
        {
            
            string AthenaGN01 = AthenaProcess.FormatAthenaInputValueNoDecimal(textBox3.Text);
            if (AthenaGN01 == "Error")
            {
                textBox3.Text = "Error";
            }
            else
            {

                AthenaGN01 = AthenaProcess.checkmaxmin(AthenaGN01, 400, 0, 0);
                textBox3.Text = AthenaGN01;
            }

        }

        //TextBox 4 = Gr02
        private void textBox4_Leave(object sender, EventArgs e)
        {
            
            string AthenaGR02 = AthenaProcess.FormatAthenaInputValue(textBox4.Text);
            if (AthenaGR02 == "Error")
            {
                textBox4.Text = "Error";
            }
            else
            {

                AthenaGR02 = AthenaProcess.checkmaxmin(AthenaGR02, 2, 0, 1);
                textBox4.Text = AthenaGR02;
            }
           
        }

        //TextBox 5 rAte
        private void textBox5_Leave(object sender, EventArgs e)
        {
            string AthenaraAte = AthenaProcess.FormatAthenaInputValue(textBox5.Text);
            if (AthenaraAte == "Error")
            {
                textBox5.Text = "Error";
            }
            else
            {

                AthenaraAte = AthenaProcess.checkmaxmin(AthenaraAte, 900, 0, 0);
                textBox5.Text = AthenaraAte;
            }
        }

        //TextBox 6 rSet
        private void textBox6_Leave(object sender, EventArgs e)
        {
            string AthenarSet = AthenaProcess.FormatAthenaInputValue(textBox6.Text);
            if (AthenarSet == "Error")
            {
                textBox6.Text = "Error";
            }
            else
            {

                AthenarSet = AthenaProcess.checkmaxmin(AthenarSet, 3600, 0, 0);
                textBox6.Text = AthenarSet;
            }
        }

        //ComboBox1 dPnG (Low Normal or High)
        private void comboBox1_Leave(object sender, EventArgs e)
        {
            AthenadPnG = "1";
            if (comboBox1.Text == "Low")
            {
                AthenadPnG = "1";
            }
            else if (comboBox1.Text == "Normal")
            {
                AthenadPnG = "2";
            }
            else 
            {
                AthenadPnG = "3";
            }
        }
  
        //TextBox 8 Cycle time 1 Cyt1
        private void textBox8_Leave(object sender, EventArgs e)
        {
            string Athenacyt1 = AthenaProcess.FormatAthenaInputValue(textBox8.Text);
            if (Athenacyt1 == "Error")
            {
                textBox8.Text = "Error";
            }
            else
            {

                Athenacyt1 = AthenaProcess.checkmaxmin(Athenacyt1, 120, 0, 0);
                textBox8.Text = Athenacyt1;
            }


        }

        //TextBox 9 Cycle time 2 Cyt2
        private void textBox9_Leave(object sender, EventArgs e)
        {
            string Athenacyt2 = AthenaProcess.FormatAthenaInputValue(textBox8.Text);
            if (Athenacyt2 == "Error")
            {
                textBox9.Text = "Error";
            }
            else
            {

                Athenacyt2 = AthenaProcess.checkmaxmin(Athenacyt2, 120, 0, 0);
                textBox9.Text = Athenacyt2;
            }
        }

        //TextBox 10 SetPoint target time SPtt
        private void textBox10_Leave(object sender, EventArgs e)
        {
            AthenaSPtt = "temp";
            if (textBox10.Text == "Off" || textBox10.Text == "OFF" || textBox10.Text == "off")
                
            {
               AthenaSPtt = "0";
            }
            else
            {
               AthenaSPtt = AthenaProcess.FormatAthenaInputValue(textBox10.Text);
            }

            if (AthenaSPtt == "Error")
            {
                textBox10.Text = "Error";
            }
            else
            {

                AthenaSPtt = AthenaProcess.checkmaxmin(AthenaSPtt, 100, 0, 0);
                
                if (AthenaSPtt == "0")
                {
                    textBox10.Text = "Off";
                }
                else
                {
                    textBox10.Text = AthenaSPtt;
                }
            }
        }

        //
        private void textBox11_Leave(object sender, EventArgs e)
        {

        }

        

        

       

        
















        }
        
}








