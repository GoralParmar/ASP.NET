using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tutorial_1_asp
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            int a,b,c;
            a = int.Parse(txta.Text);
            b = int.Parse(txtb.Text);
            c = a + b;
            lblMessage.Text= ("Addition of two numbers are " + c);

        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            double a, b, c;
            a = double.Parse(txta.Text);
            b = double.Parse(txtb.Text);
            c = a - b;
            lblMessage.Text = ("Substraction of two numbers are " + c);

        }

        protected void btnmul_Click(object sender, EventArgs e)
        {
            double a, b, c;
            a = double.Parse(txta.Text);
            b = double.Parse(txtb.Text);
            c = a * b;
            lblMessage.Text = ("Multiplication of two numbers are " + c);
        }

        protected void btndiv_Click(object sender, EventArgs e)
        {
            double a, b, c;
            a = double.Parse(txta.Text);
            b = double.Parse(txtb.Text);
            c = a / b;
            lblMessage.Text = ("Division of two numbers are " + c);
        }
    }
}