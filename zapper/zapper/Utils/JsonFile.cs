using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.IO;
using Newtonsoft.Json;
using zapper.Model;

namespace zapper.Utils
{
    public static class JsonFile
    {
       public static string JsonDataFile = "userinfo.json";
       public static void CheckFileExists()
       {
            if (!File.Exists(JsonDataFile))
            {
                CreateJsonFile();
            }
       }

       public static void CreateJsonFile()
       {
           FileStream createStream = File.Create(JsonDataFile);
           createStream.Dispose();
       }

       public static List<User> GetJsonFile()
       {
           CheckFileExists();
           string JsonData = File.ReadAllText(JsonDataFile);
           return JsonConvert.DeserializeObject<List<User>>(JsonData);
       }
        public static void SaveUsers(List<User> UserLists) => File.WriteAllText(JsonDataFile, JsonConvert.SerializeObject(UserLists));
    }
}
