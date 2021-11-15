// -----------------------------------------------------------------------
// <copyright file="ItemsManagerApi.cs" company="sped-tx.net">
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
    public interface IItemsManager
    {
        /// <summary>
        /// The REST read request message for the getCFItem() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Item that is to be read from the service provider.</param>
        /// <returns>CFItem.</returns>
        CFItem GetCFItem(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFItem() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Item that is to be read from the service provider.</param>
        /// <returns>Task of CFItem.</returns>
        Task<CFItem> GetCFItemAsync(string sourcedId);
    }
}
