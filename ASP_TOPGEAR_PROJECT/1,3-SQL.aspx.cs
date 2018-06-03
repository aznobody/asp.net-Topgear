using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace ASP_TOPGEAR_PROJECT
{
    public partial class _2_SQL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string cs = ConfigurationManager.ConnectionStrings["myDatabaseConnectionString"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(cs))
            //{
            //    SqlCommand cmd = new SqlCommand("Select CityId, CityName, Country from tableCity", con);
                
            //    SqlDataReader reader = cmd.ExecuteReader();
            //    DropDownList1.DataTextField = "CityName";
            //    DropDownList1.DataValueField = "CityId";
            //    DropDownList1.DataSource = reader;
            //    DropDownList1.DataBind();
                
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text= Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("name " + TextBox1.Text);
            Response.Write("skills are:<br>");
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    Response.Write(li.Value + "<br>");
                }
            }
            Response.Write("gender: " + RadioButtonList1.SelectedValue);
            Response.Write("country:" + DropDownList1.SelectedValue);
            Response.Write("dob: " + TextBox2.Text);
        }
    }
    }
