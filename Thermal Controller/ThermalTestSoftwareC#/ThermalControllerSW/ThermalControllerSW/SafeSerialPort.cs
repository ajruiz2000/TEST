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
//using System.IO.Ports.SerialPort;
//using System.IO.Ports;
//using System.IO;


namespace ThermalControllerSW
{
    public class SafeSerialPort : System.IO.Ports.SerialPort
    {
        private System.IO.Stream theBaseStream;

        public SafeSerialPort(string portName, int baudRate, System.IO.Ports.Parity parity, int dataBits, System.IO.Ports.StopBits stopBits) : base(portName, baudRate, parity, dataBits, stopBits)
        {

        }

        public new void Open()
        {
            try
            {
                base.Open();
                theBaseStream = BaseStream;
                GC.SuppressFinalize(BaseStream);
            }
            catch
            {

            }
        }

        public new void Dispose()
        {
            Dispose(true);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && (base.Container != null))
            {
                base.Container.Dispose();
            }
            try
            {
                if (theBaseStream.CanRead)
                {
                    theBaseStream.Close();
                    GC.ReRegisterForFinalize(theBaseStream);
                }
            }
            catch
            {
                // ignore exception - bug with USB - serial adapters.
            }
            base.Dispose(disposing);
        }
    }
}
