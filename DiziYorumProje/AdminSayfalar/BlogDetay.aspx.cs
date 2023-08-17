using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            if (Page.IsPostBack== false)
            {
                var deger = db.Tbl_Blog.Find(id);
                txtblog.Text = deger.Baslik;
                txticerik.Text = deger.İcerik;
                txtkat.Text = deger.Tbl_Kategori.KateogriAd;
                txttür.Text = deger.Tbl_Tur.Turad;
                txttarih.Text = deger.Tarih.ToString(); ;
            }
            
               
        }
    }
}