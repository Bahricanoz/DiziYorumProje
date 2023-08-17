using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Hakkımda : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var hakkımda = db.Tbl_Hakkımızda.ToList();
            Repeater1.DataSource = hakkımda;
            Repeater1.DataBind();
        }
    }
}