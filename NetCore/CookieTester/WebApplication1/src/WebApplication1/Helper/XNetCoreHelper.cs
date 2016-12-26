using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication1.Helper
{
    public static class XNetCoreHelper
    {
        internal static void SetCookie(this HttpResponseHeaders headers, Cookie cookie)
        {           
            var cookieBuilder = new StringBuilder(WebUtility.UrlEncode(cookie.Name) + "=" + WebUtility.UrlEncode(cookie.Value));
            if (cookie.HttpOnly)
            {
                cookieBuilder.Append("; HttpOnly");
            }

            if (cookie.Secure)
            {
                cookieBuilder.Append("; Secure");
            }

            headers.Add("Set-Cookie", cookieBuilder.ToString());
        }
    }
}
