<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">Name:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="*Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email Address</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Cabin Type:</td>
            <td class="auto-style3">
                <asp:CheckBox ID="chkGrizzly" runat="server" Checked="True" Font-Size="Smaller" Text="Grizzly (3 Bedroom) $99" />
                <asp:CheckBox ID="chkPolar" runat="server" Font-Size="Smaller" Text="Polar (2 Bedroom) $89" />
                <asp:CheckBox ID="chkKodiak" runat="server" Font-Size="Smaller" Text="Kodiak (1 Bedroom) $79" />
            </td>
            <td>
                <asp:Label ID="lblCabinError" runat="server" Text="*Select a Cabin" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Night(s):</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlNights" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Check-in Date:</td>
            <td class="auto-style3">
                <asp:Calendar ID="cldArrival" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                <br />
                <asp:Label ID="lblCalendarError" runat="server" Text="*Select a Valid Date" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblReservation" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 103px;
        }
        .auto-style3 {
            width: 255px;
        }
        .auto-style4 {
            width: 103px;
            height: 47px;
        }
        .auto-style5 {
            width: 255px;
            height: 47px;
        }
        .auto-style6 {
            height: 47px;
        }
    </style>
</asp:Content>
