using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutorial_3.ASP
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnNext1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            lblSName.Text = ("<b>Student Name: </b>" + txtName.Text);
            lblSAdd.Text = ("<b>Student Address: </b>" + txtAddress.Text);
            lblSDegree.Text = ("<b>Student Degree: </b>" + txtDegree.Text);
            lblSEmail.Text = ("<b>Student Email: </b>" + txtEmail.Text);
            lblSContact.Text = ("<b>Student Contact: </b>" + txtContact.Text);
        }

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}