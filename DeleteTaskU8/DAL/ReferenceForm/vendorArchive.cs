using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using 成本管理.DAL;

namespace DeleteTaskU8.DAL.ReferenceForm
{
    public class vendorArchive
    {
        public DataTable getVendorArchive()
        {
            string sql = "select * from vendor";
            DataTable dt = sqlHelper.GetDataTable(sql);
            return dt;
        }
    }
}