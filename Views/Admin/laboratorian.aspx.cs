using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management.Views.Admin
{
    public partial class laboratorian : System.Web.UI.Page
    {
        Modules.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Modules.Functions();
            ShowLaboratorian();
        }

        private void ShowLaboratorian()
        {
            string Query = "select * from LaboratorianTbl";
            gvLaboratorian.DataSource = Con.GetDatas(Query);
            gvLaboratorian.DataBind();
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = NameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAddress = AddressTb.Value;
                string LabGen = GenderTb.SelectedItem.Value;


                string Query = "insert into LaboratorianTbl values ('{0}','{1}',{2},'{3}','{4}','{5}')";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen);
                Con.SetDatas(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Laboratorian Added!!";

                NameTb.Value = "";
                EmailTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                AddressTb.Value = "";
                GenderTb.SelectedIndex = -1;

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }
        }

        int key = 0;
        protected void gvLaboratorian_SelectedIndexChanged(object sender, EventArgs e)
        {
            NameTb.Value = gvLaboratorian.SelectedRow.Cells[2].Text;
            EmailTb.Value = gvLaboratorian.SelectedRow.Cells[3].Text;
            PasswordTb.Value = gvLaboratorian.SelectedRow.Cells[4].Text;
            PhoneTb.Value = gvLaboratorian.SelectedRow.Cells[5].Text;
            AddressTb.Value = gvLaboratorian.SelectedRow.Cells[6].Text;
            GenderTb.SelectedItem.Value = gvLaboratorian.SelectedRow.Cells[7].Text;



            if (NameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(gvLaboratorian.SelectedRow.Cells[1].Text);
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (NameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Laboratorian !!";
                }
                else
                {
                    string Query = "delete from LaboratorianTbl where LabId={0}";
                    Query = string.Format(Query, gvLaboratorian.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowLaboratorian();
                    ErrMsg.InnerText = "Laboratorian Deleted !!";
                    key = 0;
                    NameTb.Value = "";
                    EmailTb.Value = "";
                    PasswordTb.Value = "";
                    PhoneTb.Value = "";
                    AddressTb.Value = "";
                    GenderTb.SelectedIndex = -1;
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
                string LabName = NameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAddress = AddressTb.Value;
                string LabGen = GenderTb.SelectedItem.Value;

                string Query = "update LaboratorianTbl set LabName = '{0}',LabEmail = '{1}',LabPass = {2},LabPhone = '{3}',LabAddress = '{4}',LabGen = '{5}' where LabId = {6}";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen, gvLaboratorian.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Laboratorian Updated!!";

                NameTb.Value = "";
                EmailTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                AddressTb.Value = "";
                GenderTb.SelectedIndex = -1;

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }
        }
    }
}