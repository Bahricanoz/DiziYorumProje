using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class AdminEkle : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            //admin ekleme
            Tbl_Admin t = new Tbl_Admin();
            t.kullaniciadi = txtkullaniciadi.Text;
            t.isim = txtisim.Text;
            t.sifre = txtsifre.Text;
            db.Tbl_Admin.Add(t);
            db.SaveChanges();
            Response.Redirect("Admin.aspx");
        }
    }
}