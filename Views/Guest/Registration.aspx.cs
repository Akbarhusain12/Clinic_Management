using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management
{
    public partial class Registration : System.Web.UI.Page
    {
        Modules.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Modules.Functions();
            //Showdata();
        }

        //private void Showdata()
        //{
        //    string Query = "select * from RegistrationTbl";
        //    dlRegistration.DataSource = Con.GetDatas(Query);
        //    dlRegistration.DataBind();
        //}

        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Response.Write("First Name :" + txtFname.Text + "<br>" + "Last Name :" + LName.Value + "<br>" + "Email :" + Emailtb.Value + "<br>"
            //    + "Date of Birth :" + DOB.Value + "<br>" + "Gender :" + GenderTb.SelectedItem.ToString() + "<br>" + "Address :" + Add.Value + "<br>"
            //    +"Phone Number :" + PhoneN.Value + "<br>");
            try
            {
                string FirstName = FName.Value;
                string LastName = LName.Value;
                string Email = Emailtb.Value;
                string Date = DOB.Value;
                string Gender = GenderTb.SelectedItem.ToString();
                string Address = Add.Value;
                string Phone = PhoneN.Value;


                string Query = "insert into RegistrationTbl values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                Query = string.Format(Query, FirstName, LastName, Email, Date, Gender, Address, Phone);
                Con.SetDatas(Query);
                //Showdata();
                ErrMsg.InnerText = "Registration Added!!";

                if (ErrMsg.InnerText == "Registration Added!!")
                {
                    Response.Redirect("../../Appoinment.aspx");
                }
                else
                {
                    Response.Write("Error!! Please Enter The Remaining Field");
                }
                FName.Value = "";
                LName.Value = "";
                Emailtb.Value = "";
                GenderTb.SelectedIndex = -1;
                Add.Value = "";
                PhoneN.Value = "";


            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }
        }
    }
}