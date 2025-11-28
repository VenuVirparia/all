//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Data.SqlClient;


//namespace Database1_CRUD
//{

//    class Program
//    {
//        static void Main()
//        {
//            // Connect to server, but no specific DB
//            string masterConn = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;";

//            using (var conn = new SqlConnection(masterConn))
//            {
//                conn.Open();
//                string createDbQuery = "IF DB_ID('MyAppDB') IS NULL CREATE DATABASE MyAppDB;";

//                using (var cmd = new SqlCommand(createDbQuery, conn))
//                {
//                    cmd.ExecuteNonQuery();
//                }
//            }

//            Console.WriteLine("Database created successfully!");
//        }
//    }

//}