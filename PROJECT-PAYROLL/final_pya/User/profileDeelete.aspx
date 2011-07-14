<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profileDeelete.aspx.cs" Inherits="TEST_profileDeelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="z-index: 100; left: 106px; width: 565px; position: absolute; top: 105px;
            height: 241px; background-color: #ffffcc">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                Style="z-index: 100; left: 296px; position: absolute; top: 51px">
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 188px; position: absolute;
                top: 53px" Text="Employee Id"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 197px; position: absolute;
                top: 103px" Text="Full Name"></asp:Label>
            <asp:Label ID="Label3" runat="server" Style="z-index: 103; left: 297px; position: absolute;
                top: 103px" Text="0" Font-Bold="True"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 105;
                left: 239px; position: absolute; top: 169px" Text="Delete" />
        </div>
    
    </div>
    </form>
</body>
</html>
