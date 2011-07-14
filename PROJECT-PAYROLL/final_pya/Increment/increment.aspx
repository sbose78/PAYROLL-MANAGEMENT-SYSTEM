<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="increment.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0000C0" Style="z-index: 100;
            left: 87px; position: absolute; top: 123px" Text="EMPLOYEE ID"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#0000C0" Style="z-index: 101;
            left: 54px; position: absolute; top: 218px" Text="PERCENTAGE  INCREMENT"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="EID" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Style="z-index: 102; left: 300px; position: absolute; top: 123px" Width="115px" AutoPostBack="True">
        </asp:DropDownList>
        <asp:TextBox ID="INC" runat="server" OnTextChanged="INC_TextChanged" Style="z-index: 103;
            left: 293px; position: absolute; top: 220px"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:Button ID="SUBMIT" runat="server" OnClick="SUBMIT_Click" Style="z-index: 104;
            left: 337px; position: absolute; top: 473px" Text="SUBMIT" />
        &nbsp;
        <asp:Label ID="Label4" runat="server" Style="z-index: 105; left: 337px; position: absolute;
            top: 291px" Text="Label"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EID"
            ErrorMessage="SELECT EID PLEASE" Style="z-index: 106; left: 489px; position: absolute;
            top: 125px"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Style="z-index: 107; left: 525px; position: absolute;
            top: 290px" Text="Label"></asp:Label>
        &nbsp;
        <asp:RadioButtonList ID="YES" runat="server" Style="z-index: 108; left: 344px; position: absolute;
            top: 392px">
            <asp:ListItem>YES</asp:ListItem>
            <asp:ListItem>NO</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;
        <asp:Label ID="OLD" runat="server" Style="z-index: 109; left: 333px; position: absolute;
            top: 183px" Text="old value"></asp:Label>
        <asp:TextBox ID="NEW" runat="server" Style="z-index: 110; left: 494px; position: absolute;
            top: 220px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Style="z-index: 111; left: 532px; position: absolute;
            top: 182px" Text="new value"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NEW"
            ErrorMessage="NEW VALUE REQUIRED" Style="z-index: 112; left: 680px; position: absolute;
            top: 221px"></asp:RequiredFieldValidator>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"
            ForeColor="Maroon" Style="z-index: 114; left: 155px; position: absolute; top: 34px"
            Text="ADMINISTRATIVE CONSOLE FOR SALARY INCREMENT"></asp:Label>
    
    </div>
    </form>
</body>
</html>
