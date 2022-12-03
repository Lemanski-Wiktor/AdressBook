<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="AdressBook.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="XmlDataSource1"></asp:GridView>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="book.xml" TransformFile="book.xsl"></asp:XmlDataSource>
            
            <br />
            <a href="WebForm1.aspx">Return to main site!</a>
        </div>
    </form>
</body>
</html>
