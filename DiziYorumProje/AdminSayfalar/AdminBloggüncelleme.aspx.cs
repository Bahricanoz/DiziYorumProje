using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class AdminBloggüncelleme : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            if(Page.IsPostBack== false)
            {
                //tür liste
                var türliste = (from x in db.Tbl_Tur
                                select new
                                {
                                    x.Id,
                                    x.Turad,

                                }).ToList();
                DropDownListtür.DataSource = türliste;
                DropDownListtür.DataBind();

                //kat liste
                var katliste = (from x in db.Tbl_Kategori
                                select new
                                {
                                    x.Id,
                                    x.KateogriAd,

                                }).ToList();
                DropDownListkat.DataSource = katliste;
                DropDownListkat.DataBind();

                var deger = db.Tbl_Blog.Find(id);
                txtıd.Text = deger.Id.ToString();
                txtblogad.Text = deger.Baslik;
                txticeirk.Text = deger.İcerik;
                txtresim.Text = deger.Resim;
                txttarih.Text = deger.Tarih.ToString();
                DropDownListtür.SelectedValue = deger.Tur.ToString();
                DropDownListkat.SelectedValue = deger.Kategori.ToString();

            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            int y = Convert.ToInt32(Request.QueryString["Id"]);
            var blog = db.Tbl_Blog.Find(y);
            blog.Baslik = txtblogad.Text;
            blog.İcerik = txticeirk.Text;
            blog.Tarih = DateTime.Parse(txttarih.Text);
            blog.Resim = txtresim.Text;
            blog.Tur = byte.Parse(DropDownListtür.SelectedValue);
            blog.Kategori = byte.Parse(DropDownListkat.SelectedValue);
            db.SaveChanges();
            Response.Redirect("AdminBlog.aspx");
        }
    }
}