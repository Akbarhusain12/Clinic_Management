using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management.Views.Admin
{
    public partial class Doctor : System.Web.UI.Page
    {
        Modules.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Modules.Functions();
            ShowDoctors();
        }

        private void ShowDoctors()
        {
            string Query = "select * from DoctorTbl";
            gvDoctor.DataSource = Con.GetDatas(Query);
            gvDoctor.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = SPZTb.Value;
                string DocGen = GenderTb.SelectedItem.ToString();
                string DocAdd = DocAddressTb.Value;
                string DocDOB = DOBTb.Value;
                string DocPass = PasswordTb.Value;

                string Query = "insert into DoctorTbl values ('{0}','{1}',{2},'{3}','{4}','{5}','{6}','{7}')";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocDOB, DocPass);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor Added!!";

                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                DocAddressTb.Value = "";
                PasswordTb.Value = "";
                SPZTb.Value = "";
                GenderTb.SelectedIndex = -1;

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }
        }
        int key = 0;

        protected void gvDoctor_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocNameTb.Value = gvDoctor.SelectedRow.Cells[2].Text;
            DocPhoneTb.Value = gvDoctor.SelectedRow.Cells[3].Text;
            DocExpTb.Value = gvDoctor.SelectedRow.Cells[4].Text;
            SPZTb.Value = gvDoctor.SelectedRow.Cells[5].Text;
            GenderTb.SelectedItem.Value = gvDoctor.SelectedRow.Cells[6].Text;
            DocAddressTb.Value = gvDoctor.SelectedRow.Cells[7].Text;
            DOBTb.Value = gvDoctor.SelectedRow.Cells[8].Text;
            PasswordTb.Value = gvDoctor.SelectedRow.Cells[9].Text;


            if (DocNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(gvDoctor.SelectedRow.Cells[1].Text);
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (DocNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Doctor!!";
                }
                else
                {
                    string Query = "delete from DoctorTbl where DocId={0}";
                    Query = string.Format(Query, gvDoctor.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowDoctors();
                    ErrMsg.InnerText = "Doctor Deleted !!";
                    key = 0;
                    DocNameTb.Value = "";
                    DocPhoneTb.Value = "";
                    DocExpTb.Value = "";
                    DocAddressTb.Value = "";
                    PasswordTb.Value = "";
                    SPZTb.Value = "";
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
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = SPZTb.Value;
                string DocGen = GenderTb.SelectedItem.ToString();
                string DocAdd = DocAddressTb.Value;
                string DocDOB = DOBTb.Value;
                string DocPass = PasswordTb.Value;

                string Query = "update DoctorTbl set DocName = '{0}',DocPhone = '{1}',DocExp = {2},DocSpec = '{3}',DocGen = '{4}',DocAdd = '{5}',DocDOB = '{6}',DocPass = '{7}' where DocId = {8}";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocDOB, DocPass, gvDoctor.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor Updated!!";

                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                DocExpTb.Value = "";
                DocAddressTb.Value = "";
                PasswordTb.Value = "";
                SPZTb.Value = "";
                GenderTb.SelectedIndex = -1;

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }
        }

       
    }
}