using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ims.Case.Client;
using Ims.Case.Model;

namespace Ims.Case.Api
{

    public class CaseApiManager : ApiAccessor,
        IAssociationsManager,
        IDocumentsManager,
        IItemsManager,
        IPackagesManager,
        IRubricsManager,
        IDefinitionsManager
    {
        private readonly IAssociationsManager _associationsManager;
        private readonly IDocumentsManager _documentsManager;
        private readonly IItemsManager _itemsManager;
        private readonly IPackagesManager _packagesManager;
        private readonly IRubricsManager _rubricsManager;
        private readonly IDefinitionsManager _definitionsManager;

        public CaseApiManager()
        {
            _associationsManager = new AssociationsManager();
            _documentsManager = new DocumentsManager();
            _itemsManager = new ItemsManager();
            _packagesManager = new PackagesManager();
            _rubricsManager = new RubricsManager();
            _definitionsManager = new DefinitionsManager();
        }

        public CaseApiManager(Configuration configuration) : base(configuration)
        {
        }

        public CaseApiManager(string basePath) : base(basePath)
        {
        }

        public CFAssociation GetCFAssociation(string sourcedId)
        {
            return _associationsManager.GetCFAssociation(sourcedId);
        }

        public async Task<CFAssociation> GetCFAssociationAsync(string sourcedId)
        {
            return await _associationsManager.GetCFAssociationAsync(sourcedId);
        }


        public CFAssociationSet GetCFItemAssociations(string sourcedId)
        {
            return _associationsManager.GetCFItemAssociations(sourcedId);
        }

        public async Task<CFAssociationSet> GetCFItemAssociationsAsync(string sourcedId)
        {
            return await _associationsManager.GetCFItemAssociationsAsync(sourcedId);
        }

        public CFDocumentSet GetAllCFDocuments(int? limit = null, int? offset = null, string sort = null, string orderBy = null, string filter = null, List<string> fields = null)
        {
            return _documentsManager.GetAllCFDocuments(limit, offset, sort, orderBy, filter, fields);
        }

        public Task<CFDocumentSet> GetAllCFDocumentsAsync(int? limit = null, int? offset = null, string sort = null, string orderBy = null, string filter = null, List<string> fields = null)
        {
            return _documentsManager.GetAllCFDocumentsAsync(limit, offset, sort, orderBy, filter, fields);
        }

        public CFDocument GetCFDocument(string sourcedId)
        {
            return _documentsManager.GetCFDocument(sourcedId);
        }

        public Task<CFDocument> GetCFDocumentAsync(string sourcedId)
        {
            return _documentsManager.GetCFDocumentAsync(sourcedId);
        }

        public CFItem GetCFItem(string sourcedId)
        {
            return _itemsManager.GetCFItem(sourcedId);
        }

        public Task<CFItem> GetCFItemAsync(string sourcedId)
        {
            return _itemsManager.GetCFItemAsync(sourcedId);
        }

        public CFPackage GetCFPackage(string sourcedId)
        {
            return _packagesManager.GetCFPackage(sourcedId);
        }

        public Task<CFPackage> GetCFPackageAsync(string sourcedId)
        {
            return _packagesManager.GetCFPackageAsync(sourcedId);
        }

        public CFRubric GetCFRubric(string sourcedId)
        {
            return _rubricsManager.GetCFRubric(sourcedId);
        }

        public Task<CFRubric> GetCFRubricAsync(string sourcedId)
        {
            return _rubricsManager.GetCFRubricAsync(sourcedId);
        }

        public CFAssociationGrouping GetCFAssociationGrouping(string sourcedId)
        {
            return _definitionsManager.GetCFAssociationGrouping(sourcedId);
        }

        public Task<CFAssociationGrouping> GetCFAssociationGroupingAsync(string sourcedId)
        {
            return _definitionsManager.GetCFAssociationGroupingAsync(sourcedId);
        }

        public CFConceptSet GetCFConcept(string sourcedId)
        {
            return _definitionsManager.GetCFConcept(sourcedId);
        }

        public Task<CFConceptSet> GetCFConceptAsync(string sourcedId)
        {
            return _definitionsManager.GetCFConceptAsync(sourcedId);
        }

        public CFItemTypeSet GetCFItemType(string sourcedId)
        {
            return _definitionsManager.GetCFItemType(sourcedId);
        }

        public Task<CFItemTypeSet> GetCFItemTypeAsync(string sourcedId)
        {
            return _definitionsManager.GetCFItemTypeAsync(sourcedId);
        }

        public CFLicense GetCFLicense(string sourcedId)
        {
            return _definitionsManager.GetCFLicense(sourcedId);
        }

        public Task<CFLicense> GetCFLicenseAsync(string sourcedId)
        {
            return _definitionsManager.GetCFLicenseAsync(sourcedId);
        }

        public CFSubjectSet GetCFSubject(string sourcedId)
        {
            return _definitionsManager.GetCFSubject(sourcedId);
        }

        public Task<CFSubjectSet> GetCFSubjectAsync(string sourcedId)
        {
            return _definitionsManager.GetCFSubjectAsync(sourcedId);
        }
    }
}
