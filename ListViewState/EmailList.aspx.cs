using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListViewState
{
    public partial class EmailList : System.Web.UI.Page
    {
        private String email = "";
        List<String> emailList = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btSave_Click(object sender, EventArgs e)
        {
            email = txtEmail.Text;
            if (ViewState["emailList"]!=null)
            {
                emailList =(List<String>) ViewState["emailList"];
            }
            emailList.Add(email);
            ViewState["emailList"] = emailList;
            listShow.Items.Clear();
        }
        protected void btnShow_Click(object sender, EventArgs e)
        {
            listShow.Items.Clear();
            emailList = (List<String>)ViewState["emailList"];
            foreach(String email in emailList)
            {
                listShow.Items.Add(email);
            }
        }
    }
}