using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Scripts_WebForms_LoginPage : System.Web.UI.Page
{
    OleDbConnection connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(@"~/\Database1.mdb"));

    protected void Page_Load(object sender, EventArgs e)
    {
  
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        connection.Open();
        OleDbCommand command = new OleDbCommand();
        command.Connection = connection;
        command.CommandText = "select username,pass from signup";
        OleDbDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            if(txtUserName.Text == reader["username"].ToString())
            {
                if(txtPassword.Text== reader["pass"].ToString())
                {
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('please enter your password right')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('please enter your username right')", true);

            }


        }
        connection.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }
}