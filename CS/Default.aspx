<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement custom AutoCollapse behavior in ASPxNavBar</title>
    <script type="text/javascript">
        function Expand(s, e) {
            var expanded = e.group.GetExpanded()
            s.CollapseAll();
            e.group.SetExpanded(!expanded);
            e.cancel = true;
        }
    </script>
</head>
<body>
    <h1>How to implement custom AutoCollapse behavior in ASPxNavBar</h1>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxNavBar ID="ASPxNavBar1" runat="server" AutoCollapse="false">
                <ClientSideEvents HeaderClick="Expand" />
                <Groups>
                    <dx:NavBarGroup Text="Services" Expanded="false">
                        <Items>
                            <dx:NavBarItem Text="Subscriber's services">
                            </dx:NavBarItem>
                            <dx:NavBarItem Text="Basic services">
                            </dx:NavBarItem>
                            <dx:NavBarItem Text="Communication">
                            </dx:NavBarItem>
                        </Items>
                    </dx:NavBarGroup>
                    <dx:NavBarGroup Text="Internet" Expanded="False">
                        <Items>
                            <dx:NavBarItem Text="Internet services">
                            </dx:NavBarItem>
                            <dx:NavBarItem Text="Social networks">
                            </dx:NavBarItem>
                            <dx:NavBarItem Text="Information">
                            </dx:NavBarItem>
                        </Items>
                    </dx:NavBarGroup>
                    <dx:NavBarGroup Text="Devices" Expanded="False">
                        <Items>
                            <dx:NavBarItem Text="Phones">
                            </dx:NavBarItem>
                            <dx:NavBarItem Text="Data cards">
                            </dx:NavBarItem>
                            <dx:NavBarItem Text="Tablets">
                            </dx:NavBarItem>
                        </Items>
                    </dx:NavBarGroup>
                </Groups>
            </dx:ASPxNavBar>
        </div>
    </form>
</body>
</html>
