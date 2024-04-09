<%@ Page Title="EmailList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmailList.aspx.cs" Inherits="ListViewState.EmailList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table style="width:100%;">
            <tr>
                <td class="text-end">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-end" style="height: 25px"></td>
                <td style="height: 25px">
                    <asp:Button ID="btSave" runat="server" OnClick="btSave_Click" Text="Save" />
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td class="text-end">
                    <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" />
                </td>
                <td>
                    <asp:ListBox ID="listShow" runat="server" Width="228px"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
