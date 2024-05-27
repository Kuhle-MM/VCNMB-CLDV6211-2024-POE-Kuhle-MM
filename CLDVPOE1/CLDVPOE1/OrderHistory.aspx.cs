using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLDVPOE1
{
    public partial class OrderHistory : System.Web.UI.Page
    {
        static List<Order> orders = new List<Order>();
        DatabaseConnection dc = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Checks if the user is staff or not
                if (UserHolder.loggedInUser.staff)
                {
                    orders = dc.GetAllOrders();
                    ddlOrderStatus.Visible = true;
                    ddlOrderList.Visible = true;
                    btnUpdateOrder.Visible = true;
                    lblOrderUpdate.Visible = true;
                    lblOrderStatus.Visible = true;

                    ddlOrderList.DataSource = orders;
                    ddlOrderList.DataTextField = "OrderID";
                    ddlOrderList.DataValueField = "OrderID";
                    ddlOrderList.DataBind();
                }
                else
                {
                    orders = dc.GetUserOrders(UserHolder.loggedInUser.id);
                    ddlOrderStatus.Visible = false;
                    ddlOrderList.Visible = false;
                    btnUpdateOrder.Visible = false;
                    lblOrderStatus.Visible = false;
                    lblOrderUpdate.Visible = false;
                }
                dgOrders.DataSource = orders;
                dgOrders.DataBind();
            }
        }

        protected void btnUpdateOrder_Click(object sender, EventArgs e)
        {
            string currentStatus = ddlOrderStatus.SelectedValue.ToString();
            int orderID = Convert.ToInt32(ddlOrderList.SelectedValue.ToString());

            dc.UpdateOrder(orderID, currentStatus);
        }
    }
}