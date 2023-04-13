using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alpClients
{
    public partial class Klienti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClientsGridView_PreRender(object sender, EventArgs e)
        {
            try
            {
               ClientsGridView.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            catch (Exception error)
            {
                System.Diagnostics.Debug.WriteLine(error.Message);
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {           
            try
            {
                string connstr = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("insert into ClientsT(FirstName,LastName,Email,Address,Sex,Contact) values(@FirstName, @LastName, @Email, @Address, @Sex, @Contact)", conn);

                    cmd.Parameters.AddWithValue("@FirstName", firstnameNew.Text);
                    cmd.Parameters.AddWithValue("@LastName", lastnameNew.Text);
                    cmd.Parameters.AddWithValue("@Email", emailNew.Text);
                    cmd.Parameters.AddWithValue("@Address", adresaNew.Text);
                    cmd.Parameters.AddWithValue("@Sex", sexNew.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Contact", kontaktNew.Text);

                    int rowaffected = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (rowaffected > 0)
                    {
                        ClientsGridView.DataBind();
                        ClientScript.RegisterStartupScript(this.GetType(), "Succes", "$('#successAction').show();", true);
                    }
                    else
                    {
                        System.Diagnostics.Debug.WriteLine("beze zmeny");
                        ClientScript.RegisterStartupScript(this.GetType(), "Succes", "$('#errorAction').show();", true);
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string connstr = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("update ClientsT set FirstName = @FirstName, LastName = @LastName, Email = @Email, Address = @Address, Sex = @Sex, Contact = @Contact where Id=@Id", conn);

                    cmd.Parameters.AddWithValue("@Id", editID.Value);
                    cmd.Parameters.AddWithValue("@FirstName", firstnameEdit.Text);
                    cmd.Parameters.AddWithValue("@LastName", lastnameEdit.Text);
                    cmd.Parameters.AddWithValue("@Email", emailEdit.Text);
                    cmd.Parameters.AddWithValue("@Address", adresaEdit.Text);
                    cmd.Parameters.AddWithValue("@Sex", sexEdit.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Contact", kontaktEdit.Text);

                    int rowaffected = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (rowaffected > 0)
                    {
                        ClientsGridView.DataBind();
                        ClientScript.RegisterStartupScript(this.GetType(), "Succes", "$('#successAction').show();", true);
                    }
                    else
                    {
                        System.Diagnostics.Debug.WriteLine("beze zmeny");
                        ClientScript.RegisterStartupScript(this.GetType(), "Succes", "$('#errorAction').show();", true);
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "Succes", "$('#errorAction').show();", true);
            }

        }
    }
}