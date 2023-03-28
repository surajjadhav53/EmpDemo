using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpDemo
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Models.DBHelper db = new Models.DBHelper();

                cmbDepartment.DataSource = db.GetDataSet("select Id , Name from tblDepartment").Tables[0];
                cmbDepartment.DataTextField = "Name";
                cmbDepartment.DataValueField = "Id";
                cmbDepartment.DataBind();
                loadData();

            }
           

        }
        void loadData()
        {
            Models.DBHelper db = new Models.DBHelper();

            cmbDepartment.DataSource = db.GetDataSet("select Id , Name from tblDepartment").Tables[0];
            cmbDepartment.DataTextField = "Name";
            cmbDepartment.DataValueField = "Id";
            cmbDepartment.DataBind();

            EmpGrid.DataSource = db.GetDataSet("Select Id,Name,Address,Gender,MobileNo,Email,Status,JoiningDate,DepartmentId,CreadtedOn,Salary from tblEmployee ").Tables[0];
            EmpGrid.DataBind();
            db.CloseConnection();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string Name = "";
            if (Request.Form["txtName"]!=null)
            {
                Name=Request.Form["txtName"].ToString();
            }
                
                

            string PhotoPath = "";

            if (!string.IsNullOrEmpty(UserImage.FileName))
            {
                string FolderPath = Server.MapPath("~/EmployeePhotos/");
                PhotoPath = FolderPath + UserImage.FileName;
                UserImage.SaveAs(PhotoPath);
            }
            string Gender = "M";
            if (rdbFemale.Checked)
            {
                Gender = "F";
            }
            string Hobbies = "";
            if (chkCricket.Checked)
            {
                Hobbies = "Cricket";
            }
            if (chkCoding.Checked)
            {
                Hobbies = "Coding";
            }
            
            if (chkReading.Checked)
            {
                Hobbies = "Reading";
            }
            if (chkSwimming.Checked)
            {
                Hobbies = "Swimming";
            }
            Models.DBHelper db = new Models.DBHelper();
            db.ExecuteDML("INSERT INTO tblEmployee (Name,Address,Gender,MobileNo,Email,Status,JoiningDate,DepartmentId,CreadtedOn,Salary,Hobbies,PhotoPath) " +
                "values('"+Name+"','"+txtAddress.Text+"','"+Gender+"','"+txtMobileNo.Text+"','"+txtEmail.Text+"',1,'"+txtJoiningDate.Text+"',"+cmbDepartment.SelectedValue+",getDate(),5000,'"+Hobbies+"','"+ PhotoPath + "')");

            db.CloseConnection();
            loadData();
        }
    }
}