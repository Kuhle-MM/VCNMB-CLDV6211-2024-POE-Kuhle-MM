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
        DatabaseConnection dc = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CartHolder.cart.Count == 0)
            {
                lblEmpty.Visible = true;
                dgCart.Visible = false;
                btnClearCart.Enabled = false;
                btnPurchase.Enabled = false;
            }
            else
            {
                dgCart.DataSource = CartHolder.cart;
                dgCart.DataBind();

                lblEmpty.Visible=false;
                dgCart.Visible = true;
                btnClearCart.Enabled=true;
                btnPurchase.Enabled=true;
            }
        }
         
        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            dc.SubmitOrder(CartHolder.cart); 
            dgCart.Visible=false;
            lblEmpty.Visible=true;
        }

        protected void btnClearCart_Click(object sender, EventArgs e)
        {
            CartHolder.cart.Clear();

        }
    }
}