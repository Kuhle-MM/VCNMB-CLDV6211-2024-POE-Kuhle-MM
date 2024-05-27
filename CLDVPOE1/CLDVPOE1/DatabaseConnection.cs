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
        static string connectionString = "Server=tcp:kuhle.database.windows.net,1433;Initial Catalog=KuhleMlinganiso;Persist Security Info=False;User ID=azuresql;Password=Kuhle500;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
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
            connection.Open();
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
                UserInfomation temp = new UserInfomation
                {
                    email = dt.Rows[0]["Email"].ToString(),
                    name = dt.Rows[0]["Name"].ToString(),
                    staff = dt.Rows[0]["Staff"].ToString().Equals("yes"),
                    id = Convert.ToInt32(dt.Rows[0]["UserId"].ToString())
                };
                return temp;
            }

        }

        public List<ArtWork> GetArtWorks()
        {
            List<ArtWork> myWork = new List<ArtWork>();
            connection.Open();
            string sql = "select * from Work";
            command = new SqlCommand(sql, connection);
            command.ExecuteNonQuery();

            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();

            foreach (DataRow row in dt.Rows)
            {
                myWork.Add(new ArtWork
                {
                    artID = Convert.ToInt32(row["WorkID"].ToString()),
                    name = row["Name"].ToString(),
                    description = row["Description"].ToString(),
                    price = Convert.ToDouble(row["Price"].ToString()),
                    imageUrl = row["ImageUrl"].ToString(),
                    category = row["Category"].ToString(),
                    availability = Convert.ToInt32(row["Availability"].ToString())

                });
            }
            return myWork;

        }

        public void SubmitOrder(List<ArtWork> cart)
        {
            double total = 0;
            string orderString = "";

            foreach (ArtWork artwork in cart)
            {
                total += artwork.price;
                orderString += $"{artwork.name},";
            }

            connection.Open();
            string sql = "INSERT INTO [Order] VALUES (@OrderTime, @OrderTotal, @OrderDetails, @UserID, @OrderStatus)";
            command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@OrderTime", DateTime.Now);
            command.Parameters.AddWithValue("@OrderTotal", total);
            command.Parameters.AddWithValue("@OrderDetails", orderString);
            command.Parameters.AddWithValue("@UserID", UserHolder.loggedInUser.id);
            command.Parameters.AddWithValue("@OrderStatus", "open");
            command.ExecuteNonQuery();
            connection.Close(); 
            

        }

        public List<Order> GetAllOrders()
        {
            List<Order> orders = new List<Order>(); 
            connection.Open();
            string sql = "Select * From [Order]";
            command = new SqlCommand(sql, connection);
            command.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            connection.Close();

            foreach (DataRow row in dt.Rows)
            {
                orders.Add(new Order{
                    orderID = Convert.ToInt32(row["OrderID"].ToString()),
                    orderTime = DateTime.Parse(row["OrderTime"].ToString()),
                    orderDetails = row["OrderDetails"].ToString(),
                    orderTotal = Double.Parse(row["OrderTotal"].ToString()),
                    userId = Convert.ToInt32(row["UserID"]),
                    orderStatus = row["OrderStatus"].ToString()

                });
            }

            return orders;
        }

        public List<Order> GetUserOrders(int userID)
        {
            List<Order> orders = new List<Order>();
            connection.Open();
            string sql = "Select * From [Order] where UserId = @UserID";
            command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("UserId", userID);
            command.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            connection.Close ();

            foreach (DataRow row in dt.Rows)
            {
                orders.Add(new Order
                {
                    orderID = Convert.ToInt32(row["OrderID"].ToString()),
                    orderTime = DateTime.Parse(row["OrderTime"].ToString()),
                    orderDetails = row["OrderDetails"].ToString(),
                    orderTotal = Double.Parse(row["OrderTotal"].ToString()),
                    userId = Convert.ToInt32(row["UserID"]),
                    orderStatus = row["OrderStatus"].ToString()


                });
            }

            return orders;
        }

        public void UpdateOrder(int orderID, string currentStatus)
        {
            connection.Open();
            string sql = "Update [Order] set OrderStatus = @currentStatus where OrderId = @OrderID";
            command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@currentStatus", currentStatus);
            command.Parameters.AddWithValue ("@OrderId", orderID);  
            command.ExecuteNonQuery();
            connection.Close();

        }

        public void AddNewArtWork(ArtWork art)
        {
            connection.Open ();
            string sql = "Insert into Work values (@Name, @Description, @Price, @ImageUrl, @Catagory, @Availability)";
            command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@Name", art.name);
            command.Parameters.AddWithValue("@Description", art.description);
            command.Parameters.AddWithValue("@Price", art.price);
            command.Parameters.AddWithValue("@ImageUrl", art.imageUrl);
            command.Parameters.AddWithValue("@Catagory", art.category);
            command.Parameters.AddWithValue("@Availability", art.availability);
            command.ExecuteNonQuery ();
            connection.Close();
        }

        public List<ImageCategory> GetArtWorksGroupedByCategory()
        {
            List<ArtWork> artworks = GetArtWorks();
            var groupedData = new List<ImageCategory>();

            foreach (var artwork in artworks)
            {
                var category = groupedData.Find(c => c.CategoryName == artwork.category);
                if (category == null)
                {
                    category = new ImageCategory
                    {
                        CategoryName = artwork.category,
                        ArtWorks = new List<ArtWork>()
                    };
                    groupedData.Add(category);
                }
                category.ArtWorks.Add(artwork);
            }

            return groupedData;
        }

    }
}