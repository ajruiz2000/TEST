using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LibUsbDotNet;
using LibUsbDotNet.DeviceNotify;
using LibUsbDotNet.Info;
using LibUsbDotNet.Main;
using System.IO.Ports;
using System.Threading;


namespace ThermalControllerSW
{
    
    public static class mySerialPort 
    {


        
        public static string portname = "COM1";
        public static SafeSerialPort serialPort = new SafeSerialPort(portname, 9600, System.IO.Ports.Parity.None, 8, System.IO.Ports.StopBits.One);
        public static List<string> COMlist = new List<string>();
        public static List<string> COMlistUpdate = new List<string>();
    



      //Scan all avialable COM ports and try to connect
      //Returns 1 on success
      public static int Connect1()
        {
            string SerialResponse = "error";
            //Try LastCOMPort
            //Most Likely it is the last one connected to
            try
            {
                serialPort.PortName = FileReader.parms.LastCOMPort;
                portname = FileReader.parms.LastCOMPort;
                serialPort.Open();
                serialPort.ReadTimeout = 100;
                serialPort.Write("$V\r");
                SerialResponse = serialPort.ReadTo("\r");
                if (SerialResponse.Contains("Thermal"))
                {
                    return 1;
                }
                else
                {
                    serialPort.Close();
                }
            }
            catch
            {
                serialPort.Close();
            }






            //Get all availbale COM ports and check for right coinnection
             int n = mySerialPort.Porty();
             foreach (string t in COMlist)
             {
                 portname = t;
                 //dont talk to virtual com port
                 if (t == FileReader.parms.VirtualCOMPort)
                 {

                 }
                 //already tried LastCOMPort
                 else if (t == FileReader.parms.LastCOMPort)
                 {

                 }
                 else
                 {
                     try
                     {
                         serialPort.PortName = t;
                         serialPort.Open();
                         serialPort.ReadTimeout = 100;
                         serialPort.Write("$V\r");
                         SerialResponse = serialPort.ReadTo("\r");
                         if (SerialResponse.Contains("Thermal"))
                         {
                             return 1;
                         }
                         else
                         {
                             serialPort.Close();
                         }
                     }
                     catch
                     {
                         serialPort.Close();
                     }
                 }
            }
            return 0;
       }


        //Reset COM after being unplugged
      public static void ResetConnection()
      {
          try
          {
              mySerialPort.serialPort.Write("Any value");
          }
          catch //(IOException ex)
          {

              mySerialPort.serialPort.Close();
              mySerialPort.serialPort.Dispose();

          }
      }

    
        //Checks Current COM ports
        //Use at program launch and when COM disconnection
        //Returns -1 on error
        public static int Porty()
        {
                COMlist.Clear();
                try
                {
                    foreach (string s in SerialPort.GetPortNames())
                    {
                        COMlist.Add(s);
                    }
                }
                catch
                {
                    return -1;
                }
            
            return COMlist.Count;
        }

        //Checks current COM ports and matches them against previous COM
        //ports to see what has been added and connect to it
        //returns 1 on success
        public static int PortyUpdate()
        {
            string SerialResponse;
            int i = 0;
            COMlistUpdate.Clear();
           
                foreach (string s in SerialPort.GetPortNames())
                {
                    COMlistUpdate.Add(s);

                    foreach (string a in COMlist)
                    {
                        i++;
                        if (s == a)
                        {
                            i = 0;
                            break;
                        }
                        if (i == COMlist.Count)
                        {
                            try
                            {
                                serialPort.PortName = s;
                                serialPort.Open();
                                serialPort.ReadTimeout = 100;
                                serialPort.Write("$V\r");
                                SerialResponse = serialPort.ReadTo("\r");
                                if (SerialResponse.Contains("Thermal"))
                                {
                                    return 1;
                                }
                                else
                                {
                                    serialPort.Close();
                                }
                            }
                            catch
                            {
                                serialPort.Close();
                            }

                           // return 0;

                        }

                    }
                    //found one without a match this is our COM Port

                }


                //no new COM Ports try them all
                int n = Connect1();
            
           
            return n;
        }
    }
}
