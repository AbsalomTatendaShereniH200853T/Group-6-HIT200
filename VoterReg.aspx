<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="VoterReg.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color: #99CCFF">
        <div style ="font-size:x-large; background-color: #99FFCC;" align ="center"> &nbsp;Student Voter Registration Management</div>
        <br />
        <table style="width: 90%; border-style: solid; border-width: 1px; margin-left: 59px">
            <tr>
                <td style="width: 130px; height: 25px;">Sudent Id</td>
                <td style="width: 248px; height: 25px;">
                    <asp:TextBox ID="TextBoxStudentId" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 332px; height: 25px;"></td>
            </tr>
            <tr>
                <td style="width: 130px; height: 24px;">First Name</td>
                <td style="width: 248px; height: 24px;">
                    <asp:TextBox ID="TextBoxFirstName" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 332px; height: 24px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Student Id to SEARCH:&nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 130px; height: 22px;">Last Name</td>
                <td style="width: 248px; height: 22px;">
                    <asp:TextBox ID="TextBoxLastName" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 332px; height: 22px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxSearchStudentId" runat="server" Height="21px" Width="156px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px; height: 24px;">Email Address</td>
                <td style="width: 248px; height: 24px;">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 332px; height: 24px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonSearch" runat="server" ForeColor="White" Height="34px" OnClick="ButtonSearch_Click" Text="Search" Width="109px" />
                </td>
            </tr>
            <tr>
                <td style="width: 130px">Contact Number</td>
                <td style="width: 248px">
                    <asp:TextBox ID="TextBoxContact" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td style="width: 332px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px; height: 23px;">Registration Status</td>
                <td style="width: 248px; height: 23px;">
                    <asp:DropDownList ID="DropDownListStatus" runat="server" Height="25px" Width="268px">
                        <asp:ListItem Value="1">Registered</asp:ListItem>
                             </asp:DropDownList>
                </td>
                <td style="width: 332px; height: 23px;"><asp:Button ID="Button3" runat="server" BackColor="#006600" BorderColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" Text="Update" Width="128px" BorderStyle="None" />
                &nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#CC0000" BorderColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Delete" Width="126px" BorderStyle="None" />
                </td>
            </tr>
            <tr>
                <td style="width: 130px; height: 23px;"></td>
                <td style="width: 248px; height: 23px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#CC0099" BorderColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Add new" Width="128px" BorderStyle="None" Height="35px" />
                    &nbsp;</td>
                <td style="width: 332px; height: 23px;"></td>
            </tr>
            <tr>
                <td style="width: 130px; height: 28px;">&nbsp;</td>
                <td style="width: 248px; height: 28px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#000066" ForeColor="White" Height="34px" OnClick="Button4_Click" Text="Clear form " Width="129px" />
                &nbsp;</td>
                <td style="width: 332px; height: 28px;"></td>
            </tr>
            <tr>
                <td style="height: 28px;" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="GridViewRegStudents" runat="server" HorizontalAlign="Center" Width="761px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical" CellPadding="1">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="width: 130px; height: 28px;"></td>
                <td style="width: 248px; height: 28px;">
                    </td>
                <td style="width: 332px; height: 28px;"></td>
            </tr>
            <tr>
                <td style="width: 130px; height: 28px;">&nbsp;</td>
                <td style="width: 248px; height: 28px;">
                    &nbsp;</td>
                <td style="width: 332px; height: 28px;">&nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>
