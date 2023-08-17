using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;
namespace DiziYorumProje.AdminSayfalar
{
    public partial class Blog : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            ////blog listesi
            //var blog = db.Tbl_Blog.ToList();
            //Repeater1.DataSource = blog;
            //Repeater1.DataBind();

            var blog = (from x in db.Tbl_Blog
                        select new
                        {
                            x.Id,
                            x.Baslik,
                            x.İcerik,
                            x.Resim,
                            x.Tarih,
                            x.Tbl_Tur.Turad,
                            x.Tbl_Kategori.KateogriAd,
                        }).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();
        }
    }
}