<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="User_Login" %>

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
<body>
    <form id="form1" runat="server">
    
    <div>
    
        <uc1:WebUserControl ID="WebUserControl1" runat="server" OnLoad="WebUserControl1_Load" />
    
        <div style="z-index: 100; left: 70px; width: 496px; position: absolute; top: 138px;
            height: 390px; background-color: antiquewhite" id="DIV1" onclick="return DIV1_onclick()">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="z-index: 100; left: 101px;
                position: absolute; top: 110px" Text="Employee Id"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 101; left: 102px;
                position: absolute; top: 162px" Text="Password" Width="81px"></asp:Label>
            <asp:TextBox ID="EMPID" runat="server" Style="z-index: 102; left: 243px; position: absolute;
                top: 109px"></asp:TextBox>
            <asp:TextBox ID="PASS" runat="server" Style="z-index: 103; left: 242px; position: absolute;
                top: 161px" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 104;
                left: 297px; position: absolute; top: 226px" Text="SignIn" />
            &nbsp;
            <asp:Label ID="Login" runat="server" Style="z-index: 105; left: 115px; position: absolute;
                top: 195px" Text="Label"></asp:Label>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EMPID"
                ErrorMessage="EMPLOYEE ID REQUIRED" Style="z-index: 106; left: 237px; position: absolute;
                top: 128px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PASS"
                ErrorMessage="PASSWORD REQUIRED" Style="z-index: 107; left: 238px; position: absolute;
                top: 186px"></asp:RequiredFieldValidator>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large"
                Font-Underline="True" Style="z-index: 108; left: 85px; position: absolute; top: 29px"
                Text="USER     AUTHENTICATION" Width="371px"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/forgotPass.aspx"
                Style="z-index: 109; left: 72px; position: absolute; top: 291px">FORGOT PASSWORD</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/forgotPass.aspx"
                Style="z-index: 111; left: 298px; position: absolute; top: 289px">CHANGE PASSWORD</asp:HyperLink>
    </div>
        
    </div>
    </form>
</body>
</html>
