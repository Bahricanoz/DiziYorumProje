using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;
namespace DiziYorumProje.AdminSayfalar
{
    public partial class Hakkımda : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 1;
            if(Page.IsPostBack== false) 
            { 
                var degeler = db.Tbl_Hakkımızda.Find(id);
                txtbaslik.Text = degeler.Baslik;
                txticerik1.Text = degeler.İcerik;
                txticerik2.Text = degeler.İcerik2;
                txticerik3.Text = degeler.İcerik3;
                txticerik4.Text = degeler.İcerik4;
                txtresim.Text = degeler.Resim;
            }






        }

        protected void btngüncelle_Click(object sender, EventArgs e)
        {
            int y = 1;
            var hakkimda = db.Tbl_Hakkımızda.Find(y);
            hakkimda.Baslik = txtbaslik.Text;
            hakkimda.Resim = txtresim.Text;
            hakkimda.İcerik = txticerik1.Text;
            hakkimda.İcerik2 = txticerik2.Text;
            hakkimda.İcerik3 = txticerik3.Text;
            hakkimda.İcerik4 = txticerik4.Text;
            db.SaveChanges();
            Response.Redirect("Hakkımda.aspx");


        }
    }
}