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

		string conString = "Data Source=THEHIVE\\SQLEXPRESS2014;Initial Catalog=CurriculumMapperv5;Integrated Security=true;";
		SqlConnection con;


		[OperationContract]
		public string DoWork(string val)  //function that is exposed 
		{
			return getTableData(val);

		}

		public string makeSQLString(string[] spParams)
		{
			string sql = "EXEC dbo." + spParams[0] + " ";
			for(int i= 1; i<spParams.Length; i++)
			{
				sql = sql + "@param" + i + "='" + spParams[i] + "',";
			}
			sql = sql.Substring(0, sql.Length - 1);

			return sql;
		}

		public string getTableData(string paramsList)
		{
			Dictionary<string, object> tables = new Dictionary<string, object>();
			string[] SQLParams = paramsList.Split(',');

			foreach(string val in SQLParams)
			{
				string[] values = val.Split(':');

				List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
				Dictionary<string, object> row;   //dictionary and list objects to convert to json
				if (openConnection())   //open connection to database
				{
					if (checkTableName(values[0]))
					{
						SqlDataReader dr = executeCommand(makeSQLString(values));  //execute command
						while (dr.Read())
						{
							row = new Dictionary<string, object>();  //get the data and put it in dictionary object
							for (int i = 0; i < dr.FieldCount; i++)
							{
								row.Add(dr.GetName(i), dr[i]);
							}
							rows.Add(row);
						}
						tables.Add(values[0], rows);
						if (!dr.IsClosed)
							dr.Close();
					}
					else
					{
						tables.Add(values[0], "Error");
					}
				}
			}
			return JsonConvert.SerializeObject(tables);  //convert to json 

		}

		public bool checkTableName(string tableName)  //check table name first 
		{
			bool val = false;

			string tableString = @"select SPECIFIC_NAME 
							from information_schema.routines 
							where routine_type = 'PROCEDURE' and SPECIFIC_NAME = '"+tableName+"'";

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
			try
			{
				SqlCommand cmd = new SqlCommand(command, con);
				SqlDataReader dr = cmd.ExecuteReader();
				return dr;
			}
			catch(Exception e)
			{
				return null;
			}

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
