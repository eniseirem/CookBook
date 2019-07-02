using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<h1>WELCOME.ASPX</h1>");
        Response.Write("Welcome " + Request.QueryString["name"] + " " + Request.QueryString["surname"] + "</br>");

        Response.Write("Age: " + Request.QueryString["age"] + "</br>");

        Response.Write("You live in " + Request.QueryString["address"] + "," + Request.QueryString["city"] + "</br>");

        img2.ImageUrl = Request.QueryString["picture"];

        int hobby = Int32.Parse(Request.QueryString["counthobby"]);
        if (hobby == 0)
        {
            Response.Write("NO HOBBY!!!");
        }
        else if (hobby == 1)
        {
            Response.Write("Your hobby is " + Request.QueryString["hobby"]);
        }
        else
        {
            Response.Write("Your hobbies are " + Request.QueryString["hobby"]);
        }

        if (Request.QueryString["gender"].Equals("Female"))
        {
            mybody.Style[HtmlTextWriterStyle.BackgroundColor] = "#FF0040";
        }
        else if (Request.QueryString["gender"].Equals("Male"))
        {
            mybody.Style[HtmlTextWriterStyle.BackgroundColor] = "#0040FF";
        }


    }
}