using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberLogin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        string query = "SELECT * FROM Login where  [UserName] = '" + TextBox1.Text.Trim() + "' and [UserPassword]= '" + TextBox2.Text.Trim() + "' ";
        SqlDataAdapter sda = new SqlDataAdapter(query, conn);
        DataTable dtbl = new DataTable();
        sda.Fill(dtbl);
        if (dtbl.Rows.Count == 1)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('YOU ARE LOGGED IN ');", true);


        }
        else
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid login credentials  ');", true);
            
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}