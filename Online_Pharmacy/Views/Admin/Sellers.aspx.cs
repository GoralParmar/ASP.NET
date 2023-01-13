using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pharmacy.Views.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        Models.Function con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Function();
            if (!IsPostBack)
            {
                ShowSellers();
            }
        }
        private void ShowSellers()
        {
            string Query = "select * from SellerTbl";
            SelllerList.DataSource = con.GetData(Query);
            SelllerList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SAddressTb.Value == "" || SEmailTb.Value == "" || SPasswordTb.Value == "" || SAddressTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!";


                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Value;
                    string SPass = SPasswordTb.Value;
                    string SDOB = SDOBTb.Value;
                    string SGen = GenCb.SelectedItem.Value;
                    string SAdd = SAddressTb.Value;

                    string Query = "insert into SellerTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, SName, SEmail, SPass, SDOB, SGen, SAdd);
                    con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Added!!";
                    SNameTb.Value = "";
                    SEmailTb.Value = "";
                    SPasswordTb.Value = "";
                    SDOBTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    SAddressTb.Value = "";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }
        }

        int key = 0;
        protected void MedicineList_SelectedIndexChanged(object sender, EventArgs e)
        {
            key = Convert.ToInt32(SelllerList.SelectedRow.Cells[1].Text);
            SNameTb.Value = SelllerList.SelectedRow.Cells[2].Text;
            SEmailTb.Value = SelllerList.SelectedRow.Cells[3].Text;
            SPasswordTb.Value = SelllerList.SelectedRow.Cells[4].Text;
            SDOBTb.Value = SelllerList.SelectedRow.Cells[5].Text;
            GenCb.SelectedValue = SelllerList.SelectedRow.Cells[6].Text;
            SAddressTb.Value = SelllerList.SelectedRow.Cells[7].Text;

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SAddressTb.Value == "" || SEmailTb.Value == "" || SPasswordTb.Value == "" || SAddressTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!";


                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Value;
                    string SPass = SPasswordTb.Value;
                    string SDOB = SDOBTb.Value;
                    string SGen = GenCb.SelectedItem.Value;
                    string SAdd = SAddressTb.Value;

                    string Query = "update SellerTbl set('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, SName, SEmail, SPass, SDOB, SGen, SAdd);
                    con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Updated!!";
                    SNameTb.Value = "";
                    SEmailTb.Value = "";
                    SPasswordTb.Value = "";
                    SDOBTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    SAddressTb.Value = "";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "" || SAddressTb.Value == "" || SEmailTb.Value == "" || SAddressTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!";


                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Value;
                    string SPass = SPasswordTb.Value;
                    string SDOB = SDOBTb.Value;
                    string SGen = GenCb.SelectedItem.Value;
                    string SAdd = SAddressTb.Value;

                    string Query = "delete from SellerTbl where SelId= {0}";
                    Query = string.Format(Query, SelllerList.SelectedRow.Cells[1].Text);
                    con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Deleted!!";
                    SNameTb.Value = "";
                    SEmailTb.Value = "";
                    SPasswordTb.Value = "";
                    SDOBTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    SAddressTb.Value = "";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }

        }
    }
}