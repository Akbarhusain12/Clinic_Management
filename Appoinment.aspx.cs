using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
 

namespace Clinic_Management
{
    public partial class Appoinment : System.Web.UI.Page
    {
        Modules.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Modules.Functions();
            //Showdata();

            lblModalContent.Text = "We Will Get Back To You As Soon As Possible !!!";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = FName.Value;
                string Age = AgeTb.Value;
                string Gender = GenderTb.SelectedItem.ToString();
                string Phone = PhoneN.Value;
                string Doctor = doctorTb.SelectedItem.ToString();
                string Reason = Rapp.SelectedItem.ToString();
                string Description = txtDesc.Text;
                //string Date = AppD.Text;
                //string Time = Apptime.ToString("HH:mm:ss");

                
                //string dateString = AppD.Text;
                //DateTime date;
                

                //if (DateTime.TryParse(dateString, out date))
                //{
                    
                //    string formattedDate = date.ToString("yyyy-MM-dd");
                   
                    
                //}

                string Query = "insert into AppTbl values ('{0}',{1},'{2}','{3}','{4}','{5}','{6}')";
                Query = string.Format(Query, Name, Age, Gender, Phone, Doctor,Reason,Description);
                Con.SetDatas(Query);
                //Showdata();
                ErrMsg.InnerText = "Appointment Added!!";

                //FName.Value = "";
                //AgeTb.Value = "";                
                //GenderTb.SelectedIndex = -1;
                //PhoneN.Value = "";
                //doctorTb.SelectedIndex = -1;
                
              }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;

            }

            FirName.Text = " " + FName.Value;
            AgeTab.Text = " " + AgeTb.Value;
            GenderTab.Text = " " + GenderTb.SelectedItem.Text;
            PhoneTab.Text = " " + PhoneN.Value;
            DoctorTab.Text = " " + doctorTb.SelectedItem.Text;
            RappT.Text = " " + Rapp.Text;
            DescT.Text = " " + txtDesc.Text;
            // AppDate.Text = " " + AppD.;

            //lblResult.Text = "Name: " + FName.Value + "<br />Email: " + AgeTb.Value;

            //String firName = FiName.Text;
            //firName = FName.Value;
            //string sla = "Select * from AppTbl ";
            //sla = string.Format(sla, firName);
            //Con.SetDatas(sla);

            //FName.Value = "";

            //Response.Write("First Name :" + FName.Value + "<br>" + "Last Name :" + AgeTb.Value + "<br>" + "Date of Birth :" + PhoneN.Value + "<br>");

            
           
        }

        //protected void btnPrint_Click(object sender, EventArgs e)
        //{
        //    btnPrint.Attributes.Add("onClick", "window.print(); return false");
        //}
    }
    
}


//protected void btnShowPopup_Click(object sender, EventArgs e)
//{

//    //string script = "$('#mymodal').modal('show')";
//    //ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);
//    // Show the modal popup
//    ModalPopupExtender1.Show();
//}

//protected void btnClosePopup_Click(object sender, EventArgs e)
//{

//    ModalPopupExtender1.Hide();
//}


//protected void btnEdit_Click(object sender, EventArgs e)
//{
//    try
//    {
//        string Name = FName.Value;
//        string Age = AgeTb.Value;
//        string Gender = GenderTb.SelectedItem.ToString();
//        string Phone = PhoneN.Value;
//        string Doctor = doctorTb.SelectedItem.ToString();

//        string Query = "update AppTbl set Name = '{0}',Age = {1},Gender = {2},PhoneNumber = '{3}',Doctor = '{4}' where ID = {5}";
//        Query = string.Format(Query, Name, Age, Gender, Phone, Doctor);
//        Con.SetDatas(Query);

//        ErrMsg.InnerText = "Doctor Updated!!";

//        FName.Value = "";
//        AgeTb.Value = "";
//        GenderTb.SelectedIndex = -1;
//        PhoneN.Value = "";
//        doctorTb.SelectedIndex = -1;

//    }
//    catch (Exception Ex)
//    {
//        ErrMsg.InnerText = Ex.Message;

//    }
//}