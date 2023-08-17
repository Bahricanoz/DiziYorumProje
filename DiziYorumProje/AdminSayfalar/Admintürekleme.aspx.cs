using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Admintürekleme : System.Web.UI.Page
    {
        Db_DizifilmblogEntities db = new Db_DizifilmblogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnkaydet_Click1(object sender, EventArgs e)
        {
            //tür ekleme
            Tbl_Tur t = new Tbl_Tur();
            t.Turad = txtturad.Text;
            db.Tbl_Tur.Add(t);
            db.SaveChanges();
            Response.Redirect("AdminTür.aspx");
        }
    }
}