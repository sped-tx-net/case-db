using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using System.Threading;
using Ims.Case.Model;

namespace ConsoleTester
{
    public class DocumentPackage
    {
        public DocumentPackage(CFPackage package)
        {
            Items = package.CFItems;
            Document = package.CFDocument;
            Associations = package.CFAssociations;
        }

        public CFPckgDocument Document { get; set; }

        public List<CFPckgItem> Items { get; set; }

        public List<CFPckgAssociation> Associations { get; set; }
    }
}
