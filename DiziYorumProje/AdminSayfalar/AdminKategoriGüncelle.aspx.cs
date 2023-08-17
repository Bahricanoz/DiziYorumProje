using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class AdminKategoriGüncelle : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            if (Page.IsPostBack == false)
            {
                var degerler = db.Tbl_Kategori.Find(id);
                txtkatıd.Text = degerler.Id.ToString();
                txtkatadd.Text = degerler.KateogriAd;
            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["Id"]);
            var kat = db.Tbl_Kategori.Find(y);
            kat.KateogriAd = txtkatadd.Text;
            db.SaveChanges();
            Response.Redirect("AdminKategori.aspx");

        }
    }
}