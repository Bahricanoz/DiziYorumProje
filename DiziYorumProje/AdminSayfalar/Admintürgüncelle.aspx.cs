using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Admintürgüncelle : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            if (Page.IsPostBack== false) 
            {
                var deger = db.Tbl_Tur.Find(id);
                txtıd.Text = deger.Id.ToString();
                txtad.Text = deger.Turad;
            }
            

        }

        protected void btngüncelle_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["Id"]);
            var tür = db.Tbl_Tur.Find(y);
            tür.Turad = txtad.Text;
            db.SaveChanges();
            Response.Redirect("AdminTür.aspx");

        }
    }
}