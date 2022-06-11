using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BallotBoxes : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");
  //  SqlConnection connBallot = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");

   SqlConnection connBallot = new SqlConnection(@"Data Source =(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");
    string de = "Vte";
    double val = 00;
    string votenum ;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void AutoId()
    {

        connBallot.Close();
        connBallot.Open();
        SqlCommand cmd = new SqlCommand("SELECT COUNT([StudentId]) from [dbo].[BallotBox]", connBallot);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        connBallot.Close();
        i++;
       votenum = de + val + i.ToString();
    }
    protected void CleanItUp()
    {
        TextBoxSearchStudentId.Text = "";
        LabelEligibility.Text = "";
        LabelVoterId.Text = "";
        LabelName.Text = "";
        LabelRegStatus.Text = "";
       

    }
    protected void ButtonSearchCandidate_Click(object sender, EventArgs e)
    {
        //CleanItUp();
        LabelRegStatus.Text = "";
        LabelEligibility.Text = "";
        
        LabelVoterId.Text = TextBoxSearchStudentId.Text;
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[Students] where  [StudentId] = '" + TextBoxSearchStudentId.Text + "'", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);
        if (dtb.Rows.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Record NOT FOUND ');", true);
            LabelRegStatus.Text = "NOT REGISTERED";
            LabelEligibility.Text = "NOT ELIGIBLE";
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Record HAS BEEN FOUND ');", true);
            LabelVoterId.Text = dtb.Rows[0][0].ToString();
            LabelName.Text = dtb.Rows[0][1].ToString() + "  " + dtb.Rows[0][2].ToString();
            LabelRegStatus.Text = "NOT REGISTERED";
            if (dtb.Rows[0][5].ToString() == "0")
            {
                LabelRegStatus.Text = "NOT REGISTERED";
            }

            LabelRegStatus.Text = "NOT REGISTERED";
            if (dtb.Rows[0][5].ToString() == "1")
            {
                LabelEligibility.Text = "ELIGIBLE TO VOTE";
                LabelRegStatus.Text = "REGISTERED";
            }
            else if(dtb.Rows[0][5].ToString() == "0")
            {
                LabelEligibility.Text = "NOT ELIGIBLE TO VOTE";
            }
         }
        conn.Close();
        //CleanItUp();

    }

    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[Students] where  [StudentId] = '" + TextBoxSearchStudentId.Text + "'", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);




        if (TextBoxSearchStudentId.Text == "" )
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please enter your ID  ');", true);
        }
        else
        {
            if (dtb.Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('CAN'T VOTE. NOT REGISTERED ');", true);
                LabelEligibility.Text = "CAN'T VOTE you are NOT REGISTERED";
                
            }
            else
            { 
                //OpenFile ballot
                connBallot.Open();
               SqlCommand cmdballot = connBallot.CreateCommand();
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter daballot = new SqlDataAdapter("SELECT * FROM[dbo].[BallotBox] where  [StudentId] = '" + TextBoxSearchStudentId.Text + "'", connBallot);
                DataTable dtballot = new DataTable();
                daballot.Fill(dtballot);
               
                //check if not voted
               
                //increment ballot id
                //insert ballot id, studentid, candidateid
                //display message
                connBallot.Close();

            }
        }
    }
   
   



    protected void TextBoxSearchStudentId_TextChanged(object sender, EventArgs e)
    {

    }
}