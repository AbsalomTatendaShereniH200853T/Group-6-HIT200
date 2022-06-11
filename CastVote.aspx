<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CastVote.aspx.cs" Inherits="CastVote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <div style="background-color: #CCCCCC; margin-left: 0px; margin-top: 0px; background-image: none;">
        <div style ="font-size:x-large; background-color: #CCCCCC;" align ="center"> &nbsp;Vote For Your <span style="color: #6600CC">favourite</span> Candidate </div>
        <table style="width: 90%; border-style: solid; border-width: 1px; margin-left: 59px" border="0">
            <tr>
                <td style="height: 24px;" colspan="2">&nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;" colspan="3">
                    &nbsp;</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;" colspan="2">&nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: medium; color: #008000;" colspan="3" class="text-center">
                    Registered candidates to choose from</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;" colspan="2"></td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;" colspan="3">
                    </td>
                <td style="width: 314px; height: 24px;"></td>
            </tr>
            <tr>
                <td style="height: 24px;" colspan="2">&nbsp;</td>
                <td style="height: 24px;" colspan="3">
                    <asp:GridView ID="GridViewRegCandidates" runat="server" HorizontalAlign="Center" Width="780px" GridLines="None" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" DataKeyNames="CandidateId" DataSourceID="SqlDataSourceCandidate">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CandidateId" HeaderText="CandidateId" ReadOnly="True" SortExpression="CandidateId" />
                            <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                            <asp:BoundField DataField="Emailaddress" HeaderText="Emailaddress" SortExpression="Emailaddress" />
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
                <td style="height: 23px;" colspan="2"></td>
                <td style="height: 23px;" colspan="3">
                    </td>
                <td style="width: 314px; height: 23px;"></td>
            </tr>
            <tr>
                <td style="height: 24px;" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" ForeColor="#000066" Height="30px" style="font-weight: 700; font-size: medium; font-family: Arial; text-align: center; margin-right: 0px" Text="Enter you Id and select your Candidate Id" Width="410px"></asp:Label>
                    </td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 5px;" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td style="width: 314px; height: 5px;"></td>
            </tr>
            <tr>
                <td style="width: 212px; " rowspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td style="height: 46px; font-size: x-small; font-weight: 700; font-family: Arial; width: 266px;" colspan="2">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="White" Text="Enter Your Id" style="font-size: small; font-family: Arial"></asp:Label>
                    &nbsp;&nbsp;</td>
                <td style="height: 46px; width: 362px;">
                    <asp:TextBox ID="TextBoxStudentId" runat="server" Width="248px" Height="30px"></asp:TextBox>
                </td>
                <td style="width: 314px; height: 46px;">
                    <asp:Label ID="LabelVotingStatus" runat="server" style="font-weight: 700; color: #FFFFFF; font-size: small; font-family: Arial"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 7px; width: 266px;">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="White" style="font-size: small; font-family: Arial; text-align: center" Text="Select Your Candidate"></asp:Label>
                </td>
                <td style="height: 7px; width: 362px;">
                    <asp:TextBox ID="TextBoxCandidateId" runat="server" Height="26px" Width="248px"></asp:TextBox>
                </td>
                <td style="width: 314px; height: 7px;">
                    <asp:Label ID="LabelCandidate" runat="server" style="color: #FFFFFF; font-size: small; font-family: Arial; font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 15px; width: 266px;" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td style="height: 15px; width: 362px;">
                    <asp:Button ID="ButtonClear" runat="server" BackColor="#000099" BorderColor="#000066" BorderStyle="Ridge" ForeColor="White" OnClick="ButtonClear_Click1" Text="Clear text boxes" Width="142px" Font-Bold="True" Height="33px" />
                    </td>
                <td style="width: 314px; height: 15px;">
                    &nbsp;&nbsp; &nbsp;<asp:Button ID="ButtonUpdate" runat="server" BackColor="#006600" BorderColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="ButtonUpdate_Click" Text="VOTE" Width="228px" Height="53px" />
                    </td>
            </tr>
            <tr>
                <td style="height: 23px; width: 266px;" colspan="2">
                    &nbsp;&nbsp;</td>
                <td style="height: 23px; width: 362px;">
                    &nbsp;</td>
                <td style="width: 314px; height: 23px;">&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 23px; width: 266px;" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
                <td style="height: 23px; width: 362px;">
                    <asp:Label ID="LabelVotedWell" runat="server" style="color: #800080; font-size: small; font-weight: 700; font-family: Arial"></asp:Label>
                </td>
                <td style="width: 314px; height: 23px;">
                    <asp:Label ID="LabelVotedAlreadyStatus" runat="server" style="color: #FF0000; font-size: small; font-weight: 700; font-family: Arial"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 28px;" colspan="3">
                    </td>
                <td style="width: 314px; height: 28px;"></td>
            </tr>
            </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>


