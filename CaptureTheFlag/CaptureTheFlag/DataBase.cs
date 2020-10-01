﻿using CaptureTheFlag;
using CaptureTheFlag.Command;
using MySql.Data.MySqlClient;
using SampSharp.GameMode.Events;
using SampSharp.GameMode.World;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Reflection;
using System.Text;

namespace CaptureTheFlag
{
    class DataBase
    {
        public DataBase()
        {
            Initialize();
        }

        public void Initialize()
        {
            server = "localhost";
            database = "user";
            user = "root";
            password = "3042024513";

            dbconnection = new MySqlConnection($"SERVER={server};DATABASE={database};UID={user};PASSWORD={password};");
        }
        public bool OpenConnection()
        {
            try
            {
                dbconnection.Open();
                return true;
            }
            catch(MySqlException ex)
            {
                switch (ex.Number)
                {
                    case 0:
                        Console.WriteLine("No se pudo conectar al servidor.");
                        break;

                    case 1045:
                        Console.WriteLine("Error en el usuario/clave, intente de nuevo.");
                        break;
                }
                return false;
            }
        }

        public bool CloseConnection()
        {
            try
            {
                dbconnection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }


        public void Insert(string query)
        {
            if (this.OpenConnection())
            {
                MySqlCommand sqlCommand = new MySqlCommand(query, dbconnection);
                sqlCommand.ExecuteNonQuery();

                this.CloseConnection();
            }
            else
                Console.WriteLine("La DB no está abierta");
        }

        public void SaveData(Player player)
        {
            if (this.OpenConnection())
            {
                String query = $"INSERT INTO usuarios(Name, DEATHS, PASS, NIVELADMIN, NIVELVIP) VALUES({player.Name}, {player.Data.Deaths}, {player.Data.Password}, {player.Data.LevelAdmin}, {player.Data.LevelVip})";
                
                MySqlCommand sqlCommand = new MySqlCommand(query, dbconnection);
                
                sqlCommand.ExecuteNonQuery();

                this.CloseConnection();
            }
        }
        //Variables
        private MySqlConnection dbconnection;
        private string server;
        private string database;
        private string user;
        private string password;
    }


}
