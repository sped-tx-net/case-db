// -----------------------------------------------------------------------
// <copyright file="Program.cs" company="sped-tx.net">
//     Copyright © 2021 sped-tx.net. All rights reserved.
// </copyright>
// -----------------------------------------------------------------------

using System;
using System.Collections.Generic;
using Ims.Case.Api;
using Ims.Case.Model;
using Ims.Case.Client;
using System.Diagnostics;

namespace ConsoleTester
{
    /// <summary>
    /// Defines the <see cref="Program" />.
    /// </summary>
    internal static class Program
    {
        /// <summary>
        /// The Main.
        /// </summary>
        /// <param name="args">The args<see cref="string[]"/>.</param>
        internal static void Main(string[] args)
        {
            var stopWatch = Stopwatch.StartNew();

            var manager = new CaseApiManager();
            var documents = manager.GetAllCFDocuments().CFDocuments;
            var subjects = new HashSet<CFSubject>(EqualityComparers.CFSubject);
            var itemTypes = new HashSet<CFItemType>(EqualityComparers.CFItemType);
            var associations = new List<CFPckgAssociation>();
            var items = new List<CFPckgItem>();

            var database = new Database("Server=.;Database=CASE-DB;Integrated Security=True");

            database.Clear();

            var documentPackages = new List<DocumentPackage>();

            int total = Process(manager, documents, subjects, itemTypes, documentPackages);
            int current = 0;

            var progressBar = new ProgressBar();

            progressBar.Report(current);

            foreach (var subject in subjects)
            {
                current++;
                database.InsertSubject(subject);
                ReportProgress(total, current, progressBar);
            }

            foreach (var itemType in itemTypes)
            {
                current++;
                database.InsertItemType(itemType);
                ReportProgress(total, current, progressBar);
            }

            foreach (var documentPackage in documentPackages)
            {
                var document = documentPackage.Document;

                current++;
                database.InsertDocument(document);
                ReportProgress(total, current, progressBar);

                foreach (var association in documentPackage.Associations)
                {
                    current++;
                    database.InsertAssociation(association, document.Identifier);
                    ReportProgress(total, current, progressBar);
                }

                foreach (var item in documentPackage.Items)
                {
                    current++;
                    database.InsertItem(item, document.Identifier);
                    ReportProgress(total, current, progressBar);
                }
            }

            Console.WriteLine();
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine($"Elapsed Time: {stopWatch.Elapsed.TotalSeconds / 60} minutes");
            Console.ResetColor();

            Console.WriteLine("");
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();

        }

        private static void ReportProgress(int total, int current, ProgressBar progressBar)
        {
            double report = (current / total) * 100;
            progressBar.Report(report);
        }

        private static int Process(CaseApiManager manager, List<CFDocument> documents, HashSet<CFSubject> subjects, HashSet<CFItemType> itemTypes, List<DocumentPackage> documentPackages)
        {
            int result = 0;

            foreach (var document in documents)
            {
                Logger.Log($"Reading package '{document.Title}'");

                var package = manager.GetCFPackage(document.CFPackageURI.Identifier);

                result++;

                result += package.CFItems.Count;
                result += package.CFAssociations.Count;

                documentPackages.Add(new DocumentPackage(package));

                foreach (var itemType in package.CFDefinitions.CFItemTypes)
                {
                    result++;
                    itemTypes.Add(itemType);
                }

                foreach (var subject in package.CFDefinitions.CFSubjects)
                {
                    result++;
                    subjects.Add(subject);
                }
            }

            return result;
        }

    }

    public class Operation
    {
        public Func<string, CFPackage> Function { get; set; }
    }
}
