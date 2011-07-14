<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showSalary.aspx.cs" Inherits="User_Home" %>

<%@ Register Src="../WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="z-index: 100; left: 98px; width: 365px; position: absolute; top: 126px;
            height: 344px; background-color: powderblue">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="z-index: 100; left: 87px;
                position: absolute; top: 98px" Text="Month"></asp:Label>
            &nbsp;
            <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 91px; position: absolute;
                top: 143px" Text="Year" Font-Bold="True"></asp:Label>
            &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 102;
                left: 160px; position: absolute; top: 212px" Text="LOGIN" />
            <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Style="z-index: 103; left: 70px;
                position: absolute; top: 12px" Text="QUERY SALARY " Width="288px"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 104; left: 178px;
                position: absolute; top: 100px">
                <asp:ListItem Value="1">JAN</asp:ListItem>
                <asp:ListItem Value="2">FEB</asp:ListItem>
                <asp:ListItem Value="3">MAR</asp:ListItem>
                <asp:ListItem Value="4">APR</asp:ListItem>
                <asp:ListItem Value="5">MAY</asp:ListItem>
                <asp:ListItem Value="6">JUN</asp:ListItem>
                <asp:ListItem Value="7">JUL</asp:ListItem>
                <asp:ListItem Value="8">AUG</asp:ListItem>
                <asp:ListItem Value="9">SEPT</asp:ListItem>
                <asp:ListItem Value="10">OCT</asp:ListItem>
                <asp:ListItem Value="11">NOV</asp:ListItem>
                <asp:ListItem Value="12">DEC</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                Style="z-index: 106; left: 181px; position: absolute; top: 142px">
            </asp:DropDownList>
        </div>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
