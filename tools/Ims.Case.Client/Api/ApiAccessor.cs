using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ims.Case.Client;
using Ims.Case.Model;

namespace Ims.Case.Api
{
    public class ApiAccessor : IApiAccessor
    {
        public ApiAccessor()
        {
            Configuration = Configuration.Default;
            ExceptionFactory = Configuration.DefaultExceptionFactory;
        }

        public ApiAccessor(Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                Configuration = Configuration.Default;
            else
                Configuration = configuration;

            ExceptionFactory = Configuration.DefaultExceptionFactory;
        }

        public ApiAccessor(string basePath)
        {
            Configuration = new Configuration { BasePath = basePath };

            ExceptionFactory = Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Gets or sets the configuration object...
        /// </summary>
        public Configuration Configuration { get; set; }


        public ExceptionFactory ExceptionFactory { get; set; }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <returns>The <see cref="string"/>.</returns>
        public string GetBasePath()
        {
            return Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }
    }
}
