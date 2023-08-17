using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class AdminYorum : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            ////yorum listesi
            //var yorum = db.Tbl_Yorumlar.ToList();
            //Repeater1.DataSource = yorum;
            //Repeater1.DataBind();

            // yorum listesinde blog adı getirme
            var yorum = (from x in db.Tbl_Yorumlar
                         select new
                         {
                             x.Id,
                             x.Name,
                             x.Mail,
                             x.İcerik,
                             x.Tbl_Blog.Baslik
                         }).ToList();
            Repeater1.DataSource = yorum;
            Repeater1.DataBind();
        }
    }
}