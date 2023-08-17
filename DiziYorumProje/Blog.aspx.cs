using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Blog : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            // blog listesi
            var blog = db.Tbl_Blog.ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            //var sonblog = db.Tbl_Blog.Take(5).ToList(); İLK 5 GELİYOR
            var sonblog = db.Tbl_Blog.OrderByDescending(x=>x.Id).Take(5).ToList(); // son 5 blog
            Repeater2.DataSource = sonblog;
            Repeater2.DataBind();
            // kategori listesi
            var kategori = db.Tbl_Kategori.ToList();
            Repeater3.DataSource = kategori;
            Repeater3.DataBind();
            // son 3 yorum listesi
            var yorum = (from x in db.Tbl_Yorumlar
                         select new
                         {
                             x.Id,
                             x.Name,
                             x.Tbl_Blog.Baslik
                         }).OrderByDescending(x => x.Id).Take(3).ToList();
            Repeater4.DataSource = yorum;
            Repeater4.DataBind();

            //tür listesi
            var türler = db.Tbl_Tur.ToList();
            Repeater5.DataSource = türler;
            Repeater5.DataBind();
        }
    }
}