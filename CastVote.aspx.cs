using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class CastVote : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");
    string de = "Vte";
    double val = 00;
    string votenum;
    protected void Page_Load(object sender, EventArgs e)
    {
        //fillCandidateDropDownList();
        LabelCandidate.Text = "";

    }
    protected bool IfVoted(DataTable ballotsTable)
    {
        bool votedStatus = false;
        if (ballotsTable.Rows.Count == 0)
        {
            /*LabelVotingStatus.Text = "VOTED ALREADY.One man one vote !";*/ 
            votedStatus = true;
        }

        return votedStatus;


    }

    protected void SearchCandidate()
    {

        LabelVotingStatus.Text = "";
       
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[Students] where  [StudentId] = '" + TextBoxStudentId.Text + "'", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);
        if (dtb.Rows.Count == 0)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Your have NOT REGISTERED ');", true);
            LabelVotingStatus.Text = "You CAN'T Vote ....NOT REGISTERED";
            
        }
        else  
        
        {
            CheckIfVotedAlready();
        }
        conn.Close();
        

    }
    //private void fillCandidateDropDownList()
    //{
    //    LabelVotedWell.Text = "";
    //    LabelCandidate.Text = "";
    //    CandidateDropDownList.Items.Clear();
    //    conn.Open();
    //    SqlCommand cmd = conn.CreateCommand();
    //    cmd.CommandType = CommandType.Text;
    //    //cmd = conn.CreateCommand();
    //    //cmd.CommandType = CommandType.Text;
    //    cmd.CommandText = "SELECT * FROM[dbo].[Candidates]";
    //    //cmd.ExecuteNonQuery();
    //    DataTable dt = new DataTable();
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    if (dt.Rows.Count == 0)
    //    {
    //      //  ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Candidates File EMPTY ');", true);
    //        LabelCandidate.Text = "NO CANDIDATES !";
    //    }
    //    da.Fill(dt);
    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        CandidateDropDownList.Items.Add(dr["CandidateId"].ToString());
            
    //    }
    //    conn.Close();
    //}
    protected void ButtonClear_Click1(object sender, EventArgs e)
    {
        TextBoxStudentId.Text = "";
        TextBoxCandidateId.Text = "";
        LabelVotedWell.Text = "";
        LabelCandidate.Text = "";
        LabelCandidate.Text = "";
        LabelVotedAlreadyStatus.Text = "";
        LabelVotingStatus.Text  = "";
        //fillCandidateDropDownList();
    }
    private void CheckIfVotedAlready()
    {
         

        LabelVotedAlreadyStatus.Text = "";

        //conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[Voter] where  [StudentId] = '" + TextBoxStudentId.Text + "'", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);
       // conn.Close();
        
        if (dtb.Rows.Count == 0)
        {
            LabelVotedWell.Text = "";

            //conn.Open();
            //SqlCommand cmd1 = conn.CreateCommand();
            //cmd1.CommandType = CommandType.Text;
            //SqlDataAdapter da1 = new SqlDataAdapter"INSERT INTO[dbo].[Voter] ([StudentId],[CandidateId]) VALUES ('" + TextBoxStudentId.Text + "', '" + CandidateDropDownList.SelectedItem.Valu  + "')";
            //cmd1.ExecuteNonQuery();
            //conn.Close();
            //conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;

            cmd1.CommandText = "INSERT INTO[dbo].[Voter] ([StudentId],[CandidateId]) VALUES ('" + TextBoxStudentId.Text + "', '" + TextBoxCandidateId.Text  + "')";

            cmd1.ExecuteNonQuery();
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully VOTED');", true);
            LabelVotedWell.Text = "Your Ballot was Successfully Cast";
            //  LoadGridView();
            // CleanItUp();

        }
        else

        {
            // has voted
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('You VOTED BEFORE ... One man one vote!');", true);
            LabelVotedAlreadyStatus.Text = " YOU VOTED BEFORE ... One man one vote!";

        }
        conn.Close();
        


    }

    private void CreateNewVoters()
    {

        //LabelVotingStatus.Text = "";

        conn.Open();
        SqlCommand cmd1 = conn.CreateCommand();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DROP TABLE [dbo].[newvoters]";
        cmd1.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('WE ARE READY TO HELP YOU VOTE ');", true);
        SqlDataAdapter da = new SqlDataAdapter("select v.voterid, v.studentid, v.candidateid, c.firstname, c.surname into dbo.newvoters from voter v, Candidates c where v.candidateid = c.CandidateId", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);
        if (dtb.Rows.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('dbo.newvoters CREATED ');", true);
            //LabelVotingStatus.Text = "You CAN'T Vote ....NOT REGISTERED";

        }
        else

        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('dbo.newvoters UPDATED ');", true);

        }
        conn.Close();


    }
    //CreateNewVoters();
    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        SearchCandidate();
        
        

    }
}

    

    
