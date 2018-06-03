using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace ASP_TOPGEAR_PROJECT
{
    public partial class _9_LogFile : System.Web.UI.Page
    {
        private string LogFormat;
        private string ErrorTime;
        protected void Page_Load(object sender, EventArgs e)
        {
            CreateNewLogFiles();
            Log(Server.MapPath("~/Logs/"), "this is the error");
            
        }

        public void CreateNewLogFiles()
        {
            
         string  logTime = DateTime.Now.ToShortDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString() + " ==> ";


            string Year = DateTime.Now.Year.ToString();
            string Month = DateTime.Now.Month.ToString();
            string Day = DateTime.Now.Day.ToString();
           ErrorTime = Year + Month + Day;
            
        }

        public void Log(string PathName, string ErrMsg)

        { string path = PathName + ErrorTime+".txt";
            if (!File.Exists(path))
            {
                File.Create(path);
                TextWriter tw = new StreamWriter(path);
                tw.WriteLine(LogFormat + ErrMsg);
                tw.Close();
            }
            else if (File.Exists(path))
            {
                using (var tw = new StreamWriter(path, true))
                {
                    tw.WriteLine(LogFormat + ErrMsg);
                }
            }



        }

       
        
    }
}