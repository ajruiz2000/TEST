using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace ThermalControllerSW
{
    public class FileReader
    {

        public struct parms
        {
            public static int Debug = 1;
            public static int COMLog = 1;
            public static string LastCOMPort = "COM1";
            public static string VirtualCOMPort = "COM16";
            public static string BaudRate = "57600";
        };
     
        public static List<string> Parms = new List<string>();


        //Read .ini file into a list
        public static void ReadParms()
        {
            string line;
            try
            {
                using (StreamReader file = new StreamReader(@"C:\Program Files\QFI\ThermalBackgroundWorker\system.ini"))
                {
                    while ((line = file.ReadLine()) != null)
                    {
                        Parms.Add(line);


                    }

                }
            }
            catch
            {

            }
        }


        //Set the Parm values 
        public static void SetParms()
        {
            int firstCharacter, secondCharacter;
            string temp;

            //Search for Debug, LastCOMPort and VirtualCOMPort
            foreach (string s in Parms)
            {
                if (s.Contains("Debug"))
                {
                    try
                    {
                        firstCharacter = s.IndexOf("=");
                        secondCharacter = s.IndexOf(";");
                        temp = s.Substring(firstCharacter + 1, secondCharacter - firstCharacter - 1);

                        parms.Debug = Convert.ToInt16(temp);
                    }
                    catch
                    {
                        // parms.Debug = 0;
                    }
                }
                else if (s.Contains("LastCOMPort"))
                {
                    try
                    {
                        firstCharacter = s.IndexOf("=");
                        secondCharacter = s.IndexOf(";");
                        temp = s.Substring(firstCharacter + 1, secondCharacter - firstCharacter - 1);

                        parms.LastCOMPort = temp;
                    }
                    catch
                    {
                        // parms.LastCOMPort = "COM1";
                    }


                }
                else if (s.Contains("VirtualCOMPort"))
                {
                    try
                    {
                        firstCharacter = s.IndexOf("=");
                        secondCharacter = s.IndexOf(";");
                        temp = s.Substring(firstCharacter + 1, secondCharacter - firstCharacter - 1);

                        parms.VirtualCOMPort = temp;
                    }
                    catch
                    {
                        // parms.VirtualCOMPort = "COM15";
                    }

                }
                else if (s.Contains("BaudRate"))
                {
                    try
                    {
                        firstCharacter = s.IndexOf("=");
                        secondCharacter = s.IndexOf(";");
                        temp = s.Substring(firstCharacter + 1, secondCharacter - firstCharacter - 1);

                        parms.BaudRate = temp;
                    }
                    catch
                    {
                        // parms.VirtualCOMPort = "COM15";
                    }


                }
                else if (s.Contains("COMLog"))
                {
                    try
                    {
                        firstCharacter = s.IndexOf("=");
                        secondCharacter = s.IndexOf(";");
                        temp = s.Substring(firstCharacter + 1, secondCharacter - firstCharacter - 1);

                        parms.COMLog = Convert.ToInt16(temp);
                    }
                    catch
                    {
                        // parms.VirtualCOMPort = "COM15";
                    }

                }


            }


        }



        public static int WriteCOMLog(string L)
        {
            try
            {
                using (StreamWriter writer = new StreamWriter((@"C:\Program Files\QFI\ThermalBackgroundWorker\COMLog.txt"), true))
                {
                    writer.WriteLine(L);
                }
                return 1;
            }
            catch
            {
                return 0;
            }
        }



        public static int ClearCOMLog()
        {
            DateTime now = DateTime.Now;
            //Console.WriteLine(now);

            try
            {
                using (StreamWriter writer = new StreamWriter((@"C:\Program Files\QFI\ThermalBackgroundWorker\COMLog.txt"), false))
                {
                    writer.WriteLine(now + "\r\n");
                }
                return 1;
            }
            catch
            {
                return 0;
            }
        }



    }


}




