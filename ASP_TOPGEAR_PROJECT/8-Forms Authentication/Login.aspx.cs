using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ASP_TOPGEAR_PROJECT._8_Forms_Authentication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);

            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "invalid username/password";
            }
        }
    }
    
}