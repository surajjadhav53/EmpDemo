using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace EmpDemo
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Count"] = 0;
        }
        protected void Application_End(object sender, EventArgs e)
        {
            Application["Count"] = 0;
        }
        protected void Application_Error(object sender, EventArgs e)
        {
            //Response.Redirect("Error.aspx");
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Application["Count"] = Convert.ToInt32(Application["Count"]) + 1;
        }
        protected void Session_End(object sender, EventArgs e)
        {
            Application["Count"] = Convert.ToInt32(Application["Count"]) - 1;
        }
    }
}