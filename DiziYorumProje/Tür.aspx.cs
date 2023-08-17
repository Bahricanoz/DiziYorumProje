using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Tür : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["Id"]);
            var tür = db.Tbl_Blog.Where(x => x.Tur == id).ToList();
            Repeater1.DataSource = tür;
            Repeater1.DataBind();

            //sonbloglar

            var sonblog = db.Tbl_Blog.OrderByDescending(x => x.Id).Take(5).ToList();
            Repeater2.DataSource = sonblog;
            Repeater2.DataBind();

            //tür isimleri listesi
            var türad = db.Tbl_Tur.ToList();
            Repeater5.DataSource = türad;
            Repeater5.DataBind();

            // kategori listesi isimleri
            var ktg = db.Tbl_Kategori.ToList();
            Repeater3.DataSource = ktg;
            Repeater3.DataBind();

            // son 3 yorum
            var sonyorum = (from x in db.Tbl_Yorumlar
                            select new
                            {
                                x.Id,
                                x.Name,
                                x.Tbl_Blog.Baslik
                            }).OrderByDescending(x => x.Id).Take(3).ToList();
            Repeater4.DataSource = sonyorum;
            Repeater4.DataBind();
        }
    }
}