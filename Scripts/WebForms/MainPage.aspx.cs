using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class MainPage : System.Web.UI.Page



{ OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(@"~/\Database1.mdb"));

    public bool AutoPostback { get; private set; 
   /* DataSet GetData(String queryString)
    {

        // Retrieve the connection string stored in the Web.config file.
        String connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(@"~/\Database1.mdb");

        DataSet ds = new DataSet();

        try
        {
            // Connect to the database and run the query.
            OleDbConnection connection = new OleDbConnection(connectionString);
            OleDbDataAdapter adapter = new OleDbDataAdapter(queryString, connection);

            // Fill the DataSet.
            adapter.Fill(ds);

        }
        catch (Exception ex)
        {

            // The connection failed. Display an error message.
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('please enter your password right')", true);

        }

        return ds; */

    }
    protected void Page_Load(object sender, EventArgs e)
    {
      /*  string queryString = "Select ID,category,zaman,portion,Ingredients,Recipe,recipename,whose FROM recipe";
        DataSet ds = GetData(queryString);
        if (ds.Tables.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('please enter your password right')", true);
        } */

             baglanti.Open();


             OleDbCommand add = new OleDbCommand();
             add.CommandText = "Select ID,category,zaman,portion,Ingredients,Recipe,recipename,whose FROM recipe";
             add.Connection = baglanti;


             OleDbDataAdapter ffind = new OleDbDataAdapter(add);

             DataSet ds = new DataSet();
             ffind.Fill(ds, "recipe");
             GridView1.DataSource = ds.Tables["recipe"];

             GridView1.DataBind();
             baglanti.Close();
            

            /*

              baglanti.Open();

                OleDbCommand d = new OleDbCommand();
                d.CommandText = "Select * From recipe";
                d.Connection = baglanti;

               OleDbDataAdapter ffind = new OleDbDataAdapter(d);

                DataSet ds = new DataSet();
                ffind.Fill(ds);

                    GridView1.DataSource = ds;
                   GridView1.DataBind();

                baglanti.Close(); */
        }




    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        var i = ((DropDownList)sender).SelectedIndex;
        
        switch (i) {
            case 1:
            Response.Redirect("MainFeed.aspx");
                break;
            case 2:
                Response.Redirect("RecipePage.aspx");
                break;
             
        }
    } }