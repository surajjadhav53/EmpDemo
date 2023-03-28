using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpDemo
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.QueryString["UID"]!=null)
            //{
            //    lblName.Text ="Welcome,"+Request.QueryString["UID"].ToString();
            //}
            //if (Request.Cookies["UID"] != null)
            //{
            //    lblName.Text = "Welcome," + Request.Cookies["UID"].Value.ToString();
            //}
            if (Session["UID"]!=null)
            {
                lblName.Text = "Welcome," + Session["UID"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}