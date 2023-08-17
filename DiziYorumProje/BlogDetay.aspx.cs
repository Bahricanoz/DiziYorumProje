using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["Id"]);
            var blog = db.Tbl_Blog.Where(x=>x.Id == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            //bloga ait yorumlar
            var yorum = db.Tbl_Yorumlar.Where(x=>x.Blog == id).ToList();
            Repeater2.DataSource = yorum;
            Repeater2.DataBind();

            //kategoriler
            var kategori = db.Tbl_Kategori.ToList();
            Repeater3.DataSource = kategori;
            Repeater3.DataBind();

            // son 5 blog listesi
            var sonblog = db.Tbl_Blog.OrderByDescending(x => x.Id).Take(5).ToList();
            Repeater4.DataSource = sonblog;
            Repeater4.DataBind();

            // son 3 yorum listesi
            var sonyorumlar = (from x in db.Tbl_Yorumlar
                               select new
                               {
                                   x.Id,
                                   x.Name,
                                   x.Tbl_Blog.Baslik
                               }).OrderByDescending(x => x.Id).Take(3).ToList();
            Repeater5.DataSource = sonyorumlar;
            Repeater5.DataBind();

            // tür listesi 
            var turler = db.Tbl_Tur.ToList();
            Repeater6.DataSource = turler;
            Repeater6.DataBind();
        }

        protected void btngonder_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["Id"]);
            Tbl_Yorumlar t = new Tbl_Yorumlar();
            t.Name = txtname.Text;
            t.Mail = txtmail.Text;
            t.İcerik = txtyorum.Text;
            t.Blog = id;
            db.Tbl_Yorumlar.Add(t);
            db.SaveChanges();
            Response.Redirect("BlogDetay.aspx?Id=" + id);
        }
    }
}