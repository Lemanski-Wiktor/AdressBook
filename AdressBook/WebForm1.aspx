<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AdressBook.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Guests Book</title>
<link rel="stylesheet" href="StyleSheet1.css"/>
</head>
<body>
    <div id="container">
        <form id="form1" runat="server">
            <div class="row">
                <asp:Label ID="lblName" runat="server" Text="Name" style="margin-left:30px"></asp:Label>
                <asp:TextBox ID="txbName" runat="server" class="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txbName" runat="server" ErrorMessage="Uzupełnij dane!" style="color:red">*</asp:RequiredFieldValidator>
            </div>
            <div class="row">
                <asp:Label ID="lblEmail" runat="server" Text="Email" style="margin-left:50px"></asp:Label>
                <asp:TextBox ID="txbEmail" runat="server" class="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txbEmail" runat="server" ErrorMessage="Uzupełnij dane!" style="color:red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txbEmail" ErrorMessage="Niepoprawne dane!" style="color:red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </div>
            <div class="row">
                <asp:Label ID="lblDescription" runat="server" Text="Description" ></asp:Label>
                <asp:TextBox ID="txbDescription" runat="server" TextMode="MultiLine" style="height: 100px;" class="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txbDescription" runat="server" ErrorMessage="Uzupełnij dane!" style="color:red">*</asp:RequiredFieldValidator>
            </div>
            <div class="row">
                <asp:Button ID="btnAdd" runat="server" Text="Add"/>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm2.aspx">Przejdź dalej</asp:HyperLink>
            </div>
            <div class="row">
                <asp:Label ID="lblGuestOnline" runat="server" Text="Guests online: "></asp:Label>
            </div>
            <div class="row">
                <asp:Label ID="lblGuestTotal" runat="server" Text="Guests total:"></asp:Label>
            </div>
            <div class="row">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: red;" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
