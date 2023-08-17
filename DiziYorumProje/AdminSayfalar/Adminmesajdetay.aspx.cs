using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Adminmesajdetay : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            var mesaj = db.Tbl_Mesajlar.Find(id);
            txtname.Text = mesaj.Name;
            txtmail.Text = mesaj.Mail;
            txttelefon.Text = mesaj.Phone;
            txtkonu.Text = mesaj.Konu;
            txtmesaj.Text = mesaj.Mesaj;
        }
    }
}