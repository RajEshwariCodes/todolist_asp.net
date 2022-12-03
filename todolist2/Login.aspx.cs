using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
namespace todolist2
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["TodoList"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql = String.Format("select Case when exists(select Username, Password from UserDetails where Username like '{0}' and Password Like '{1}')THEN cast(1 as bit)else cast(0 as bit) end ; ", TextBox1.Text,TextBox2.Text);
            string sql2 = String.Format("select Id from UserDetails where Username like '{0}'",TextBox1.Text);
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            Label1.Text = Convert.ToString( sdr.GetValue(0));
            con.Close();
            con.Open();
            if (Label1.Text == "True")
            {
                SqlCommand cmd2 = new SqlCommand(sql2, con);
                SqlDataReader sdr2 = cmd2.ExecuteReader();
                sdr2.Read();
                Label2.Text = Convert.ToString(sdr2.GetValue(0));
                Response.Redirect("~/Todo.aspx?Idd=" + Convert.ToString(sdr2.GetValue(0)));
            }
            else
            {
                Label1.Text = "pass or username wrong";
            }
            //cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}