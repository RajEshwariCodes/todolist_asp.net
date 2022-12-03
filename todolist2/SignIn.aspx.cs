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
    public partial class SignIn : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["TodoList"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                try
                {
                /*
                string sql2 = String.Format("select Case when exists(select Username, Password from UserDetails where Username like '{0}' and Password Like '{1}')THEN cast(1 as bit)else cast(0 as bit) end ; ", TextBox1.Text, TextBox2.Text);
                SqlConnection con2 = new SqlConnection(cs);
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(sql2, con2);
                SqlDataReader sdr2 = cmd2.ExecuteReader();
                sdr2.Read();
                con2.Close();
                Label3.Text = Convert.ToString(sdr2.GetValue(0));
                if (Convert.ToString(sdr2.GetValue(0)) == "True"){
                    Label3.Text = "user alread exist";
                }
                else if(Convert.ToString(sdr2.GetValue(0)) == "False")
                {*/
                if (TextBox1.Text == "" || TextBox1.Text == null || TextBox2.Text == "" || TextBox2.Text == null)
                {
                    Label3.Text = "empry";
                }
                else
                {

                    string sql = String.Format("insert into UserDetails values ('{0}' , '{1}') ; select SCOPE_IDENTITY();", TextBox1.Text, TextBox2.Text);
                    SqlConnection con = new SqlConnection(cs);
                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql, con);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    sdr.Read();
                    int id =Convert.ToInt32( sdr.GetValue(0)) ;
                    Label1.Text = Convert.ToString(id);
                    System.Diagnostics.Debug.WriteLine(id);
                    con.Close();
                    Label3.Text = "user does not  exist";
                    Response.Redirect("~/Todo.aspx?Idd=" + id);
                    //Response.End();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                   
                }
                
            }


                catch (Exception es)
                {
                    System.Diagnostics.Debug.WriteLine("the error is " + es.Message);
                }
            
            
        }
    }
}