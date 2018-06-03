using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TOPGEAR_PROJECT
{
    public partial class _2_Validations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(args.Value=="")
            {
                args.IsValid = false;

            }
            else
            { int number;
                bool res = int.TryParse(args.Value, out number);
                if(res&&number%2==0)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Data Saved to the Database";
            }
            else
                
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Data was not saved to the Database";
            }
        }
    }
}