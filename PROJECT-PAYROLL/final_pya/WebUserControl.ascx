<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Height="24px" Orientation="Horizontal"
            StaticSubMenuIndent="10px" Style="z-index: 100; left: 35px; position: absolute;
            top: 28px" Width="821px" OnMenuItemClick="Menu1_MenuItemClick">
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <StaticSelectedStyle BackColor="#507CD1" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <Items>
                <asp:MenuItem Text="ADMINISTRATOR ONLY" Value="ADMINISTRATOR ONLY">
                    <asp:MenuItem Text="ADD NEW EMPLOYEE" Value="ADD NEW EMPLOYEE" NavigateUrl="~/HOME_DETAIL/DETAIL.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="SHOW/EDIT PROFILE" Value="SHOW/EDIT PROFILE" NavigateUrl="~/HOME_DETAIL/EMPLOYEEEDIT.ASPX"></asp:MenuItem>
                    <asp:MenuItem Text="SHOW SALARY" Value="SHOW SALARY" NavigateUrl="~/User/showSalary.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="DISPATCH SALARY" Value="DISPATCH SALARY" NavigateUrl="~/ADMIN/DISPATCH_SALARY.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="ADD NEW SCALE" Value="ADD NEW SCALE" NavigateUrl="~/ADMIN/SALARY_BIFURCATION.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="INCREMENT" Value="INCREMENT" NavigateUrl="~/Increment/increment.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="EMPLOYEE" Value="EMPLOYEE">
                    <asp:MenuItem Text="SHOW/EDIT PROFILE" Value="SHOW/EDIT PROFILE" NavigateUrl="~/HOME_DETAIL/EMPLOYEEEDIT.ASPX"></asp:MenuItem>
                    <asp:MenuItem Text="SHOW SALARY" Value="SHOW SALARY" NavigateUrl="~/User/showSalary.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="CHANGE PASSWORD" Value="CHANGE PASSWORD" NavigateUrl="~/User/changePass.aspx"></asp:MenuItem>
                <asp:MenuItem Text="LOGOUT" Value="LOGOUT"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
        </asp:Menu>
    