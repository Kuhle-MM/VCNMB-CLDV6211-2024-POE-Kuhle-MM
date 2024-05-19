using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CLDVPOE1
{
    public class DatabaseConnection
    {
        static string connectionString = "Data Source = labVMH8OX\\SQLEXPRESS;Initial Catalog = KhumaloCraftDB; Integrated Security = true";
        static SqlConnection connection = new SqlConnection(connectionString);
        static SqlCommand command;

        public void ConnectToDB()
        {
            connection.Open();
        }

        public void DisconnectFromDB()
        {
            connection.Close();
        }

        public void SignUp(string name, string surname, string email, string password, string staff)
        {
            connection.Open();//Change later and use the methods above to open and close the connection
            string sql = "INSERT INTO [User](Name,Surname, Email, Password, Staff) Values (@name,@surname,@email, @password, @staff)";
            command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@name", name);
            command.Parameters.AddWithValue("@surname", surname);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@password", password);
            command.Parameters.AddWithValue("@staff", staff);
            command.ExecuteNonQuery();
            connection.Close();
        }

        public UserInfomation UserLogin(string email, string password)
        {
            connection.Open ();
            string sql = "SELECT * FROM [User] WHERE email = @email AND password = @password";
            command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@password", password);
            command.ExecuteNonQuery();

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            connection.Close();

            if (dt.Rows.Count == 0)
            {
                return null;
            }
            else
            {
                UserInfomation temp = new UserInfomation{
                    email = dt.Rows[0]["Email"].ToString(),
                    name = dt.Rows[0]["Name"].ToString(),
                    staff = dt.Rows[0]["Staff"].ToString().Equals("yes"),
                    id = Convert.ToInt32(dt.Rows[0]["UserId"].ToString())
                };
                return temp;
            }

        }
    }
}