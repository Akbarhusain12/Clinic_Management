using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management.Views.Admin
{
    public partial class Receptionist : System.Web.UI.Page
    {
        Modules.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Modules.Functions();
            ShowReceptionist();
        }

        private void ShowReceptionist()
        {
            string Query = "select * from ReceptionistTbl";
            gvReceptionist.DataSource = Con.GetDatas(Query);
            gvReceptionist.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string RName = RecNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd = RecAddressTb.Value;
                string RPhone = RecPhoneTb.Value;
                string RPassword = RecPasswordTb.Value;

                string Query = "insert into ReceptionistTbl values ('{0}','{1}','{2}','{3}','{4}')";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, RPassword);
                Con.SetDatas(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist Added!!";

                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                RecAddressTb.Value = "";
                RecPhoneTb.Value = "";
                RecPasswordTb.Value = "";

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            
            }

        }
        int key = 0;
        protected void gvReceptionist_SelectedIndexChanged(object sender, EventArgs e)
        {
            RecNameTb.Value = gvReceptionist.SelectedRow.Cells[2].Text;
            RecEmailTb.Value = gvReceptionist.SelectedRow.Cells[3].Text;
            RecAddressTb.Value = gvReceptionist.SelectedRow.Cells[4].Text;
            RecPhoneTb.Value = gvReceptionist.SelectedRow.Cells[5].Text;
            RecPasswordTb.Value = gvReceptionist.SelectedRow.Cells[6].Text;

            if (RecNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(gvReceptionist.SelectedRow.Cells[1].Text);
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (RecNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Receptionist!!";
                }
                else
                {
                    string Query = "delete from ReceptionistTbl where RecId={0}";
                    Query = string.Format(Query, gvReceptionist.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowReceptionist();
                    ErrMsg.InnerText = "Receptionist Deleted !!";
                    key = 0;
                    RecNameTb.Value = "";
                    RecEmailTb.Value = "";
                    RecAddressTb.Value = "";
                    RecPhoneTb.Value = "";
                    RecPasswordTb.Value = "";
                }              

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                string RName = RecNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd = RecAddressTb.Value;
                string RPhone = RecPhoneTb.Value;
                string RPassword = RecPasswordTb.Value;

                string Query = "update ReceptionistTbl set RecName = '{0}',RecEmail = '{1}',RecAdd = '{2}',RecPhone = '{3}',RecPassword = '{4}' where RecId = {5}";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, RPassword, gvReceptionist.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist Updated!!";

                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                RecAddressTb.Value = "";
                RecPhoneTb.Value = "";
                RecPasswordTb.Value = "";

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }
        }
    }
}