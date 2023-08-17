using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Adminyorumsilme : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);

            var yorum= db.Tbl_Yorumlar.Find(id);
            db.Tbl_Yorumlar.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("AdminYorum.aspx");
        }
    }
}