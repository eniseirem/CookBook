using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class RecipePage : System.Web.UI.Page
{
    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(@"~/\Database1.mdb"));
    public void justread()
    {
        txtTime.ReadOnly = true;
        txtrec.ReadOnly = true;
        txtPortion.ReadOnly = true;
        txtName.ReadOnly = true;
        txting.ReadOnly = true;
        btnSaveRecipe.Visible = false;


    }


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnSaveRecipe_Click(object sender, EventArgs e)
    {

        baglanti.Open();
        OleDbCommand add = new OleDbCommand();
        add.CommandText = "insert into recipe (category,zaman,portion,Ingredients,recipe,recipename) VALUES (?,?,?,?,?,?)";
        string cat = listcategory.SelectedItem.Text;

        if (string.IsNullOrEmpty(cat) || string.IsNullOrWhiteSpace(txtrec.Text) || string.IsNullOrWhiteSpace(txtPortion.Text) || string.IsNullOrWhiteSpace(txtName.Text) || string.IsNullOrWhiteSpace(txtTime.Text) || string.IsNullOrWhiteSpace(txting.Text))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Please Write All Informations as Required')", true);
        }
        else
        {
            add.Parameters.AddWithValue("@c", cat);
            add.Parameters.AddWithValue("@t", txtTime.Text);
            add.Parameters.AddWithValue("@p", txtPortion.Text);
            add.Parameters.AddWithValue("@ing", txting.Text);
            add.Parameters.AddWithValue("@r", txtrec.Text);
            add.Parameters.AddWithValue("@n", txtName.Text);
            add.Connection = baglanti;
            add.ExecuteNonQuery();
            /* Label10.Visible = true;
             label10.Text = "Your recipe is successfully saved!";
             txtTime.Text = "";
             listcategory.ClearSelection();
             txtName.Text = "";
             txtPortion.Text = "";
             txtrec.Text = "";
             txting.Text = ""; */
            Response.Redirect("MainPage.aspx");



        }





        add.Dispose();
        baglanti.Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MainPage.aspx");
    }
}