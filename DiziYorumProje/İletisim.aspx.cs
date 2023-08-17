using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class İletisim : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnmesaj_Click(object sender, EventArgs e)
        {
            Tbl_Mesajlar t = new Tbl_Mesajlar();
            t.Name = txtkullanici.Text;
            t.Mail = txtmailadres.Text;
            t.Phone = txtnumara.Text;
            t.Konu = txtkonu.Text;
            t.Mesaj = txtmesaj.Text;
            db.Tbl_Mesajlar.Add(t);
            db.SaveChanges();
            Response.Redirect("İletisim.aspx");
        }
    }
}