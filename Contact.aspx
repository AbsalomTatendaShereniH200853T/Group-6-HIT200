<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Visit at : </h3>
    <address>
        Computer Science Department<br />
        Harare Institute Of Technology, BE 98052-6399<br />
        <abbr title="Phone">Phone</abbr>
        00263.024.678976
    </address>
    <h3>Drop me an email at: </h3>
    <address>
        <strong>E-Mail1:</strong>   <a href="mailto:hitcomp@hit.edu.com">hitcomp@hit.edu.com</a><br />
        <strong>E-Mail2:</strong> <a href="mailto:Admin@gmail.com">Admin@gmail.com</a>
    </address>
</asp:Content>
