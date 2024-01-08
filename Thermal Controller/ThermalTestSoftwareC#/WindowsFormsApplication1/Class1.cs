using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace WindowsFormsApplication1
{
   public class AthenaProcess 
    {
       
       // Write string to Athena and return response from Athena
       public static string WriteToAthena(string AthenaWrite)
       {
        //   Form1 form1obj = new Form1();






       ////    form1obj.serialPort1.Open();
       //    Thread.Sleep(10);//wait ten milliseconds   
       //    form1obj.serialPort1.Write(AthenaWrite);
       //    string AthenaReturn = form1obj.serialPort1.ReadTo("\r");
        //   Thread.Sleep(10);//wait ten milliseconds
       //    form1obj.serialPort1.Close();
          string AthenaReturn = "kjkj";
          return AthenaReturn;
       }



       //Checks to see if we have a valid number to send to the athena
       //if we do we will put it into the correct decimal form and return it as a string
       //if we dont we will return error
       public static string FormatAthenaInputValue(string AthenaInputValue)
       {
           string AthenaDecimal = "Error";
           string b = AthenaInputValue;
           double value;
           bool isNum = double.TryParse(b, out value);


           if (!isNum)
           {

               return AthenaDecimal;
           }

           AthenaDecimal = String.Format("{0:0.0}", value); //format with one decimal

           return AthenaDecimal;
       }
       //will check to see if valid input and format with no decimal
       public static string FormatAthenaInputValueNoDecimal(string AthenaInputValue)
       {
           string AthenaNoDecimal = "Error";
           string b = AthenaInputValue;
           double value;
           bool isNum = double.TryParse(b, out value);


           if (!isNum)
           {

               return AthenaNoDecimal;
           }
           else
           {
               AthenaNoDecimal = String.Format("{0:0}", value); //format with no decimal
           }

           return AthenaNoDecimal;
       }

       public static string checkmaxmin(string setvalue, int max, int min, int decimalpoints)
       {
           string value;
           double dsetvalue;
        dsetvalue =  Convert.ToDouble(setvalue);
        if (dsetvalue > max)
        {
            dsetvalue = max;

        }
        else if (dsetvalue < min)
        {
            dsetvalue = min;
        }
        else
        {
        }

        if (decimalpoints == 1)
        {
            value = String.Format("{0:0.0}", dsetvalue); //format with one decimal
        }
        else
        {
            value = String.Format("{0:0}", dsetvalue); //format with one decimal
        }
           return value;
       }





    }
}
