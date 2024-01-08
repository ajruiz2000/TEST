using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ThermalControllerSW
{
    public delegate void COMUpdateDelegate(object sender, COMUpdate e);
    public delegate void COMUpdateDelegateR(object sender, COMUpdate e);
    public delegate void COMTimeoutDelegate(object sender, COMUpdate e);



    public class COMUpdate : System.EventArgs
    {
        /// <summary>
        /// Used to store the new value
        /// </summary>
       // private string newValue;

       public int n;
       public int r;
        /// <summary>
        /// Create a new instance of the ValueUpdatedEventArgs class.
        /// </summary>
        /// <param name="newValue">represents the change to the value</param>
        public COMUpdate(int a)
        {
            n = a;
        }

       // public COMUpdateR(int b)
       // {
       //     r = b;
      //  }

        /// <summary>
        /// Gets the updated value
        /// </summary>
     //   public int a
      //  {
       //     get
         //   {
          //      return this.a;
          //  }
        //}
    }
}
