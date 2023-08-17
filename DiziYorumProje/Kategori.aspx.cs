using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Kategori : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //tıklanan kategoriye göre film veya dizilerin listelenmesi
            int id = Convert.ToInt16(Request.QueryString["Id"]);
            var kat = db.Tbl_Blog.Where(x => x.Kategori == id).ToList();
            Repeater1.DataSource = kat;
            Repeater1.DataBind();

            //son bloglar
            var sonblog = db.Tbl_Blog.OrderByDescending(x => x.Id).Take(5).ToList();
            Repeater2.DataSource = sonblog;
            Repeater2.DataBind();

            //türler
            var tur = db.Tbl_Tur.ToList();
            Repeater5.DataSource = tur;
            Repeater5.DataBind();

            //kategoriler
            var ktgr = db.Tbl_Kategori.ToList();
            Repeater3.DataSource = ktgr;
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