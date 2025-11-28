using System;
using System.Web.UI;

namespace Lab
{
    public partial class AreaCalculator : Page
    {
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                double height = double.Parse(txtHeight.Text);
                double width = double.Parse(txtWidth.Text);

                Lab.AreaService service = new Lab.AreaService();
                double area = service.CalculateRectangleArea(height, width);

          
                // Display the result
                lblResult.Text = "The area of the rectangle is: "+ area;
            }
            catch (FormatException)
            {
                lblResult.Text = "Please enter valid numbers for height and width.";
            }
            catch (Exception ex)
            {
                lblResult.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}