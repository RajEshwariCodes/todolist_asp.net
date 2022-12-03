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
    public partial class Todo : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["TodoList"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                Label1.Text = Request.QueryString["Idd"];
                getdata(Convert.ToInt32(Request.QueryString["Idd"]));
                Button1.BackColor = System.Drawing.Color.LightCyan;
            }

        }
        protected void Changed_Text(object sender, EventArgs e)
        {
                if (string.IsNullOrWhiteSpace(TextBox1.Text) || TextBox1.Text == "")
                {
                    Button1.Enabled = false;
                Button1.BackColor = System.Drawing.Color.LightCyan;
            }
                else
                {
                    Button1.Enabled = true;
                
                }
        }

        protected void getdata(int test_name )
        {

            string sql = "SELECT * FROM TableTodo where IdOfAdder=" + test_name;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);

            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            conn.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

               if(TextBox1.Text == "" || string.IsNullOrWhiteSpace(TextBox1.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('textfield is empty')", true);
                }

                else{
                    string sql = String.Format("insert into TableTodo values ('{0}' , '{1}' , {2})", TextBox1.Text, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), Convert.ToInt32(Request.QueryString["Idd"]));
                    SqlConnection con = new SqlConnection(cs);
                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    TextBox1.Text = "";
                    getdata(Convert.ToInt32(Request.QueryString["Idd"]));
                }
                
            }

            catch (Exception es)
            {
                System.Diagnostics.Debug.WriteLine("the error is " + es.Message);
            }
        }


        
        public void dell(int id)
        {
            string sql = String.Format("delete from TableTodo where id={0}",id);
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + "the todo deleted has id" + id + "');", true);
        }
      
        public void upd(int id,string str)
        {
            string sql = String.Format("update TableTodo set Todo='{0}' where id={1}",str ,id);
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + "the todo deleted has id" + id + "');", true);
        }
        protected void GetIds(object sender, EventArgs e)
        {
            RepeaterItem ri = (sender as Button).NamingContainer as RepeaterItem;
            string str = (ri.FindControl("Label3") as Label).Text;
            Label1.Text = str;
            TextBox1.Text = (ri.FindControl("Label2") as Button).Text;
            Button1.Visible = true;
            Button5.Visible = true;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            upd(Convert.ToInt32(Label1.Text),TextBox1.Text);
            TextBox1.Text = "";
            getdata(Convert.ToInt32(Request.QueryString["Idd"]));
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            dell(Convert.ToInt32(Label1.Text));
            TextBox1.Text = "";
            getdata(Convert.ToInt32(Request.QueryString["Idd"]));
        }
    }
}