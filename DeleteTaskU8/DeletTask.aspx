<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeletTask.aspx.cs" Inherits="DeleteTaskU8._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>U8任务清单</title>
    <style type="text/css">
        .divForm
        {
            position: absolute;/*绝对定位*/
            width: 660px;
            height: 100px;
            text-align: center;/*(让div中的内容居中)*/
            /*top: 50%;*/
            left: 50%;
            margin-top: 100px;
            margin-left: -330px;
            
        }

        .divHead
        { 
            position: absolute;/*绝对定位*/
            width: 739px;
            height: 100px;
            text-align: center;/*(让div中的内容居中)*/
            /*top: 50%;*/
            left: 50%;
            margin-top: 30px;
            margin-left: -330px;
            top: 14px;
        }
        .divButton
        { 
            /*position: absolute;/*绝对定位*/
            position :relative ;
       
            text-align: center;/*(让div中的内容居中)*/
            /*top: 50%;*/
            left: 50%;
            margin-top: 20px;
            margin-left: 90px;
            top: 14px;
        }
</style>

</head>
<body>
    <div class ="divHead">
        <h1 style="height: 28px; width: 734px" >U8任务清单</h1>
    <hr />
    </div> 
    
    <div class ="divForm ">
    <form id="form1" runat="server">
        <asp:GridView ID="GridViewTaskList" runat="server" 
            AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSourceU8task"
            CellPadding="4" ForeColor="#333333" GridLines="None"
            Width="741px" OnSelectedIndexChanged="GridViewTaskList_SelectedIndexChanged" DataKeyNames="任务编号">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
          
                
                <asp:TemplateField HeaderText="选择">
                    <ItemTemplate>
                        <%--<asp:CheckBox ID="CheckBoxSelectTask" runat="server" Checked='<%# Bind("任务编号") %>' />--%>
                        <asp:CheckBox ID="CheckBoxSelectTask" runat="server" />

                    </ItemTemplate>       
                    
                </asp:TemplateField>
                <asp:BoundField DataField="账套号" HeaderText="账套号" SortExpression="账套号" />
                <asp:BoundField DataField="用户编号" HeaderText="用户编号" SortExpression="用户编号" />
                <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                <asp:BoundField DataField="任务编号" HeaderText="任务编号" SortExpression="任务编号" ReadOnly="True" />
                <asp:BoundField DataField="正在执行操作" HeaderText="正在执行操作" SortExpression="正在执行操作" />
                <asp:BoundField DataField="进入时间" HeaderText="进入时间" SortExpression="进入时间" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceU8task" runat="server" ConnectionString="<%$ ConnectionStrings:UFSystemConnectionString %>" 
            SelectCommand="SELECT aa.cacc_id as 账套号,aa.cUser_Id AS 用户编号, dd.cUser_Name AS 用户名, aa.cTaskId AS 任务编号, bb.cAuth_Name AS 正在执行操作, 
            cc.dInTime AS 进入时间, CASE cc.TaskState WHEN 0 THEN '正常' WHEN 1 THEN '正常' WHEN 12 THEN '正常' END AS 任务状态 
            FROM ua_Task AS aa LEFT OUTER JOIN UA_Auth AS bb ON aa.cAuth_Id = bb.cAuth_Id 
            LEFT OUTER JOIN UA_TaskLog AS cc ON cc.cTaskId = aa.cTaskId LEFT OUTER JOIN UA_User AS dd ON aa.cUser_Id = dd.cUser_Id">

        </asp:SqlDataSource>
        <br />  
        <div class ="divButton"> 
            <asp:Button ID="ButtonDeleteTask" runat="server" Text="删除所有任务" OnClick="ButtonDeleteTask_Click"  />
            &nbsp &nbsp &nbsp &nbsp
            <asp:Button ID="ButtonDeleteTaskOnID" runat="server" Text="删除选定任务" OnClick="ButtonDeleteTaskOnID_Click" />
       </div>
    </form>
    </div>
    <p>
        
    </p>
    
</body>
</html>
