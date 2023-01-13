using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutorial_3.ASP
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStore_Click(object sender, EventArgs e)
        {
            //ViewState["name"] = txtName.Text;
            //ViewState ["enrl"] = txtEnrl.Text;

            //another way to store the ViewState
            //HiddenField1.Value = txtName.Text;
            //HiddenField2.Value = txtEnrl.Text;

            Response.Redirect("QueryString.aspx?enrl="+txtEnrl.Text+ "&" +"name="+txtName.Text);
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEnrl.Text = "";
        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            //txtbox1.Text = ViewState["name"].ToString();
            //txtbox2.Text = ViewState["enrl"].ToString();

            txtbox1.Text = HiddenField1.Value;
            txtbox2.Text = HiddenField2.Value;

        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }
    }
}