using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutorial_3.ASP
{
    public partial class Registration_Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string str = args.Value;  //args is fire to the validation
            double cgpa = Convert.ToDouble(str);
            if (cgpa > 10)
            {
                args.IsValid = true;
            }

        }
    }
}