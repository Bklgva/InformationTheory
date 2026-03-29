using System;
using System.Web.UI;

namespace InformationTheory
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLab1_Click(object sender, EventArgs e)
        {
            Response.Redirect("lab1.aspx");
        }
    }
}