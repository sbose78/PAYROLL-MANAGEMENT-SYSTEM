<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changePass.aspx.cs" Inherits="User_changePass" %>

<%@ Register Src="../WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="z-index: 100; left: 59px; width: 568px; position: absolute; top: 199px;
            height: 478px; background-color: white">
            <asp:TextBox ID="EID" runat="server" Style="z-index: 100; left: 244px; position: absolute;
                top: 182px" OnTextChanged="EID_TextChanged"></asp:TextBox>
            <asp:TextBox ID="OPass" runat="server" Style="z-index: 101; left: 243px; position: absolute;
                top: 228px"></asp:TextBox>
            <asp:TextBox ID="NPASS" runat="server" Style="z-index: 102; left: 244px; position: absolute;
                top: 270px"></asp:TextBox>
            <asp:TextBox ID="CPASS" runat="server" Style="z-index: 103; left: 244px; position: absolute;
                top: 315px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 136px; position: absolute;
                top: 180px" Text="Employee ID"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="z-index: 105; left: 128px; position: absolute;
                top: 225px" Text="Old Password"></asp:Label>
            <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 121px; position: absolute;
                top: 273px" Text="New password"></asp:Label>
            <asp:Label ID="Label4" runat="server" Style="z-index: 107; left: 110px; position: absolute;
                top: 315px" Text="confirm Password"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 108;
                left: 264px; position: absolute; top: 375px" Text="COMMIT Change" />
            <asp:Label ID="Label5" runat="server" Style="z-index: 109; left: 86px; position: absolute;
                top: 381px" Text="Please fill the form"></asp:Label>
            &nbsp;<br />
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="REQUIRED"
                Style="z-index: 110; left: 417px; position: absolute; top: 229px" ControlToValidate="OPass"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Font-Size="XX-Large" Height="38px" Style="z-index: 111;
                left: 76px; position: absolute; top: 52px" Text="CHANGE PASSWORD" Width="373px"></asp:Label>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="REQUIRED"
                Style="z-index: 112; left: 418px; position: absolute; top: 184px" ControlToValidate="NPASS"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="NPASS"
                ControlToValidate="OPass" ErrorMessage="PASSWORDS DON'T MATCH" Height="52px"
                Style="z-index: 114; left: 417px; position: absolute; top: 283px" Width="135px"></asp:CompareValidator>
        </div>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
