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
        List<ArtWork> artWorks = new List<ArtWork>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                artWorks = dc.GetArtWorks();
                workRepeater.DataSource = artWorks;
                workRepeater.DataBind();

            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

        }
    }
}