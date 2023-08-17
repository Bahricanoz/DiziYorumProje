using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Adminyorumguncelle : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            if(Page.IsPostBack== false)
            {
                var yorum = db.Tbl_Yorumlar.Find(id);
                txtyorunmad.Text = yorum.Name;
                txticerik.Text = yorum.İcerik;
                txtmail.Text = yorum.Mail;
                txtblog.Text = yorum.Tbl_Blog.Baslik;
            }
        }

        protected void btngüncelle_Click(object sender, EventArgs e)
        {
            int y = Convert.ToInt32(Request.QueryString["Id"]);
            var deger = db.Tbl_Yorumlar.Find(y);
            deger.Mail = txtmail.Text;
            deger.İcerik = txticerik.Text;
            db.SaveChanges();
            Response.Redirect("AdminYorum.aspx");

        }
    }
}