using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");
    string de = "Stud";
    double val = 00;
    protected void Page_Load(object sender, EventArgs e)
    {
        AutoId();
        if (!IsPostBack)
        {
            LoadGridView();
        }
    }
    protected void CleanItUp()
    {
        
        TextBoxStudentId.Text = "";
        TextBoxFirstName.Text = "";
        TextBoxLastName.Text = "";
        TextBoxEmail.Text = "";
        DropDownListStatus.SelectedValue = "";
        TextBoxContact.Text = "";
        TextBoxSearchStudentId.Text = "";


        AutoId();
    }
    private void AutoId()
    {
        conn.Close();
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT COUNT([StudentId]) from [dbo].[Students]", conn);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();
        i++;
        TextBoxStudentId.Text = de + val + i.ToString();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Students]([StudentId],[StudentFirstName],[StudentLastName],[StudentEmail],[StudentCell],[VoterRegStatus]) VALUES ('" + TextBoxStudentId.Text +"', '" + TextBoxFirstName.Text +"', '" + TextBoxLastName.Text  +"', '" + TextBoxEmail.Text  +"', '" + TextBoxContact.Text + "', '" + DropDownListStatus.SelectedValue +"')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully REGISTERED');", true);
        CleanItUp();
        LoadGridView();

    }
   void LoadGridView()
    {


        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM [Students]", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridViewRegStudents.DataSource = dt;
        GridViewRegStudents.DataBind();
        conn.Close();

       // ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        CleanItUp();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd = conn.CreateCommand();
        cmd.CommandText = "DELETE FROM [dbo].[Students] WHERE  [StudentId] = '" + TextBoxSearchStudentId.Text + "'";
        
        cmd.ExecuteNonQuery();
        conn.Close();
        //conn.Open();
        //SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Students] WHERE [StudentId] LIKE '" + TextBoxStudentId.Text + "'", conn);
        //cmd.ExecuteNonQuery();
        //conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully DELETED  ');", true);
        CleanItUp();
        LoadGridView();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd = conn.CreateCommand();
        cmd.CommandText = "UPDATE [dbo].[Students] SET [StudentFirstName] ='" + TextBoxFirstName.Text + "',[StudentLastName] =  '" + TextBoxLastName.Text + "',[StudentEmail] = '" + TextBoxEmail.Text + "',[StudentCell] = '" + TextBoxContact.Text + "',[VoterRegStatus] = '" + DropDownListStatus.SelectedValue + "' WHERE [StudentId] = '" + TextBoxSearchStudentId.Text + "'";

        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully UPDATED  ');", true);
        //CleanItUp();
        LoadGridView();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[Students] where  [StudentId] = '" + TextBoxSearchStudentId.Text + "'", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);
        if (dtb.Rows.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Record NOT FOUND ');", true);
        }
        else
        {

            TextBoxStudentId.Text = dtb.Rows[0][0].ToString();
            TextBoxFirstName.Text = dtb.Rows[0][1].ToString();
            TextBoxLastName.Text = dtb.Rows[0][2].ToString();
            TextBoxEmail.Text = dtb.Rows[0][3].ToString();
            TextBoxContact.Text = dtb.Rows[0][4].ToString();
            DropDownListStatus.SelectedValue = dtb.Rows[0][5].ToString();
        }
            conn.Close();
            CleanItUp();
            LoadGridView();
        
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[Students] where  [StudentId] = '" + TextBoxSearchStudentId.Text + "'", conn); 
         DataTable dtb = new DataTable();
        da.Fill(dtb);
        if (dtb.Rows.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Record NOT FOUND ');", true);
        }
        else
        {

            TextBoxStudentId.Text = dtb.Rows[0][0].ToString();
            TextBoxFirstName.Text = dtb.Rows[0][1].ToString();
            TextBoxLastName.Text = dtb.Rows[0][2].ToString();
            TextBoxEmail.Text = dtb.Rows[0][3].ToString();
            TextBoxContact.Text = dtb.Rows[0][4].ToString();
            DropDownListStatus.SelectedValue = dtb.Rows[0][5].ToString();
        }
        conn.Close();
        //CleanItUp();
        LoadGridView();

    }
}