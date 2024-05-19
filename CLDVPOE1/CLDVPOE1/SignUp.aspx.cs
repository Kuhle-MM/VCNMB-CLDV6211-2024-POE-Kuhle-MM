using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLDVPOE1
{
    public partial class SignUp : System.Web.UI.Page
    {
        DatabaseConnection dc = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string staff = "yes";

            dc.SignUp(txtSignUpName.Text, txtSignUpEmail.Text, txtSurname.Text, txtSignUpPassword.Text, staff);


        }
    }
}