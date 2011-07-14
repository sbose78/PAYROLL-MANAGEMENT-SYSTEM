<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SALARY_BIFURCATION.aspx.cs" Inherits="ADMIN_Default" %>

<%@ Register Src="../WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="BASIC" runat="server" Style="z-index: 100; left: 128px; position: absolute;
            top: 119px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="PDA" runat="server" Style="z-index: 101; left: 131px; position: absolute;
            top: 161px" Width="79px"></asp:TextBox>
        <asp:TextBox ID="PHRA" runat="server" Style="z-index: 102; left: 132px; position: absolute;
            top: 215px" Width="77px"></asp:TextBox>
        <asp:TextBox ID="PPF" runat="server" Style="z-index: 103;
            left: 133px; position: absolute; top: 273px" Width="75px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 14px; position: absolute;
            top: 121px" Text="BASIC" Width="72px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 105; left: 15px; position: absolute;
            top: 161px" Text="DA" Width="69px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 19px; position: absolute;
            top: 216px" Text="HRA"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 107; left: 21px; position: absolute;
            top: 274px" Text="PF"></asp:Label>
        &nbsp;
        <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 256px; position: absolute;
            top: 219px" Text="% of BASIC" Width="150px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 109; left: 259px; position: absolute;
            top: 276px" Text="% of GROSS" Width="144px"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 110;
            left: 125px; position: absolute; top: 381px" Text="SAVE" Width="234px" />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PDA" ErrorMessage="0-100"
            MaximumValue="100" MinimumValue="0" Style="z-index: 111; left: 628px; position: absolute;
            top: 163px" SetFocusOnError="True" Type="Double" Width="78px"></asp:RangeValidator>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Style="z-index: 112; left: 191px; position: absolute;
            top: 69px" Text="ADD A NEW SALARY SCALE" Width="226px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="BASIC"
            Display="Dynamic" ErrorMessage="BASIC IS REQUIRED" Height="24px" Style="z-index: 113;
            left: 344px; position: absolute; top: 120px" Width="218px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PDA"
            Display="Dynamic" ErrorMessage="DA IS REQUIRED " Style="z-index: 114; left: 431px;
            position: absolute; top: 160px" Width="148px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PHRA"
            Display="Dynamic" ErrorMessage="HRA IS REQUIRED" Style="z-index: 115; left: 432px;
            position: absolute; top: 216px" Width="161px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PPF"
            Display="Dynamic" ErrorMessage="PF IS REQUIRED" Style="z-index: 116; left: 436px;
            position: absolute; top: 269px" Width="133px"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="PHRA"
            ErrorMessage="0-100" MaximumValue="100" MinimumValue="0" Style="z-index: 117;
            left: 630px; position: absolute; top: 211px" SetFocusOnError="True" Type="Double" Width="98px"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="PPF" ErrorMessage="0-100"
            MaximumValue="100" MinimumValue="0" Style="z-index: 118; left: 632px; position: absolute;
            top: 254px" SetFocusOnError="True" Type="Double" Width="80px"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="BASIC"
            ErrorMessage="GREATER THAN ZERO" Height="1px" MaximumValue="50000" MinimumValue="1"
            Style="z-index: 119; left: 602px; position: absolute; top: 116px" Width="286px" Type="Double"></asp:RangeValidator>
        <asp:Label ID="STATUS" runat="server" Style="z-index: 121; left: 442px; position: absolute;
            top: 380px" Width="342px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
