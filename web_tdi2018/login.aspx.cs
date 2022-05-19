using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace web_tdi2018
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signin_Click(object sender, EventArgs e)
        {

            SqlConnection sc = new SqlConnection(@"data source=.\sql2014;initial catalog=tdi2018;user id=sa;password=youss13262231");
            sc.Open();
            SqlCommand com = new SqlCommand("select * from conducteur where emailconducteur=@email", sc);
            com.Parameters.AddWithValue("@email", txt_email.Text);
            SqlDataReader dr = com.ExecuteReader();
            bool flag = false;
            while (dr.Read()) if (dr["mdpConducteur"].ToString() == txt_passwrd.Text) 
                { flag = true; 
                    Session["username"] = dr["nomConducteur"].ToString() + " " + dr["prenomConducteur"].ToString(); }
            if (flag)
            {
                Session["passport"] = "ok";
                Response.Redirect("consultation.aspx");
            }
        }
    }
}