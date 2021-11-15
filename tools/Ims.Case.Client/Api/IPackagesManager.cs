// -----------------------------------------------------------------------
// <copyright file="PackagesManagerApi.cs" company="sped-tx.net">
//     Copyright © 2021 sped-tx.net. All rights reserved.
// </copyright>
// -----------------------------------------------------------------------

using System.Threading.Tasks;
using Ims.Case.Client;
using Ims.Case.Model;

namespace Ims.Case.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints.
    /// </summary>
    public interface IPackagesManager
    {
        /// <summary>
        /// The REST read request message for the getCFPackage() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Document that is to be read from the service provider and supplied with all of its component artefacts.</param>
        /// <returns>CFPackage.</returns>
        CFPackage GetCFPackage(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFPackage() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Document that is to be read from the service provider and supplied with all of its component artefacts.</param>
        /// <returns>Task of CFPackage.</returns>
        Task<CFPackage> GetCFPackageAsync(string sourcedId);
    }
}
