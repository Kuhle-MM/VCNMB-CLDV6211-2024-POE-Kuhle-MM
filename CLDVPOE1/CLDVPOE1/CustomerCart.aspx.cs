using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CLDVPOE1
{
    public partial class CustomerCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (MyWorkPage.cart.Count == 0)
            {
                lblEmpty.Visible = true;
                dgCart.Visible = false;
                btnClearCart.Enabled = false;
                btnPurchase.Enabled = false;
            }
            else
            {
                lblEmpty.Visible=false;
                dgCart.Visible = true;
                btnClearCart.Enabled=true;
                btnPurchase.Enabled=true;
            }
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {

        }

        protected void btnClearCart_Click(object sender, EventArgs e)
        {

        }
    }
}