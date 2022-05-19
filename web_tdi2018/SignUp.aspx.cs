using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace web_tdi2018
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signin_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection(@"data source=.\sql2014;initial catalog=tdi2018;user id=sa;password=youss13262231");
            sc.Open();
            SqlCommand com = new SqlCommand("select noPermis,emailconducteur from conducteur where noPermis=@nop", sc);
            com.Parameters.AddWithValue("@nop", txt_noPermis.Text);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read()) { lbl_error.Visible = true; dr.Close();
                dr = null;
                com = null;
                sc.Close();
                sc = null;
            }
            else
            {
                dr.Close();
                dr = null;
                com.CommandText = "insert into conducteur values(@nop,@nom,@prenom,@email,@passwrd)";
                com.Parameters.AddWithValue("@nom", txt_nom.Text);
                com.Parameters.AddWithValue("@prenom", txt_prenom.Text);
                com.Parameters.AddWithValue("@email", txt_email.Text);
                com.Parameters.AddWithValue("@passwrd", txt_passwrd.Text);
                com.ExecuteNonQuery();
                Response.Redirect("login.aspx");
                com = null;
                sc.Close();
                sc = null;
            }
        }
    }
}