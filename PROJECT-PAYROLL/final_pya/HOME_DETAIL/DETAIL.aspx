<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DETAIL.aspx.cs" Inherits="DETAIL" %>

<%@ Register Src="../WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function DIV1_onclick() {

}

// ]]>
</script>
</head>
<body bgcolor="#ccffff">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#C00000" Style="z-index: 100;
            left: 114px; position: absolute; top: 407px"></asp:Label>
        &nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" BackColor="Transparent" BorderColor="Fuchsia" Font-Bold="True"
            Style="z-index: 101; left: 134px; position: absolute; top: 155px" Text="FULL NAME"></asp:Label>
        <asp:TextBox ID="FULLNAME" runat="server" Style="z-index: 102; left: 290px; position: absolute;
            top: 149px" ></asp:TextBox>
        <asp:Label ID="Label3" runat="server" BackColor="Transparent" Font-Bold="True" Style="z-index: 103;
            left: 137px; position: absolute; top: 200px" Text="SCID" Width="98px" Height="22px"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            Style="z-index: 104; left: 291px; position: absolute; top: 194px">
        </asp:DropDownList>
        <asp:Button ID="SUBMIT" runat="server" Font-Bold="True" Font-Italic="True" OnClick="SUBMIT_Click"
            Style="z-index: 105; left: 306px; position: absolute; top: 370px" Text="SUBMIT" />
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 106; left: 146px; position: absolute;
            top: 480px" Font-Bold="True" Width="391px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" BackColor="Transparent" Font-Bold="True" Style="z-index: 107;
            left: 133px; position: absolute; top: 241px" Text="E-MAIL"></asp:Label>
        <asp:TextBox ID="EMAIL" runat="server" OnTextChanged="EMAIL_TextChanged1" Style="z-index: 108;
            left: 292px; position: absolute; top: 232px" AutoPostBack="True"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EMAIL"
            ErrorMessage="FORMAT OF EMAIL IS WRONG" Style="z-index: 109; left: 266px; position: absolute;
            top: 264px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <div id="DIV1" style="z-index: 99; left: 67px; width: 539px; position: absolute; top: 84px;
            height: 444px; background-color: lightsteelblue; color: black;" onclick="return DIV1_onclick()">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"
                Height="36px" Style="z-index: 100; left: 38px; position: absolute; top: 22px"
                Text="NEW EMPLOYEE ENTRY" Width="482px"></asp:Label>
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="z-index: 101; left: 65px;
                position: absolute; top: 219px" Text="PRIVILEGE"></asp:Label>
            <asp:RadioButtonList ID="PRIVILEGE" runat="server" Font-Bold="True" 
                Style="z-index: 102; left: 230px; position: absolute; top: 215px" OnSelectedIndexChanged="PRIVILEGE_SelectedIndexChanged">
                <asp:ListItem>ADMINISTRATOR</asp:ListItem>
                <asp:ListItem>EMPLOYEE</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PRIVILEGE"
                ErrorMessage="Select Privilege" Font-Bold="True" Style="z-index: 103; left: 416px;
                position: absolute; top: 225px"></asp:RequiredFieldValidator>
            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red" Style="z-index: 104;
                left: 404px; position: absolute; top: 149px"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EMAIL"
                ErrorMessage="Enter E-MAIL" Font-Bold="True" Style="z-index: 105; left: 394px;
                position: absolute; top: 147px"></asp:RequiredFieldValidator>
            <asp:Button ID="ADD" runat="server" Font-Bold="True" Font-Italic="True" OnClick="ADD_Click"
                Style="z-index: 106; left: 346px; position: absolute; top: 288px" Text="ADD NEW" />
            <asp:Label ID="chk" runat="server" Style="z-index: 108; left: 750px; position: absolute;
                top: 422px"></asp:Label>
        </div>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
