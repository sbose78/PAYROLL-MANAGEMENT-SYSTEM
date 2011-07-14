<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EMPLOYEEEDIT.ASPX.cs" Inherits="employeeEdit" %>

<%@ Register Src="../WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="z-index: 100; left: 81px;
            position: absolute; top: 234px" Text="EMPLOYEE NAME"></asp:Label>
        <asp:TextBox ID="ENAME" runat="server" Style="z-index: 101; left: 282px; position: absolute;
            top: 240px" Width="196px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 102; left: 107px;
            position: absolute; top: 321px" Text="E-MAIL"></asp:Label>
        <asp:TextBox ID="EMAIL" runat="server" Style="z-index: 103; left: 284px; position: absolute;
            top: 323px" Width="246px"></asp:TextBox>
        <asp:Button ID="Update" runat="server" Font-Bold="True" OnClick="Update_Click" Style="z-index: 104;
            left: 274px; position: absolute; top: 421px" Text="Update" />
        <asp:Label ID="Label3" runat="server" Style="z-index: 105; left: 278px; position: absolute;
            top: 473px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EMAIL"
            ErrorMessage="e-mail format is wrong" Font-Bold="True" Font-Size="16pt" Height="34px"
            Style="z-index: 106; left: 286px; position: absolute; top: 363px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            Width="227px"></asp:RegularExpressionValidator>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Style="z-index: 108;
            left: 217px; position: absolute; top: 148px" Text="EDIT PROFILE" Width="238px"></asp:Label>
    </div>
    </form>
</body>
</html>
