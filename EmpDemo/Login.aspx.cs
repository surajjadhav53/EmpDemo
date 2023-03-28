using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            // {
            //    string Cname = Request.Cookies["Username"].Value;
            //    string Cpass = Request.Cookies["Password"].Value;
            //    Models.DBHelper db = new Models.DBHelper();
            //    if (!string.IsNullOrEmpty(Cname) && !string.IsNullOrEmpty(Cpass))
            //    {
            //          var dr = db.ExecutDQL("select * from tblEmployee where lower(email)='" +Cname.ToLower().Trim() + "' and Password='" +Cpass + "'");
            //            if (dr.Read())
            //            {
               
            //            Session["UID"] = dr["Name"].ToString();
            //            Response.Redirect("Dashboard.aspx");
            //            }
          
            //    }

            //}
            //catch (Exception)
            //{

               
            //}
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Models.DBHelper db = new Models.DBHelper();

            var dr = db.ExecutDQL("select * from tblEmployee where lower(email)='" + txtUsername.Text.ToLower().Trim() + "' and Password='" + txtPassword.Text + "'");
            if (dr.Read())
            {
                //lblStatus.ForeColor = System.Drawing.Color.Green;
                //lblStatus.Text = "Successfully logged in.";
                //Response.Redirect("Dashboard.aspx?UID="+txtUsername.Text);

                //Write Cookies
               // Response.Cookies["UID"].Value = txtUsername.Text;
                //Response.Cookies["UID"].Expires = DateTime.Now.AddSeconds(15);

                //Response.Redirect("Dashboard.aspx");

                if (chkRemember.Checked)
                {
                    Response.Cookies["Username"].Value = txtUsername.Text;
                    Response.Cookies["Password"].Value = txtPassword.Text;
                }
                Session["UID"] = dr["Name"].ToString();
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Invalid Credentials.";
            }

            db.CloseConnection();
        }

       
    }
}