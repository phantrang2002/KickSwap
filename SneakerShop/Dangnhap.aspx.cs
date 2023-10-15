using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SneakerShop
{
     
    public partial class WebForm3 : System.Web.UI.Page
    {
        int check = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (IsPostBack)
            {
                string usernameL = Request.Form.Get("usernameL");
                string passwordL = Request.Form.Get("passwordL");
                int dem = 0;
               
                if (usernameL != "" && passwordL != "")
                {
                    List<NguoiDung> users = (List<NguoiDung>)Application["Users"];

                    foreach (NguoiDung user in users)
                    {
                        if (usernameL == user.username)
                        {
                            dem = 1;
                            if (passwordL == user.password)
                            {
                                Session["username"] = usernameL;
                                Response.Redirect("Trangchu.aspx");
                                break;
                            }
                            else
                            {
                                errorL.InnerHtml = "Incorrect Password";
                                check++;      
                                
                            }

                            if (check == 3)
                            {
                                errorL.InnerHtml = "Sai quá 3 ";
                                btnLogin.Visible = false;
                            }

                        }                   
                    }

                    

                    if (dem == 0)
                    {
                        errorL.InnerHtml = "Unavailable User ";
                        
                    }
                }
            }
        }
    }
}