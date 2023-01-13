using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutotial_2.ASP
{
    public partial class T_2_Q_1_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "Selected date is: " + Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            Label2.Text = "Current Date is : " + Calendar1.TodaysDate.ToString("dd-MM-yyyy");
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string path = Server.MapPath("~/image/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/" + FileUpload1.FileName));
            }
        }
    }
}