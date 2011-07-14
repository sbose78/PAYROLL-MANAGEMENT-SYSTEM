<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DISPATCH_SALARY.aspx.cs" Inherits="ADMIN_DISPATCH_SALARY" %>

<%@ Register Src="../WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 100;
            left: 310px; position: absolute; top: 255px" Text="DISPATCH" />
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 101; left: 37px; position: absolute;
            top: 353px" Width="618px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Style="z-index: 102; left: 208px; position: absolute; top: 200px" Width="121px">
            <asp:ListItem Value="1">JAN</asp:ListItem>
            <asp:ListItem Value="2">FEB</asp:ListItem>
            <asp:ListItem Value="3">MAR</asp:ListItem>
            <asp:ListItem Value="4">APR</asp:ListItem>
            <asp:ListItem Value="5">MAY</asp:ListItem>
            <asp:ListItem Value="6">JUNE</asp:ListItem>
            <asp:ListItem Value="7">JULY</asp:ListItem>
            <asp:ListItem Value="8">AUG</asp:ListItem>
            <asp:ListItem Value="9">SEPT</asp:ListItem>
            <asp:ListItem Value="10">OCT</asp:ListItem>
            <asp:ListItem Value="11">NOV</asp:ListItem>
            <asp:ListItem Value="12">DEC</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
            Style="z-index: 103; left: 373px; position: absolute; top: 201px" Width="135px">
        </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Height="93px" Style="z-index: 104; left: 63px;
            position: absolute; top: -94px" Text="Label" Width="441px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 106; left: 175px; position: absolute;
            top: 103px" Text="DISPATCH SALARY" Width="432px" Font-Bold="True" Font-Overline="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
