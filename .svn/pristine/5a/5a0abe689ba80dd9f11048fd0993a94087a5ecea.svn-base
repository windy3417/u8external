using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 成本管理.DAL;

namespace DeleteTaskU8
{
    public partial class _default : System.Web.UI.Page
    {
        string U8TaskID;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 删除所有任务
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonDeleteTask_Click(object sender, EventArgs e)
        {
            //string stringSql = "delete from ua_task where cacc_id='017'";
            string stringSql = "delete from ua_task ";
            sqlHelper.ExecuteNonQuery(stringSql);
            //Response.Write("任务删除成功");
            Response.Write("<script languge='javascript'>alert('删除成功'); window.location.href='DeletTask.aspx'</script>");
            GridViewTaskList.DataBind();
            

        }

        protected void GridViewTaskList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        /// <summary>
        /// 按行删除任务
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonDeleteTaskOnID_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < this.GridViewTaskList.Rows.Count; i++)
            {
                
                CheckBox chk=(CheckBox) GridViewTaskList.Rows[i].FindControl("CheckBoxSelectTask");
                if (chk.Checked)
                {
                    //U8TaskID = this.GridViewTaskList.DataKeyNames[i];
                    U8TaskID = this.GridViewTaskList.Rows[i].Cells[4].Text;
                    string stringSql = "delete from ua_task where cTaskId= " +U8TaskID;
                    sqlHelper.ExecuteNonQuery(stringSql);
                    
                }
               
            }
            //Response.Write("任务删除成功");
            Response.Write("<script languge='javascript'>alert('删除指定任务成功'); window.location.href='DeletTask.aspx'</script>");
            GridViewTaskList.DataBind();
        }
            
            
    }
}