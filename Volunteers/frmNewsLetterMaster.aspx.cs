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

public partial class Volunteers_frmNewsLetterMaster : System.Web.UI.Page
{
    Cls_NewsLetterMaster objNewsLetter = new Cls_NewsLetterMaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                Getvolunteerid();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            objNewsLetter.NewsLetterSubjectName = txtNewsLetterSubjectName.Text;
            if (Session["DocumentFile"] != null)
            {
                string s = "~/DocumentFiles/" + Session["DocumentFile"].ToString();
                objNewsLetter.NewsLetterDocumentedFile = s.ToString();
            }
            else
                objNewsLetter.NewsLetterDocumentedFile = "No File";
            if (Convert.ToInt32(radNewsLetterStatus.SelectedValue) == 1)
                objNewsLetter.NewsLetterstatus = true;
            else
                objNewsLetter.NewsLetterstatus = false;
            objNewsLetter.VolunteerId = Convert.ToInt32(ddlVolunteerid.SelectedValue);


            int i = objNewsLetter.InsertNewsLetterMaster();
            if (i > 0)
            {
                Cleardata();
                lblError.Text = "News Letter Information Submitted.";
            }
            else
            {
                lblError.Text = "Recorded Not Inserted Try Again";
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
    void Cleardata()
    {
        txtNewsLetterSubjectName.Text = "";

        if (ddlVolunteerid.Items.Count != 0)
            ddlVolunteerid.SelectedIndex = 0;

    }
    void Getvolunteerid()
    {
        try
        {
            ddlVolunteerid.Items.Clear();
            DataSet ds = objNewsLetter.GetvolunteerId();
            if (ds.Tables[0].Rows.Count != 0)
            {
                ddlVolunteerid.DataSource = ds.Tables[0];
                ddlVolunteerid.DataTextField = "VolunteerName";
                ddlVolunteerid.DataValueField = "VolunteerId";
                ddlVolunteerid.DataBind();
            }
            ddlVolunteerid.Items.Insert(0, "--Select One--");
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Cleardata();
    }
}
