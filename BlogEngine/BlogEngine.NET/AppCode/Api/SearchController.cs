using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using BlogEngine.Core.Packaging;

namespace BlogEngine.NET.AppCode.Api
{
    public class SearchController : ApiController
    {
        //public void OnlySupplySet(bool onlySupply)
        //{
        //   HttpContext.Current.Session[Constants.OnlySummary] = onlySupply;
        //}
        //[Route("api/search/OnlySummarySet/{onlySupply}")]
        //public HttpResponseMessage OnlySummarySet(bool onlySupply)
        //{
        //    //var result = repository.FindById(new Guid(id));
        //    //if (result == null)
        //    //    return Request.CreateResponse(HttpStatusCode.NotFound);
        //    HttpContext.Current.Session[Constants.OnlySummary] = onlySupply;
        //    return Request.CreateResponse(HttpStatusCode.OK);
        //}
    }
}