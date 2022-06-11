<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Candidates.aspx.cs" Inherits="Candidates" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color: #CCCCCC; margin-left: 0px; margin-top: 0px;">
        <div style ="font-size:x-large; background-color: #CCCCCC; margin-top: 0px;" align ="center"> Candidate Registration Management</div>
        <table style="width: 90%; border-style: solid; border-width: 1px; margin-left: 59px" border="0">
            <tr>
                <td style="width: 194px; height: 24px;">Candidate Id</td>
                <td style="width: 430px; height: 24px;">
                    <asp:TextBox ID="TextBoxCandidateId" runat="server" Width="268px" OnTextChanged="TextBoxCandidateId_TextChanged"></asp:TextBox>
                </td>
                <td style="width: 314px; height: 24px;"></td>
            </tr>
            <tr>
                <td style="width: 194px; height: 24px; text-align: left;">Student Id</td>
                <td style="width: 430px; height: 24px;">
                    <asp:TextBox ID="TextBoxStudentId" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 314px; height: 24px;">
                    &nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 194px; height: 24px;">First Name</td>
                <td style="width: 430px; height: 24px;">
                    <asp:TextBox ID="TextBoxFirstName" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 314px; " rowspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Search for a specific candidate by Id" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 194px">Surname</td>
                <td style="width: 430px">
                    <asp:TextBox ID="TextBoxSurname" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 194px" draggable="false">Email Address</td>
                <td style="width: 430px">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 194px">Passwor</td>
                <td style="width: 430px">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 314px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBoxSearchCandidate" runat="server" Height="26px" Width="218px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 194px; height: 23px;">Registration Status</td>
                <td style="width: 430px; height: 23px;">
                    <asp:DropDownList ID="DropDownListStatus" runat="server" Height="24px" Width="268px" OnSelectedIndexChanged="DropDownListStatus_SelectedIndexChanged">
                        <asp:ListItem>Registered</asp:ListItem>
                     
                    </asp:DropDownList>
                </td>
                <td style="width: 314px; height: 23px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="ButtonSearchCandidate" runat="server" ForeColor="White" Height="30px" OnClick="ButtonSearchCandidate_Click" Text="Search Candidate" Width="229px" />
                </td>
            </tr>
            <tr>
                <td style="width: 194px; height: 23px;">Date Registered</td>
                <td style="width: 430px; height: 23px;">
                    <asp:TextBox ID="TextBoxDateRegistered" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 314px; height: 23px;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 194px; height: 23px;">Date Of Birth</td>
                <td style="width: 430px; height: 23px;">
                    <asp:TextBox ID="TextBoxDateOfBirth" runat="server" Width="269px"></asp:TextBox>
                </td>
                <td style="width: 314px; height: 23px;"></td>
            </tr>
            <tr>
                <td style="width: 194px; height: 23px;">&nbsp;</td>
                <td style="width: 430px; height: 23px;">
                    &nbsp;</td>
                <td style="width: 314px; height: 23px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 194px; height: 23px;"></td>
                <td style="width: 430px; height: 23px;">
                    &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#000099" BorderColor="#000066" BorderStyle="Ridge" ForeColor="White" OnClick="Button1_Click1" Text="Clear text boxes" Width="125px" Font-Bold="True" Height="33px" />
                &nbsp;&nbsp;<asp:Button ID="ButtonInsert" runat="server" BackColor="#CC0099" BorderColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="127px" BorderStyle="Ridge" Height="34px" />
                </td>
                <td style="width: 314px; height: 23px;"></td>
            </tr>
            <tr>
                <td style="width: 194px; height: 23px;">&nbsp;</td>
                <td style="width: 430px; height: 23px;">
                    &nbsp;<asp:Button ID="ButtonUpdate" runat="server" BackColor="#006600" BorderColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="ButtonUpdate_Click" Text="Update" Width="125px" />
                &nbsp; <asp:Button ID="ButtonDelete" runat="server" BackColor="#CC0000" BorderColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="ButtonDelete_Click" Text="Delete" Width="127px" />
                </td>
                <td style="width: 314px; height: 23px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 28px;" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="GridViewRegCandidates" runat="server" HorizontalAlign="Center" Width="761px" GridLines="None" CellPadding="4" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
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
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="width: 194px; height: 28px;">&nbsp;</td>
                <td style="width: 430px; height: 28px;">
                    &nbsp;</td>
                <td style="width: 314px; height: 28px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 194px; height: 28px;">&nbsp;</td>
                <td style="width: 430px; height: 28px;">
                    &nbsp;</td>
                <td style="width: 314px; height: 28px;">&nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>
