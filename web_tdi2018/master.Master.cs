using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_tdi2018
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["passport"] == null) Response.Redirect("login.aspx");
            if (Session["username"] != null) un.Text = Session["username"].ToString();
        }
    }
}