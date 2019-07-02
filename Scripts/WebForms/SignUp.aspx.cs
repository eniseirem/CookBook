using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;




public partial class Scripts_WebForms_Default : System.Web.UI.Page
{



    //"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(@"~/\Database1.mdb"));





    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(@"~/\Database1.mdb"));
        //OleDbConnection conn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Sony\Desktop\WebSite2\Database1.mdb; Persist Security Info=False");
        string query = "insert into signup (username,email,pass) values (@user,@email,@pass)";
        conn.Open();
        OleDbCommand cmd = new OleDbCommand(query, conn);
        cmd.Parameters.AddWithValue("@user", txtpass.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@pass", txtusername.Text);
        cmd.ExecuteNonQuery();
        /* try
         {
             connection.Open();
             add.ExecuteNonQuery();
             connection.Close();
             emailMessage.Text = "<b>Kayıt Eklendi</b>";
         }
         catch (Exception ex)
         {

             emailMessage.Text = ex.Message;
         }
         */


        /* conn.Open();
         cmd.ExecuteNonQuery();
        // emailMessage.Text = "<b>Kayıt Eklendi</b>";
         OleDbCommand a = new OleDbCommand("Select email from signup", conn);
         OleDbDataReader dr = a.ExecuteReader();
         while (dr.Read())
         {
             txtA.Text = dr["email"].ToString();
         }*/

         conn.Close();
         
        Response.Redirect("LoginPage.aspx");
    }
    





    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("LoginPage.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("LoginPage.aspx");
    }
}
