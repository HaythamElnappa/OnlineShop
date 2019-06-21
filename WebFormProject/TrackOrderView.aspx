<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackOrderView.aspx.cs" Inherits="WebFormProject.TrackOrderView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Always set the map height explicitly to define the size of the div
                     * element that contains the map. */
        #map {
            height: 100%;
        }

        /* Optional: Makes the sample page fill the window. */
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox id="lat" runat="server"></asp:TextBox>
            <asp:TextBox ID="lang" runat="server"></asp:TextBox>


            <div id="map"></div>



            <script>

                // ______________________________________________________________________________________
                window.navigator.geolocation.getCurrentPosition(succes, fail)

                function succes(position) {
                    initMap(position.coords)
                }


                function fail(e) {
                    alert(e.message);

                }
                // _____________________________________________________________________________________

                var map;
                function initMap(e) {
                    map = new google.maps.Map(document.getElementById('map'), {
                        center: { lat: parseInt(document.getElementById("lat")), lng: parseInt(document.getElementById("lang")) },
                        zoom: 8
                    });
                }
            </script>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJLQdul-88M-n-KXaDx4_8F6TJdqQwrvA" async defer></script>
        </div>
    </form>
</body>
</html>
