using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            labelblog.Text = db.Tbl_Blog.Count().ToString();
            labelfilm.Text = db.Tbl_Blog.Where(x => x.Tur == 2).Count().ToString();
            labeldizi.Text = db.Tbl_Blog.Where(x => x.Tur == 1).Count().ToString();
            labelyorum.Text = db.Tbl_Yorumlar.Count().ToString();
            labelanimasyon.Text = db.Tbl_Blog.Where(x => x.Tbl_Tur.Turad == "Animasyon").Count().ToString();
            labelaksiyon.Text = db.Tbl_Blog.Where(x => x.Tbl_Kategori.KateogriAd == "Aksiyon").Count().ToString();
                
        }
    }
}