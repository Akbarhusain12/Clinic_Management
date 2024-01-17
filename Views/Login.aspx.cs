using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Modules.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Modules.Functions();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (RoleTb.SelectedIndex == 0)
            {
                ErrMsg.InnerText = "Select a Role !!!";
            }
            else
            {
                if (EmailTb.Value == "admin@gmail.com" && PasswordTb.Value == "AdminXYZ")
                {
                    string role = "Admin";
                    Session["uid"] = 1;
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/Doctor.aspx";
                    r_url = string.Format(r_url, role);

                    Response.Redirect(r_url);
                }
                else
                {
                    ErrMsg.InnerText = "Invalid Admin";
                }
            }
        }
    }
}