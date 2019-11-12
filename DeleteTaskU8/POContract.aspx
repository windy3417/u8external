<%@ Page Title="" Language="C#" MasterPageFile="~/Properties/templateReport.Master" AutoEventWireup="true" CodeBehind="POContract.aspx.cs" Inherits="DeleteTaskU8.POContract" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForContent" runat="server">
 
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourcePOContract">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="单据日期Label" runat="server" Text='<%# Eval("单据日期") %>' />
            </td>
            <td>
                <asp:Label ID="采购订单号Label" runat="server" Text='<%# Eval("采购订单号") %>' />
            </td>
            <td>
                <asp:Label ID="供应商编码Label" runat="server" Text='<%# Eval("供应商编码") %>' />
            </td>
            <td>
                <asp:Label ID="供应商名称Label" runat="server" Text='<%# Eval("供应商名称") %>' />
            </td>
            <td>
                <asp:Label ID="币种Label" runat="server" Text='<%# Eval("币种") %>' />
            </td>
            <td>
                <asp:Label ID="原币合同总额Label" runat="server" Text='<%# Eval("原币合同总额") %>' />
            </td>
            <td>
                <asp:Label ID="本币合同总额Label" runat="server" Text='<%# Eval("本币合同总额") %>' />
            </td>
            <td>
                <asp:Label ID="合同名称Label" runat="server" Text='<%# Eval("合同名称") %>' />
            </td>
            <td>
                <asp:Label ID="经办人Label" runat="server" Text='<%# Eval("经办人") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
            </td>
            <td>
                <asp:TextBox ID="单据日期TextBox" runat="server" Text='<%# Bind("单据日期") %>' />
            </td>
            <td>
                <asp:TextBox ID="采购订单号TextBox" runat="server" Text='<%# Bind("采购订单号") %>' />
            </td>
            <td>
                <asp:TextBox ID="供应商编码TextBox" runat="server" Text='<%# Bind("供应商编码") %>' />
            </td>
            <td>
                <asp:TextBox ID="供应商名称TextBox" runat="server" Text='<%# Bind("供应商名称") %>' />
            </td>
            <td>
                <asp:TextBox ID="币种TextBox" runat="server" Text='<%# Bind("币种") %>' />
            </td>
            <td>
                <asp:TextBox ID="原币合同总额TextBox" runat="server" Text='<%# Bind("原币合同总额") %>' />
            </td>
            <td>
                <asp:TextBox ID="本币合同总额TextBox" runat="server" Text='<%# Bind("本币合同总额") %>' />
            </td>
            <td>
                <asp:TextBox ID="合同名称TextBox" runat="server" Text='<%# Bind("合同名称") %>' />
            </td>
            <td>
                <asp:TextBox ID="经办人TextBox" runat="server" Text='<%# Bind("经办人") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
            <td>
                <asp:TextBox ID="单据日期TextBox" runat="server" Text='<%# Bind("单据日期") %>' />
            </td>
            <td>
                <asp:TextBox ID="采购订单号TextBox" runat="server" Text='<%# Bind("采购订单号") %>' />
            </td>
            <td>
                <asp:TextBox ID="供应商编码TextBox" runat="server" Text='<%# Bind("供应商编码") %>' />
            </td>
            <td>
                <asp:TextBox ID="供应商名称TextBox" runat="server" Text='<%# Bind("供应商名称") %>' />
            </td>
            <td>
                <asp:TextBox ID="币种TextBox" runat="server" Text='<%# Bind("币种") %>' />
            </td>
            <td>
                <asp:TextBox ID="原币合同总额TextBox" runat="server" Text='<%# Bind("原币合同总额") %>' />
            </td>
            <td>
                <asp:TextBox ID="本币合同总额TextBox" runat="server" Text='<%# Bind("本币合同总额") %>' />
            </td>
            <td>
                <asp:TextBox ID="合同名称TextBox" runat="server" Text='<%# Bind("合同名称") %>' />
            </td>
            <td>
                <asp:TextBox ID="经办人TextBox" runat="server" Text='<%# Bind("经办人") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="单据日期Label" runat="server" Text='<%# Eval("单据日期") %>' />
            </td>
            <td>
                <asp:Label ID="采购订单号Label" runat="server" Text='<%# Eval("采购订单号") %>' />
            </td>
            <td>
                <asp:Label ID="供应商编码Label" runat="server" Text='<%# Eval("供应商编码") %>' />
            </td>
            <td>
                <asp:Label ID="供应商名称Label" runat="server" Text='<%# Eval("供应商名称") %>' />
            </td>
            <td>
                <asp:Label ID="币种Label" runat="server" Text='<%# Eval("币种") %>' />
            </td>
            <td>
                <asp:Label ID="原币合同总额Label" runat="server" Text='<%# Eval("原币合同总额") %>' />
            </td>
            <td>
                <asp:Label ID="本币合同总额Label" runat="server" Text='<%# Eval("本币合同总额") %>' />
            </td>
            <td>
                <asp:Label ID="合同名称Label" runat="server" Text='<%# Eval("合同名称") %>' />
            </td>
            <td>
                <asp:Label ID="经办人Label" runat="server" Text='<%# Eval("经办人") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">单据日期</th>
                            <th runat="server">采购订单号</th>
                            <th runat="server">供应商编码</th>
                            <th runat="server">供应商名称</th>
                            <th runat="server">币种</th>
                            <th runat="server">原币合同总额</th>
                            <th runat="server">本币合同总额</th>
                            <th runat="server">合同名称</th>
                            <th runat="server">经办人</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="单据日期Label" runat="server" Text='<%# Eval("单据日期") %>' />
            </td>
            <td>
                <asp:Label ID="采购订单号Label" runat="server" Text='<%# Eval("采购订单号") %>' />
            </td>
            <td>
                <asp:Label ID="供应商编码Label" runat="server" Text='<%# Eval("供应商编码") %>' />
            </td>
            <td>
                <asp:Label ID="供应商名称Label" runat="server" Text='<%# Eval("供应商名称") %>' />
            </td>
            <td>
                <asp:Label ID="币种Label" runat="server" Text='<%# Eval("币种") %>' />
            </td>
            <td>
                <asp:Label ID="原币合同总额Label" runat="server" Text='<%# Eval("原币合同总额") %>' />
            </td>
            <td>
                <asp:Label ID="本币合同总额Label" runat="server" Text='<%# Eval("本币合同总额") %>' />
            </td>
            <td>
                <asp:Label ID="合同名称Label" runat="server" Text='<%# Eval("合同名称") %>' />
            </td>
            <td>
                <asp:Label ID="经办人Label" runat="server" Text='<%# Eval("经办人") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourcePOContract" runat="server" ConnectionString="<%$ ConnectionStrings:UFManageConnectionString %>" SelectCommand="SELECT * FROM [ximai_v_POattachment]"></asp:SqlDataSource>
</asp:Content>
