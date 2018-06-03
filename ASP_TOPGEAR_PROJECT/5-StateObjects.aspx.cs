using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TOPGEAR_PROJECT
{
    public partial class _5_StateObjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["viewVar"] = TextBox1.Text;
            Session["sessionVar"] = TextBox2.Text;
            Application["appVar"] = TextBox3.Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "ViewState value= " + ViewState["viewVar"] + " availale only on this webPage"+"<br>"+
                "SessionState value= " + Session["sessionVar"] + " availale in this whole session" + "<br>" +
            "ApplicationState value= " + Application["appVar"] + " availale through all sessions";
        }
    }
}