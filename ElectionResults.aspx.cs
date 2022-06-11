using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ElectioResults : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\Visual Studio 2015\Projects\HITevoteWebSite\App_Data\HITEVOTERS.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        CreateNewVoters();
    }

    protected void ButtonClear_Click1(object sender, EventArgs e)
    {

    }

    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {

    }
    protected void CreateNewVoters()
    {

        //LabelVotingStatus.Text = "";

        conn.Open();
        SqlCommand cmd1 = conn.CreateCommand();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DROP TABLE [dbo].[newvoters]";
        cmd1.ExecuteNonQuery();
       // ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('dbo.newvoters DROPPED ');", true);
        SqlDataAdapter da = new SqlDataAdapter("select v.voterid, v.studentid, v.candidateid, c.firstname, c.surname into dbo.newvoters from voter v, Candidates c where v.candidateid = c.CandidateId", conn);
        DataTable dtb = new DataTable();
        da.Fill(dtb);
        if (dtb.Rows.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('dbo.newvoters CREATED ');", true);
            
        }
        else

        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('dbo.newvoters UPDATED ');", true);

        }
        conn.Close();


    }

}