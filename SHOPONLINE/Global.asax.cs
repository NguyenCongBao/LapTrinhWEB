using System;

namespace SHOPONLINE
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Doc file SLTC.txt lay gia tri gan cho bien S
            Application.Lock();
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("~/Page/SLTC.txt"));
            string S = sr.ReadLine();
            sr.Close();
            Application.UnLock();
            Application["SLTC"] = S;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //Tang so luong nguoi truy cap len 1 khi co nguoi toi tham
            Application["SLTC"] = int.Parse(Application["SLTC"].ToString()) + 1;
            //Luu vao file SLTC.txt
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("~/Page/SLTC.txt"));
            sw.WriteLine(Application["SLTC"].ToString());
            sw.Close();

            Session["cart"] = null;
            Session["login"] = "";
            Session["admin"] = "";
            Session["online"] = null;
            if(Session["login"]!=null)
            {
                Session["online"] = 1;
            }
            else
            {
                Session["online"] = int.Parse(Session["online"].ToString()) + 1;
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {


        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session["online"] = int.Parse(Session["online"].ToString()) - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}