using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class frmMemberRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Class_Members objMem;

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objMem = new Class_Members();
            objMem.FirstName = txtFirstName.Text;
            objMem.MiddleName = txtMName.Text;
            objMem.Lastname = txtLName.Text;
            objMem.MailId = txtMailId.Text;
            objMem.Address = txtAddress.Text;
            objMem.ContactNo = txtContactNo.Text;
            objMem.PhotoContent = (byte[])Session["Photo"];
            objMem.PhotoFileName = Convert.ToString(Session["FileName"]);
            objMem.UserName = txtUserName.Text;
            objMem.Pwd = txtPassword.Text;
            int i = objMem.InsertMemberDetails();
            mainPanel.Enabled = false;
            System.Threading.Thread.Sleep(3000);
            mainPanel.Enabled = true;
            if (i >= 1)
            {
                ClearData();
                lblMsg.Text = "Member Information Registered..";
            }
            else
                lblMsg.Text = "Registration not completed. Try again !!!";
        }
        catch (Exception ex)
        {
            mainPanel.Enabled = false;
            System.Threading.Thread.Sleep(3000);
            mainPanel.Enabled = true;
            lblMsg.Text = ex.Message;
        }
    }

    private void ClearData()
    {
        try
        {
            lblMsg.Text = "";
            txtAddress.Text = "";
            txtContactNo.Text = "";
            txtFirstName.Text = "";
            txtLName.Text = "";
            txtMailId.Text = "";
            txtMName.Text = "";
            Browseimg.Clearimage();
            Browseimg.loadimage();
            txtUserName.Text = "";
            txtPassword.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearData();
    }
  
}
