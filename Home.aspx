 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <p style="height: 105px">
        <table style="width: 102%; background-color: #ADADAD; height: 278px;">
            <tr>
                <td style="height: 22px; width: 477px;">&nbsp; <asp:Label ID="Label3" runat="server" Text="Students you can register to vote"></asp:Label>
                    &nbsp; <a href="VoterReg.aspx">click to register</a>

                </td>
                <td style="height: 22px" colspan="3"></td>
            </tr>
            <tr>
                <td style="width: 477px">&nbsp; <asp:Label ID="Label5" runat="server" Text="Contestants can register to be candidates"></asp:Label>
                    &nbsp;<a href="Candidates.aspx">click to register</a> as a candidate</td>
                <td colspan="3" rowspan="5">
                    <asp:Image ID="Image2" runat="server" BorderStyle="Ridge" Height="220px" ImageAlign="Baseline" ImageUrl="~/Content/voteSlide.jpg" Width="315px" />
                </td>
            </tr>
            <tr>
                <td style="height: 22px; width: 477px;">&nbsp;<asp:Label ID="Label1" runat="server" Text="View your registration and voted status"></asp:Label>
                    &nbsp;<a href="BallotBoxes.aspx">here</a></td>
            </tr>
            <tr>
                <td style="width: 477px">&nbsp; <asp:Label ID="Label6" runat="server" Text="You can VOTE by "></asp:Label>
                    <a href="CastVote.aspx">clicking vote</a></td>
            </tr>
            <tr>
                <td style="height: 22px; width: 477px;">&nbsp; <asp:Label ID="Label2" runat="server" Text="View Election Results"></asp:Label>
                    &nbsp;follow this link&nbsp; <a href="ElectionResults.aspx">election results</a></td>
            </tr>
            <tr>
                <td style="height: 20px; width: 477px;">&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 477px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </p>

    </asp:Content>

