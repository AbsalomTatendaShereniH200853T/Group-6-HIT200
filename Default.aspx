<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
          width: 76%;
        }
        #cmdSignOut {
          text-align: center;
          color: #000066;
        }
        .auto-style2 {
          width: 372px;
        }
        .auto-style3 {
          width: 372px;
          height: 174px;
        }
        .auto-style4 {
          height: 174px;
          width: 423px;
        }
        .auto-style5 {
          width: 423px;
        }
        .auto-style6 {
          color: #669999;
        }
        .auto-style7 {
          width: 423px;
          color: #009999;
        }
        .auto-style8 {
          width: 372px;
          height: 48px;
        }
        .auto-style9 {
          width: 423px;
          height: 48px;
        }
    </style>
</head>
<body>
    <form id="Default" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Height="171px" ImageUrl="~/Content/vote2.jpg" Width="423px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7" style="font-size: small"><strong>Welcome to Harare Insitute Of Technology E-Voting </strong></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6">Please Sign In below</span><br class="auto-style6" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input type="submit" Value="Sign In" runat="server" id="cmdSignOut"/></td>
            </tr>
        </table>
&nbsp;<div>
        </div>
     
    </form>
</body>
</html>
