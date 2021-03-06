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

public partial class Volunteers_frmActivityMonitoringMaster : System.Web.UI.Page
{
    Cls_ActivityMonitoringMaster objActivityMonitoringmaster = new Cls_ActivityMonitoringMaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                GetActivityId();
                GetvillageId();

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

            objActivityMonitoringmaster.ActivityId = Convert.ToInt32(ddlAcitivityName.SelectedValue);
            objActivityMonitoringmaster.VillageId = Convert.ToInt32(ddlVillagename.SelectedValue);
            objActivityMonitoringmaster.ActivityPercentCompleted = TxtActivityCompletionPercentage.Text;
            objActivityMonitoringmaster.ActivityCompletedDetails = TxtDetails.Text;
            objActivityMonitoringmaster.DataHostedVolunteerId = Convert.ToInt32(Session["VolunteerId"]);

            int i = objActivityMonitoringmaster.InsertActivityMonitoringMaster();
            if (i > 0)
            {
                Cleardata();
                lblError.Text = "Details Submitted.";
                LinkButton1.Enabled = true;
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
    protected void btncancel_Click(object sender, EventArgs e)
    {
        if (ddlAcitivityName.Items.Count != 0)
            ddlAcitivityName.SelectedIndex = 0;
        if (ddlVillagename.Items.Count != 0)
            ddlVillagename.SelectedIndex = 0;
        TxtActivityCompletionPercentage.Text = "";
        TxtDetails.Text = "";
    }
    void GetvillageId()
    {
        try
        {
            ddlVillagename.Items.Clear();
            DataSet ds = objActivityMonitoringmaster.GetvillageId();
            if (ds.Tables[0].Rows.Count != 0)
            {
                ddlVillagename.DataSource = ds.Tables[0];
                ddlVillagename.DataTextField = "VillageName";
                ddlVillagename.DataValueField = "VillageId";
                ddlVillagename.DataBind();
            }
            ddlVillagename.Items.Insert(0, "--Select One--");
        }
        catch (Exception ex)
        {

            lblError.Text = ex.Message;
        }
    }
    void GetActivityId()
    {
        try
        {
            ddlAcitivityName.Items.Clear();
            DataSet ds = objActivityMonitoringmaster.GetActivityId();
            if (ds.Tables[0].Rows.Count != 0)
            {
                ddlAcitivityName.DataSource = ds.Tables[0];
                ddlAcitivityName.DataTextField = "ActivityName";
                ddlAcitivityName.DataValueField = "ActivityId";
                ddlAcitivityName.DataBind();
            }
            ddlAcitivityName.Items.Insert(0, "--Select One--");
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }

    }
    void Cleardata()
    {
        if (ddlAcitivityName.Items.Count != 0)
            ddlAcitivityName.SelectedIndex = 0;
        if (ddlVillagename.Items.Count != 0)
            ddlVillagename.SelectedIndex = 0;
        TxtActivityCompletionPercentage.Text = "";
        TxtDetails.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
