<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomCalendar.aspx.cs" Inherits="Lab.CustomCalendar" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom Calendar</title>
    <style>
        .holiday { background-color: yellow; }
        .weekend { background-color: lightblue; }
        .sessional { background-color: lightpink; }
        .external { background-color: orange; }
        .legend-box {
            display: inline-block;
            width: 15px;
            height: 15px;
            margin-right: 5px;
            border: 1px solid black;
        }
        .legend { margin-top: 10px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Calendar ID="Calendar1" runat="server" 
            OnDayRender="Calendar1_DayRender" 
            OnSelectionChanged="Calendar1_SelectionChanged"
            FirstDayOfWeek="Sunday">
        </asp:Calendar>
        <br />

        <!-- Display selected date and days left -->
        <asp:TextBox ID="txtDate" runat="server" ReadOnly="true"></asp:TextBox><br />
        <asp:Label ID="lblInfo" runat="server"></asp:Label>

        <!-- Legend for colors -->
        <div class="legend">
            <div class="legend-box" style="background-color: lightpink;"></div> Sessional Exam Week <br />
            <div class="legend-box" style="background-color: orange;"></div> External Exam Week <br />
            <div class="legend-box" style="background-color: yellow;"></div> Holiday <br />
            <div class="legend-box" style="background-color: lightblue;"></div> Weekend
        </div>
    </form>
</body>
</html>

