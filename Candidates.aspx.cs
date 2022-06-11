using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidates : System.Web.UI.Page
{
    //string de = "Cand";
    //double val = 00;
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");
    private void AutoId()
    {
        string de = "Cand";
        double val = 00;
        conn.Close();
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT COUNT([CandidateId]) from [dbo].[Candidates]", conn);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();
        i++;
        TextBoxCandidateId.Text = de + val + i.ToString();


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        AutoId();
         if (!IsPostBack)
        {
            LoadGridView();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        conn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Candidates] VALUES ('" + TextBoxCandidateId.Text + "', '" + TextBoxStudentId.Text + "','" + TextBoxFirstName.Text + "', '" + TextBoxSurname.Text + "', '" + TextBoxEmail.Text + "', '" + TextBoxPassword.Text + "', '" + DropDownListStatus.SelectedValue + "','" + TextBoxDateRegistered.Text + "', '" + TextBoxDateOfBirth.Text  + "')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);
        LoadGridView();
        CleanItUp();

    }
    void LoadGridView()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM [Candidates]", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridViewRegCandidates.DataSource = dt;
        GridViewRegCandidates.DataBind();

        conn.Close();
      //  ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);
    }

    protected void CleanItUp()
    {
        TextBoxCandidateId.Text = "";
        TextBoxStudentId.Text = "";
        TextBoxFirstName.Text = "";
        TextBoxSurname.Text = "";
        TextBoxEmail.Text = "";
        TextBoxPassword.Text = "";
     //   DropDownListStatus.SelectedValue = "";
        TextBoxDateRegistered.Text = "";
        TextBoxDateOfBirth.Text = "";
        TextBoxSearchCandidate.Text  = "";
        AutoId();
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        CleanItUp();

    }

    

    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd = conn.CreateCommand();
        cmd.CommandText = "UPDATE [dbo].[Candidates] SET [CandidateId] = '" + TextBoxCandidateId.Text + "', [StudentId] = '" + TextBoxStudentId.Text + "', [FirstName] = '" + TextBoxFirstName.Text + "', [Surname] = '" + TextBoxSurname.Text + "', [Emailaddress] = '" + TextBoxEmail.Text + "',[CandidatePassword] = '" + TextBoxPassword.Text + "', [RegistrationStatus] = '" + DropDownListStatus.SelectedValue + "',[DateRegistered] = '" + TextBoxDateRegistered.Text + "', [DateOfBirth] = '" + TextBoxDateOfBirth.Text + "' WHERE [CandidateId] = '" + TextBoxSearchCandidate.Text + "'";

        cmd.ExecuteNonQuery();
        conn.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully UPDATED  ');", true);
        CleanItUp();
        LoadGridView();
    }

    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd = conn.CreateCommand();
        cmd.CommandText = "DELETE FROM [dbo].[Candidates] WHERE  [CandidateId] = '" + TextBoxSearchCandidate.Text + "'";

        cmd.ExecuteNonQuery();
        conn.Close();
        //conn.Open();
        //SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Students] WHERE [StudentId] LIKE '" + TextBoxStudentId.Text + "'", conn);
        //cmd.ExecuteNonQuery();
        //conn.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully DELETED  ');", true);
        CleanItUp();
        LoadGridView();
    }

    protected void ButtonSearchCandidate_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[Candidates] where  [CandidateId] = '" + TextBoxSearchCandidate.Text + "'", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);
        if (dtb.Rows.Count == 0)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Record NOT FOUND ');", true);
        }
        else
        {
            TextBoxCandidateId.Text = dtb.Rows[0][0].ToString();
            TextBoxStudentId.Text = dtb.Rows[0][1].ToString();
            TextBoxFirstName.Text = dtb.Rows[0][2].ToString();
            TextBoxSurname.Text = dtb.Rows[0][3].ToString();
            TextBoxEmail.Text = dtb.Rows[0][4].ToString();
            TextBoxPassword.Text = dtb.Rows[0][5].ToString();
            DropDownListStatus.SelectedValue = dtb.Rows[0][6].ToString();
            TextBoxDateRegistered.Text = dtb.Rows[0][7].ToString();
            TextBoxDateOfBirth.Text = dtb.Rows[0][8].ToString();
            


        }
        conn.Close();
        //CleanItUp();
        LoadGridView();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void DropDownListStatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxCandidateId_TextChanged(object sender, EventArgs e)
    {

    }
}