<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BallotBoxes.aspx.cs" Inherits="BallotBoxes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div style="background-color: #CCCCCC; margin-left: 0px; margin-top: 0px;">
        <div style ="font-size:x-large; background-color: #CCCCCC;" align ="center"> &nbsp;Check for your eligibility to vote </div>
        <table style="width: 90%; border-style: solid; border-width: 1px; margin-left: 59px" border="0">
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;" colspan="4">
                    &nbsp;</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;" colspan="4" class="text-center">
                    Registered candidates to choose from</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;" colspan="4">
                    &nbsp;</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px;" colspan="4">
                    <asp:GridView ID="GridViewRegCandidates" runat="server" HorizontalAlign="Center" Width="780px" GridLines="None" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" DataKeyNames="CandidateId" DataSourceID="SqlDataSourceCandidate">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CandidateId" HeaderText="CandidateId" ReadOnly="True" SortExpression="CandidateId" />
                            <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                            <asp:BoundField DataField="Emailaddress" HeaderText="Emailaddress" SortExpression="Emailaddress" />
                            <asp:BoundField DataField="CandidatePassword" HeaderText="CandidatePassword" SortExpression="CandidatePassword" />
                            <asp:BoundField DataField="RegistrationStatus" HeaderText="RegistrationStatus" SortExpression="RegistrationStatus" />
                            <asp:BoundField DataField="DateRegistered" HeaderText="DateRegistered" SortExpression="DateRegistered" />
                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                        </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceCandidate" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidates] ORDER BY [CandidateId]"></asp:SqlDataSource>
                </td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px;" colspan="4">
                    &nbsp;</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;" rowspan="6">&nbsp;</td>
                <td style="width: 291px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;" rowspan="6">
                    <b>
                    <asp:Label ID="Label7" runat="server" Text="Enter Id &amp; Search eligibilty " BackColor="#CC0099"></asp:Label>
                    <br />
                    <br />
                    &nbsp;<asp:TextBox ID="TextBoxSearchStudentId" runat="server" Width="197px" OnTextChanged="TextBoxSearchStudentId_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="ButtonSearchCandidate" runat="server" ForeColor="White" Height="41px" OnClick="ButtonSearchCandidate_Click" Text="Search " Width="213px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                </td>
                <td style="width: 838px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;" rowspan="6">
                    &nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your&nbsp; Eligibilty Summary&nbsp;</td>
                <td style="width: 314px; height: 24px;" rowspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    Student Id</td>
                <td style="width: 405px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    <asp:Label ID="LabelVoterId" runat="server" CssClass="text-success" style="font-size: medium; color: #FFFFFF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 258px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    Your Name</td>
                <td style="width: 405px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    <asp:Label ID="LabelName" runat="server" CssClass="text-success" style="font-size: medium; color: #FFFFFF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 258px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    Registration Status</td>
                <td style="width: 405px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    <asp:Label ID="LabelRegStatus" runat="server" CssClass="text-success" style="font-size: medium; color: #FFFFFF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 258px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    &nbsp;</td>
                <td style="width: 405px; height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #000000; background-color: #33CCFF;" colspan="2">
                    <asp:Label ID="LabelEligibility" runat="server" style="font-size: medium; color: #FFFFFF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 24px;" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLinkCastBallot" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="White" NavigateUrl="~/CastVote.aspx">Follow this link to cast you ballot now</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    </td>
                <td style="width: 314px; height: 24px;"></td>
            </tr>
            <tr>
                <td style="height: 24px;" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>


