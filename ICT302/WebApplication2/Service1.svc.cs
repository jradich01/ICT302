using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace ICT302WebService
{
	[ServiceContract(Namespace = "")]
	[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
	public class Service1: IDisposable
	{
		// To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
		// To create an operation that returns XML,
		//     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
		//     and include the following line in the operation body:
		//         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";

		//string conString = "Data Source=THEHIVE\\SQLEXPRESS2014;Initial Catalog=CurriculumMapper;Integrated Security=true;";
		string conString = "Data Source #serverName#;Initial Catalog=#databaseName#;Integrated Security=true;";
		SqlConnection con;


		[OperationContract]
		public string DoWork(string val)  //function that is exposed 
		{
			if (checkTableName(val)) //check if table exists 
			{
				return getTableData(val);  //if it does get the data
			}
			return "Error";
		}

		public string getTableData(string tableName)
		{

			List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
			Dictionary<string, object> row;   //dictionary and list objects to convert to json
			if (openConnection())   //open connection to database
			{
				SqlDataReader dr = executeCommand("SELECT * FROM " + tableName);  //execute command
				while (dr.Read())
				{
					row = new Dictionary<string, object>();  //get the data and put it in dictionary object
					for(int i = 0;i<dr.FieldCount; i++)
					{ 
						row.Add(dr.GetName(i), dr[i]);
					}
					rows.Add(row);
				}
				if (!dr.IsClosed)
					dr.Close();
			}
			return JsonConvert.SerializeObject(rows);  //convert to json 

		}

		public bool checkTableName(string tableName)  //check table name first 
		{
			bool val = false;
			string tableString = @"select TABLE_NAME from (
				select TABLE_NAME from INFORMATION_SCHEMA.TABLES
				union
				select TABLE_NAME from INFORMATION_SCHEMA.VIEWS)a
				where TABLE_NAME = '" + tableName +"'";
			if (openConnection())
			{
				SqlDataReader dr = executeCommand(tableString);
				if (dr.Read())
				{
					val = true; //return true if it exists 
				}
				else
				{
					val= false;  //return false if not
				}
				if (!dr.IsClosed)
					dr.Close();
			}
			else
			{
				val= false;
			}
			return val;


		}

		public bool openConnection()  
		{
			try
			{
				if (con == null) //create new connection if not done yet
				{
					con = new SqlConnection(conString);
				}
				if (con.State == System.Data.ConnectionState.Closed)  //if connection has closed from some reason, open it
				{
					con.Open();
					
				}
				return true;
			}
			catch(Exception e)
			{
				return false;
				//problem opening connection.
			}
		}

		public SqlDataReader executeCommand(string command)  //execute a command and return a dataReader object
		{
			openConnection();
			SqlCommand cmd = new SqlCommand(command, con);
			SqlDataReader dr = cmd.ExecuteReader();
			return dr;

		}

		void IDisposable.Dispose() 
		{
			Dispose(true);
		}

		protected virtual void Dispose(bool disposing) //Dispose to clean up any open connections
		{
			if (disposing)
			{
				try
				{
					if (con != null)
					{
						if (con.State == System.Data.ConnectionState.Open)
						{
							con.Close();

						}
					}
				}
				catch(Exception e)
				{
					//problem closing connection
				}
			}
		}

	}
}
