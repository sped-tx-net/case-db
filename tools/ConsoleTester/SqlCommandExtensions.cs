using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Ims.Case.Model;

namespace ConsoleTester
{

    internal static class SqlCommandExtensions
    {
        public static void SetNull(this SqlCommand source)
        {
            foreach (SqlParameter parameter in source.Parameters)
            {
                if (parameter.Value == null)
                    parameter.Value = DBNull.Value;
            }
        }
    }
}
