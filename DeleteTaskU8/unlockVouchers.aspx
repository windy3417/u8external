<%@ Page Title="" Language="C#" MasterPageFile="~/Properties/templateReport.Master" AutoEventWireup="true" CodeBehind="unlockVouchers.aspx.cs" Inherits="DeleteTaskU8.unlockVouchers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="AutoID" DataSourceID="SqlDataSourceUnlockVouchers">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFF8DC;">
                <td>
                    <asp:Label ID="AutoIDLabel" runat="server" Text='<%# Eval("AutoID") %>' />
                </td>
                <td>
                    <asp:Label ID="cVouchTypeLabel" runat="server" Text='<%# Eval("cVouchType") %>' />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="cAuthLabel" runat="server" Text='<%# Eval("cAuth") %>' />
                </td>
                <td>
                    <asp:Label ID="cUserLabel" runat="server" Text='<%# Eval("cUser") %>' />
                </td>
                <td>
                    <asp:Label ID="cWorkStationLabel" runat="server" Text='<%# Eval("cWorkStation") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #008A8C; color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:Label ID="AutoIDLabel1" runat="server" Text='<%# Eval("AutoID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cVouchTypeTextBox" runat="server" Text='<%# Bind("cVouchType") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cAuthTextBox" runat="server" Text='<%# Bind("cAuth") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cUserTextBox" runat="server" Text='<%# Bind("cUser") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cWorkStationTextBox" runat="server" Text='<%# Bind("cWorkStation") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="cVouchTypeTextBox" runat="server" Text='<%# Bind("cVouchType") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cAuthTextBox" runat="server" Text='<%# Bind("cAuth") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cUserTextBox" runat="server" Text='<%# Bind("cUser") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cWorkStationTextBox" runat="server" Text='<%# Bind("cWorkStation") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #DCDCDC; color: #000000;">
                <td>
                    <asp:Label ID="AutoIDLabel" runat="server" Text='<%# Eval("AutoID") %>' />
                </td>
                <td>
                    <asp:Label ID="cVouchTypeLabel" runat="server" Text='<%# Eval("cVouchType") %>' />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="cAuthLabel" runat="server" Text='<%# Eval("cAuth") %>' />
                </td>
                <td>
                    <asp:Label ID="cUserLabel" runat="server" Text='<%# Eval("cUser") %>' />
                </td>
                <td>
                    <asp:Label ID="cWorkStationLabel" runat="server" Text='<%# Eval("cWorkStation") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                <th runat="server">AutoID</th>
                                <th runat="server">cVouchType</th>
                                <th runat="server">ID</th>
                                <th runat="server">cAuth</th>
                                <th runat="server">cUser</th>
                                <th runat="server">cWorkStation</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                <td>
                    <asp:Label ID="AutoIDLabel" runat="server" Text='<%# Eval("AutoID") %>' />
                </td>
                <td>
                    <asp:Label ID="cVouchTypeLabel" runat="server" Text='<%# Eval("cVouchType") %>' />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="cAuthLabel" runat="server" Text='<%# Eval("cAuth") %>' />
                </td>
                <td>
                    <asp:Label ID="cUserLabel" runat="server" Text='<%# Eval("cUser") %>' />
                </td>
                <td>
                    <asp:Label ID="cWorkStationLabel" runat="server" Text='<%# Eval("cWorkStation") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
</p>
<asp:SqlDataSource ID="SqlDataSourceUnlockVouchers" runat="server" ConnectionString="<%$ ConnectionStrings:UFDataConnectionString %>" SelectCommand="SELECT AutoID, cVouchType, ID, cAuth, cUser, cWorkStation FROM LockVouch"></asp:SqlDataSource>
</asp:Content>
