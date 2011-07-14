<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Salary.aspx.cs" Inherits="_Default" %>

<%@ Register Src="../WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function alert_pdf()
{
    window.alert("YOUR SALARY REPORT HAS BEEN GENERATED under C:/ ");

}

function DIV1_onclick() {

}

function DIV2_onclick() {

}

function DIV7_onclick() {

}

// ]]>
</script>
</head>
<body bgcolor="#e7ffff">
    <form id="form1" runat="server">
    <div>
        <div id="DIV1" style="z-index: 100; left: 2px; width: 1000px; position: absolute;
            top: 37px; height: 118px; background-color: #333399; text-decoration: line-through" onclick="return DIV1_onclick()">
        </div>
        <div style="z-index: 101; left: 25px; width: 957px; position: absolute; top: 215px;
            height: 400px; background-color: #99ffcc">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Style="z-index: 100;
                left: 433px; position: absolute; top: 34px" Text="Salary Report"></asp:Label>
            &nbsp; &nbsp;&nbsp;
            <div style="z-index: 109; left: 112px; width: 716px; position: absolute; top: 104px;
                height: 230px; background-color: #009999" id="DIV7" onclick="return DIV7_onclick()">
                <asp:Label ID="Basic_level" runat="server" Font-Bold="True" Style="z-index: 100;
                    left: 37px; position: absolute; top: 16px" Text="BASIC"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 101; left: 38px;
                    position: absolute; top: 49px" Text="HRA"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 102; left: 38px;
                    position: absolute; top: 84px" Text="DA"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="z-index: 103; left: 38px;
                    position: absolute; top: 121px" Text="GROSS"></asp:Label>
                <asp:Label ID="PF_level" runat="server" Font-Bold="True" Style="z-index: 104; left: 38px;
                    position: absolute; top: 157px" Text="PF"></asp:Label>
                <asp:Label ID="NETLEVEL" runat="server" Font-Bold="True" Style="z-index: 106; left: 18px;
                    position: absolute; top: 198px" Text="NET AMOUNT"></asp:Label>
            </div><div id="DIV2" style="z-index: 110; left: 246px; width: 580px; position: absolute;
                top: 106px; height: 36px; background-color: #ccffcc;" onclick="return DIV2_onclick()">
                &nbsp;
                <div id="Div3" style="z-index: 102; left: 0px; width: 580px; position: absolute;
                top: 38px; height: 36px; background-color: #ccffcc;" onclick="return DIV2_onclick()">
                    &nbsp;<div id="Div4" style="z-index: 102; left: 0px; width: 580px; position: absolute;
                top: 38px; height: 36px; background-color: #ccffcc;" onclick="return DIV2_onclick()">
                        &nbsp;<div id="Div5" style="z-index: 102; left: 0px; width: 580px; position: absolute;
                top: 38px; height: 36px; background-color: #ccffcc;" onclick="return DIV2_onclick()">
                            &nbsp;<div id="Div6" style="z-index: 103; left: 0px; width: 580px; position: absolute;
                top: 38px; height: 36px; background-color: #ccffcc;" onclick="return DIV2_onclick()"><div id="Div8" style="z-index: 102; left: 0px; width: 580px; position: absolute;
                top: 38px; height: 36px; background-color: #ccffcc;" onclick="return DIV2_onclick()">
                    <asp:Label ID="NET_DATA" runat="server" Style="z-index: 100; left: 98px; position: absolute;
                        top: 3px" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    <asp:Label ID="BASIC_REMARK" runat="server" Style="z-index: 102; left: 437px; position: absolute;
                        top: 5px" Text="Label"></asp:Label>
                </div>
                                <asp:Label ID="PF_DATA" runat="server" Style="z-index: 100; left: 111px; position: absolute;
                                    top: 8px" Text="Label"></asp:Label>
                                <asp:Label ID="PF_REMARK" runat="server" Style="z-index: 103; left: 438px; position: absolute;
                                    top: 7px" Text="Label"></asp:Label>
                            </div>
                            <asp:Label ID="GROSS_DATA" runat="server" Style="z-index: 100; left: 111px; position: absolute;
                                top: 7px" Text="Label"></asp:Label>
                            <asp:Label ID="GROSS_REMARK" runat="server" Style="z-index: 101; left: 437px; position: absolute;
                                top: 6px" Text="Label"></asp:Label>
                        </div>
                        <asp:Label ID="DA_DATA" runat="server" Style="z-index: 100; left: 109px; position: absolute;
                            top: 8px" Text="Label"></asp:Label>
                        <asp:Label ID="DA_REMARK" runat="server" Style="z-index: 103; left: 437px; position: absolute;
                            top: 7px" Text="Label"></asp:Label>
                    </div>
                    <asp:Label ID="HRA_DATA" runat="server" Style="z-index: 100; left: 109px; position: absolute;
                        top: 7px" Text="Label"></asp:Label>
                    <asp:Label ID="HRA_REMARK" runat="server" Style="z-index: 103; left: 438px; position: absolute;
                        top: 9px" Text="Label"></asp:Label>
                </div>
                <asp:Label ID="BASIC_DATA" runat="server" Style="z-index: 100; left: 103px; position: absolute;
                    top: 10px" Text="Yet to be dispatched"></asp:Label>
            </div>
            <asp:Label ID="name" runat="server" Font-Bold="True" Font-Size="X-Large" Style="z-index: 101;
                left: 0px; position: absolute; top: -153px" Text="Name" ForeColor="White"></asp:Label>
            <asp:Label ID="Scale" runat="server" Font-Bold="True" Style="z-index: 102; left: 3px;
                position: absolute; top: -100px" Text="Scale" ForeColor="White"></asp:Label>
            <asp:Label ID="Name_data" runat="server" Font-Size="XX-Large" Style="z-index: 103;
                left: 85px; position: absolute; top: -159px" Text="0" ForeColor="White"></asp:Label>
            <asp:Label ID="scale_data" runat="server" Style="z-index: 104; left: 85px; position: absolute;
                top: -102px" Text="Label" ForeColor="White"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="z-index: 105; left: 293px;
                position: absolute; top: 355px" Text="Total Amount Payable:"></asp:Label>
            <asp:Label ID="Total" runat="server" Font-Bold="True" Font-Size="XX-Large" Style="z-index: 106;
                left: 546px; position: absolute; top: 344px" Text="0"></asp:Label>
            <asp:Button ID="Button1" runat="server" Style="z-index: 107; left: 792px; position: absolute;
                top: -107px" Text="Print Report" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Style="z-index: 111; left: 792px; position: absolute;
                top: -152px" Text="Generate PDF" OnClick="Button2_Click" OnClientClick="alert_pdf()" />
        </div>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    </div>
    </form>
</body>
</html>
