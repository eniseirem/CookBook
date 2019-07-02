using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;



public partial class Scripts_WebForms_Default2 : System.Web.UI.Page
{
    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(@"~/\Database1.mdb"));

    protected void visibility()
    {

        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        txtingred.Visible = true;
        txtmeal.Visible = true;
        txtport.Visible = true;
        txtrecipe.Visible = true;
        txttime.Visible = true;

    }

    protected void unvisibility()
    {

        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        txtingred.Visible = false;
        txtmeal.Visible = false;
        txtport.Visible = false;
        txtrecipe.Visible = false;
        txttime.Visible = false;

    }
    protected void search ()
    {
        baglanti.Open();
        OleDbCommand add = new OleDbCommand();
        add.CommandText = "Select category,zaman,portion,Ingredients,Recipe FROM recipe WHERE recipename=@r";
        add.Connection = baglanti;
        add.Parameters.AddWithValue("@r", txtsearchname.Text);
        OleDbDataReader da = add.ExecuteReader();

        if (da.Read())
        {
            visibility();
            txtingred.Text = da["Ingredients"].ToString();
            txtrecipe.Text = da["Recipe"].ToString();
            txttime.Text = da["zaman"].ToString();
            txtmeal.Text = da["category"].ToString();
            txtport.Text = da["portion"].ToString();
        }

        else
        {
            lblsearch.Visible = true;


        }

        baglanti.Close();




    }


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtsearchname_TextChanged(object sender, EventArgs e)
    {
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
       
      

        if (lblsearch.Visible == true)
        { lblsearch.Visible = false;
            search();
        }
        else if(txtport.Visible == true)
        {
                unvisibility();
            search();
}
        else

            search();
    }





    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        baglanti.Open();
        OleDbCommand add = new OleDbCommand();
        add.CommandText = "Select ID,category,zaman,portion,Ingredients,Recipe FROM recipe WHERE ID=@a";
        add.Connection = baglanti;
       
        add.Parameters.AddWithValue("@a", ListBox1.SelectedValue);
       
        OleDbDataReader da = add.ExecuteReader();

        if (da.Read())
        {
            visibility();
            txtingred.Text = da["Ingredients"].ToString();
            txtrecipe.Text = da["Recipe"].ToString();
            txttime.Text = da["zaman"].ToString();
            txtmeal.Text = da["category"].ToString();
            txtport.Text = da["portion"].ToString();
        }

        else
        {
            lblsearch.Visible = true;


        }

        baglanti.Close();




    }



    protected void listcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        baglanti.Open();
        ListBox1.Visible = true;
        lblsearch.Visible = false;
        unvisibility();

        OleDbCommand add = new OleDbCommand();
        add.CommandText = "Select ID,recipename FROM recipe WHERE category=@c";
        add.Connection = baglanti;
        string cat = listcategory.SelectedItem.Text;
        add.Parameters.AddWithValue("@c", cat);
       
        OleDbDataAdapter ffind = new OleDbDataAdapter(add);
 
        DataSet ds = new DataSet();
        ffind.Fill(ds);
        ListBox1.DataSource = ds;
      
        ListBox1.DataTextField = "recipename";
        ListBox1.DataValueField = "ID";
        ListBox1.DataBind();  baglanti.Close();

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MainPage.aspx");
    }
}        
    