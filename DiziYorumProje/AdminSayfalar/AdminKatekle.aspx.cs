using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;


namespace DiziYorumProje.AdminSayfalar
{
    public partial class AdminKatekle : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            //kategori ekleme
            Tbl_Kategori t = new Tbl_Kategori();
            t.KateogriAd = txtkatad.Text;
            db.Tbl_Kategori.Add(t);
            db.SaveChanges();
            Response.Redirect("AdminKategori.aspx");
        }
    }
}