using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLDVPOE1
{
    public partial class MyWorkPage : System.Web.UI.Page
    {
        DatabaseConnection dc = new DatabaseConnection();
        static List<ArtWork> artWorks = new List<ArtWork>();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            artWorks = dc.GetArtWorks();
            if (!IsPostBack)
            {
                
                workRepeater.DataSource = artWorks;
                workRepeater.DataBind();

            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            int artID = Convert.ToInt32(button.CommandArgument);
            foreach (ArtWork artWork in artWorks)
            {
                if (artWork.artID == artID)
                {
                    CartHolder.cart.Add(artWork);
                    break;
                }
            }
        }

        protected void btnAddToCart_Command(object sender, CommandEventArgs e)
        {
            

        }
    }
}