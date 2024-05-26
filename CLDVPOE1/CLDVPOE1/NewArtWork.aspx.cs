using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLDVPOE1
{
    
    public partial class NewArtWork : System.Web.UI.Page
    {
        DatabaseConnection dc = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (UserHolder.loggedInUser.staff)
                {
                    divAdd.Visible = true;
                    lblWarning.Visible = false;
                }
                else
                {
                    divAdd.Visible= false;
                    lblWarning.Visible = true;
                }

            }
        }

        protected void BtnAddProduct_Click(object sender, EventArgs e)
        {
            ArtWork temp = new ArtWork
            {
                name = txtName.Text.ToString(),
                description = txtDescription.Text.ToString(),
                imageUrl = txtImageUrl.Text.ToString(),
                price = Convert.ToDouble(txtPrice.Text.ToString()),
                category = txtCategory.Text.ToString(),
                availability = Convert.ToInt32(txtAvailability.Text.ToString())

            };
            dc.AddNewArtWork(temp);
        }
    }
}