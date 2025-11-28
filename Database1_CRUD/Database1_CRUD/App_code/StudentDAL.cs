using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;

namespace Database1_CRUD
{
    public class Student
    {
        public int RollNo { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
    }

    public class Student_DAL
    {
        private static string GetConnectionString()
        {
            return "Server=your_server_name;Database=your_database_name;User Id=your_user;Password=your_password;";
        }

        public List<Student> GetAllStudents()
        {
            List<Student> studentList = new List<Student>();
            string query = "SELECT RollNo, Name, City FROM Student;";

            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Student student = new Student
                        {
                            RollNo = Convert.ToInt32(reader["RollNo"]),
                            Name = reader["Name"].ToString(),
                            City = reader["City"].ToString()
                        };
                        studentList.Add(student);
                    }
                }
            }
            return studentList;
        }

        public int AddStudent(string name, string city)
        {
            string query = "INSERT INTO Student (Name, City) VALUES (@Name, @City);";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@City", city);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public int UpdateStudent(int rollNo, string name, string city)
        {
            string query = "UPDATE Student SET Name = @Name, City = @City WHERE RollNo = @RollNo;";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@City", city);
                    cmd.Parameters.AddWithValue("@RollNo", rollNo);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public int DeleteStudent(int rollNo)
        {
            string query = "DELETE FROM Student WHERE RollNo = @RollNo;";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@RollNo", rollNo);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }
    }
}