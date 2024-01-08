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
    public partial class Form2 : Form
    {

        public event ValueUpdatedEventHandler ValueUpdated;
        
        
        public Form2()
        {
            InitializeComponent();
        }

         private void Form2_Load(object sender, EventArgs e)
        {

            
        }

        private void Cancel_Click(object sender, EventArgs e)
        {
            
            this.Close();
           
        }

        public void Submit_Click(object sender, EventArgs e)
        {
            string Start_Temp = StartTemp.Text;
            string Stop_Temp = StopTemp.Text;

            double StartD;
            double StopD;

            bool isNum1 = double.TryParse(Start_Temp, out StartD);
            bool isNum2 = double.TryParse(Stop_Temp, out StopD);
            
             

    

            if (isNum1 != true || isNum2 != true)
            {

                MessageBox.Show("Invalid Input", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            else
            {

                if (StopD == StartD)
                {
                    MessageBox.Show("Invalid Ramp Range", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {

                    string newValue = this.StartTemp.Text + ' ' + this.StopTemp.Text;
                    ValueUpdatedEventArgs valueArgs = new ValueUpdatedEventArgs(newValue); //initisiate delegate to call method NewValue
                    ValueUpdated(this, valueArgs);

                    this.Close();


                   // MessageBox.Show("Please Wait For Stage to Reach Start Temp ", "", MessageBoxButtons.OKCancel, MessageBoxIcon.Hand);
                  
                }   
            }
        }
    }
}
