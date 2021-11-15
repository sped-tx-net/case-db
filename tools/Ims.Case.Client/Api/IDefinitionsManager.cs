// -----------------------------------------------------------------------
// <copyright file="DefinitionsManagerApi.cs" company="sped-tx.net">
//     Copyright © 2021 sped-tx.net. All rights reserved.
// </copyright>
// -----------------------------------------------------------------------

using Ims.Case.Client;
using Ims.Case.Model;
using System.Threading;
using System.Threading.Tasks;

namespace Ims.Case.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints.
    /// </summary>
    public interface IDefinitionsManager
    {
        /// <summary>
        /// The REST read request message for the getCFAssociationGrouping() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework AssociationGrouping that is to be read from the service provider.</param>
        /// <returns>CFAssociationGrouping.</returns>
        CFAssociationGrouping GetCFAssociationGrouping(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFAssociationGrouping() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework AssociationGrouping that is to be read from the service provider.</param>
        /// <returns>Task of CFAssociationGrouping.</returns>
        Task<CFAssociationGrouping> GetCFAssociationGroupingAsync(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFConcept() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Concept that is to be read from the service provider.</param>
        /// <returns>CFConceptSet.</returns>
        CFConceptSet GetCFConcept(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFConcept() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Concept that is to be read from the service provider.</param>
        /// <returns>Task of CFConceptSet.</returns>
        Task<CFConceptSet> GetCFConceptAsync(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFItemType() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework ItemType that is to be read from the service provider.</param>
        /// <returns>CFItemTypeSet.</returns>
        CFItemTypeSet GetCFItemType(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFItemType() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework ItemType that is to be read from the service provider.</param>
        /// <returns>Task of CFItemTypeSet.</returns>
        Task<CFItemTypeSet> GetCFItemTypeAsync(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFLicense() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework License that is to be read from the service provider.</param>
        /// <returns>CFLicense.</returns>
        CFLicense GetCFLicense(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFLicense() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework License that is to be read from the service provider.</param>
        /// <returns>Task of CFLicense.</returns>
        Task<CFLicense> GetCFLicenseAsync(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFSubject() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Subject that is to be read from the service provider.</param>
        /// <returns>CFSubjectSet.</returns>
        CFSubjectSet GetCFSubject(string sourcedId);

        /// <summary>
        /// The REST read request message for the getCFSubject() API call.
        /// </summary>
        /// <param name="sourcedId">The UUID that identifies the Competency Framework Subject that is to be read from the service provider.</param>
        /// <returns>Task of CFSubjectSet.</returns>
        Task<CFSubjectSet> GetCFSubjectAsync(string sourcedId);

    }
}
