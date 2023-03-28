using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EmpDemo.Models
{
    public class DBHelper
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();


        public DBHelper()
        {
            con.ConnectionString = ConfigurationManager.AppSettings["ConnectionString"].ToString();

            con.Open();

            cmd.Connection = con;
        }

        /// <summary>
        /// use for insert/ update/ delete
        /// </summary>
        ///<param name="sql">pass sql querry</param> 
        public void ExecuteDML(string sql)
        {
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();

        }

        /// <summary>
        /// use for select querry
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public SqlDataReader ExecutDQL(string sql)
        {
            cmd.CommandText = sql;
            SqlDataReader DR = cmd.ExecuteReader();

            return DR;
        }

        /// <summary>
        /// Get the select query result in Dataset
        /// </summary>
        /// <param name="sql"></param>
        public DataSet GetDataSet(string sql)
        {
            DataSet DS = new DataSet();

            SqlDataAdapter DataTable = new SqlDataAdapter(sql, con);

            DataTable.Fill(DS);

            return DS;
        }

        public void CloseConnection()
        {
            con.Close();
        }
    }
}