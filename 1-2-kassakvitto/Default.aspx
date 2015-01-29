<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>1-2-kassakvitto</title>

    <%: Styles.Render("~/Content/styles") %>
    <%: Scripts.Render("~/Content/javascript") %>


</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server" defaultbutton="CalculateButton">

    <div text="Var god ange ett värde">
        <asp:Label ID="UserInputLabel" runat="server" Text="Total köpesumma:" /><br />
        <asp:TextBox ID="UserInputTextbox" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="UserInputTextbox" Text="Var god ange total köpesumma." CssClass="error-message" Display="Dynamic" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="UserInputTextbox" Operator="GreaterThan" Type="Double" ValueToCompare="0" CssClass="error-message" Display="Dynamic">Köpesumman måste vara ett tal högre än 0.</asp:CompareValidator>

        <br />

        <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt" OnClick="CalculateButton_Click" />
    </div>

    <asp:Panel ID="ReceiptContainer" runat="server" Visible="false">
        <h3>Lilla Affär'n</h3>
        <div class="header-text">En del av stora affären</div>
        <div class="info-text">
            Tel: 070 007 007<br />
            Öppettider 8-18<br />
        </div>
            ---------------------------------
            <table>
                <tr>
                    <td>Totalt:</td>
                    <td class="align-right">
                        <asp:Literal ID="SubtotalLiteral" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Rabattsats</td>
                    <td class="align-right">
                        <asp:Literal ID="DiscountRateLiteral" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Rabatt</td>
                    <td class="align-right">
                        <asp:Literal ID="MoneyOffLiteral" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Att betala</td>
                    <td class="align-right">
                        <asp:Literal ID="TotalLiteral" runat="server" />
                    </td>
                </tr>
            </table>

            ---------------------------------
            <div class="info-text">
                ORG NR: 202099-1234
                Välkommen åter!
            </div>

    </asp:Panel>

    </form>
</body>
</html>
