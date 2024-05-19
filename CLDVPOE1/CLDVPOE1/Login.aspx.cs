using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLDVPOE1
{
    public partial class Login : System.Web.UI.Page
    {
        DatabaseConnection dc = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            UserInfomation temp = dc.UserLogin (txtLoginEmail.Text,txtLoginPassword.Text);
            if (temp != null)
            {
                Response.Redirect("~/Default");
            }
            else
            {
                txtLoginEmail.Text = null;
                txtLoginPassword.Text = null;
            }
        }

        protected void btnToSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp");
        }
    }
}