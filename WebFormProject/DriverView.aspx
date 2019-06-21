<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DriverView.aspx.cs" Inherits="WebFormProject.DriverView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel runat="server">
                <ContentTemplate>
            <asp:TextBox ID="lang" runat="server" ></asp:TextBox>
            <asp:TextBox ID="lat" runat="server" ></asp:TextBox>

            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="3000"></asp:Timer>
                    </ContentTemplate>
            </asp:UpdatePanel>
            <script>
                setInterval(function () {
                    function getPosition(position) {
                        console.log(position.coords.latitude);
                        document.getElementById("lat").value = position.coords.latitude;
                        document.getElementById("lang").value = position.coords.longitude;

                    }

                    navigator.geolocation.getCurrentPosition(getPosition);
                }, 2500)
            </script>
        </div>
    </form>
</body>
</html>
