using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

namespace Lab
{
    [WebService(Namespace = "http://tempuri.org/")]
    public class AreaService : System.Web.Services.WebService
    {
        [WebMethod]
        public double CalculateRectangleArea(double height, double width)
        {
            HttpContext.Current.Response.Write("Method is called<br>");

            return height * width;
        }
    }
}