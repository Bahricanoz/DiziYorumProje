using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;
namespace DiziYorumProje.AdminSayfalar
{
    public partial class AdminKategori : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var kat = db.Tbl_Kategori.ToList();
            Repeater1.DataSource = kat;
            Repeater1.DataBind();
        }
    }
}