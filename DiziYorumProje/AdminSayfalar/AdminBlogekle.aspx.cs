using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class AdminBlogekle : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack== false)
            {
                var türliste = (from x in db.Tbl_Tur
                                select new
                                {
                                    x.Turad,
                                    x.Id
                                }).ToList();
                DropDownListtür.DataSource = türliste;
                DropDownListtür.DataBind();

                var katliste = (from x in db.Tbl_Kategori
                                select new
                                {
                                    x.KateogriAd,
                                    x.Id
                                }).ToList();
                DropDownListkat.DataSource = katliste;
                DropDownListkat.DataBind();
            }
           
        }

        protected void btnkayder_Click(object sender, EventArgs e)
        {
            Tbl_Blog t = new Tbl_Blog();
            t.Baslik = txtblogad.Text;
            t.İcerik = txtblogicerik.Text;
            t.Resim = txtblogresim.Text;
            t.Kategori = byte.Parse(DropDownListkat.SelectedValue);
            t.Tur = byte.Parse(DropDownListtür.SelectedValue);
            t.Tarih =DateTime.Parse(txttarih.Text);
            db.Tbl_Blog.Add(t);
            db.SaveChanges();
            Response.Redirect("AdminBlog.aspx");
        }
    }
}