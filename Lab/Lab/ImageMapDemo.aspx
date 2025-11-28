<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageMapDemo.aspx.cs" Inherits="Lab.ImageMapDemo" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image Map Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/imageWT.jpeg" OnClick="ImageMap1_Click">
            <asp:RectangleHotSpot AlternateText="Sea" HotSpotMode="PostBack" Left="0" Top="143" Right="186" Bottom="220" PostBackValue="Sea" />

            <asp:CircleHotSpot AlternateText="Sun" HotSpotMode="PostBack" X="93" Y="98" Radius="15" PostBackValue="Sun" />

            <asp:PolygonHotSpot AlternateText="Mountain" HotSpotMode="PostBack" 
                Coordinates="43,140,90,114,147,141" PostBackValue="Mountain" />
        </asp:ImageMap>

        <br /><br />
        <asp:Label ID="lblResult" runat="server" Font-Bold="true"></asp:Label>
    </form>
</body>
</html>


