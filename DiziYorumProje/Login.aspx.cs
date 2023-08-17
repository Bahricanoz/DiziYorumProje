using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Login : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngirisyap_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.Tbl_Admin
                        where  x.kullaniciadi == txtkullaniciad.Text && x.sifre == txtsifre.Text
                        select x;
            if (sorgu.Any()){
                
                Response.Redirect("/AdminSayfalar/Anasayfa.aspx/");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}