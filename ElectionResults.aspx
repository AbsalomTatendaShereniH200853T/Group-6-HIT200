<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ElectionResults.aspx.cs" Inherits="ElectioResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <div style="background-color: #CCCCCC; margin-left: 0px; margin-top: 0px;">
        <div style ="font-size:x-large; background-color: #CCCCCC;" align ="center"> &nbsp;Check out your <span style="color: #6600CC">Election results</span> </div>
        <table style="width: 90%; border-style: solid; border-width: 1px; margin-left: 59px" border="0">
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;">
                    &nbsp;</td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: medium; color: #008000;" class="text-center">
                    Election
                    Results </td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px;"></td>
                <td style="height: 24px; font-family: 'Comic Sans MS'; font-size: small; color: #FFFFFF;">
                    </td>
                <td style="width: 314px; height: 24px;"></td>
            </tr>
            <tr>
                <td style="height: 24px;">&nbsp;</td>
                <td style="height: 24px;">
                    <asp:GridView ID="GridViewRegCandidates" runat="server" HorizontalAlign="Center" Width="780px" GridLines="None" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" DataSourceID="SqlDataSourceResults">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="candidateid" HeaderText="Candidate Id" SortExpression="candidateid" />
                            <asp:BoundField DataField="Column1" HeaderText="Total Votes" SortExpression="Column1" ReadOnly="True" />
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
                    <asp:SqlDataSource ID="SqlDataSourceResults" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [candidateid],  count([candidateid])  FROM [newvoters] group by [CandidateId] order by count([candidateid]) desc"></asp:SqlDataSource>
                </td>
                <td style="width: 314px; height: 24px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 23px;"></td>
                <td style="height: 23px;">
                    </td>
                <td style="width: 314px; height: 23px;"></td>
            </tr>
            </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>

