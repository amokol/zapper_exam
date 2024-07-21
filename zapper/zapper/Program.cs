using System;
using System.Collections.Generic;
using System.Linq;
using zapper.Common;
using zapper.Model;
using zapper.Utils;

namespace zapper
{
    class Program
    {
        private static int SelectedItem = 0;
        private static List<string> AcceptedAccessType = new List<string> { "0", "1"};
        private static List<User> UserLists;
        static void Main(string[] args)
        {
            
            try
            {
                LoadAllUsers();
                SelectionMessage();
            }
            catch(Exception ex)
            {
               Console.WriteLine("There is an error upon runtime, please re-run again the program.");
            }
        }
        private static void LoadAllUsers()
        {
            UserLists = JsonFile.GetJsonFile(); //load all json data
        }

        private static void ShowAllUsers()
        {
            if (IsUserListsNull())
            {
                Console.WriteLine("No users available");
                return;
            }

            foreach (var UserProfile in UserLists)
            {
                Console.WriteLine($"Username: {UserProfile.UserName}, User Profile: {UserProfile.UserProfile}");
            }
        }
        private static void SelectionMessage()
        {
            Console.WriteLine(Messages.Selections);
            SelectedItem = int.Parse(Console.ReadLine());
            ProcessSelection();
        }

        private static void ProcessSelection()
        {
            switch (SelectedItem)
            {
                case 1: //create user 
                    CreateUser();
                    break;
                case 2: //show all users
                    ShowAllUsers();
                    break;
                case 3: //profile lists
                    GetAllAccess();
                    break;
                case 4: //select user
                    CheckUserAccess();
                    break;
                default:
                    Environment.Exit(0);
                    break;
            }
            SelectionMessage();

        }

        public static bool IsUserListsNull()
        {
            return UserLists == null;
        }
        private static void CreateUser()
        {
            string Username = SetUsername();
            string Access = SetAccess();
            Console.WriteLine($"The following information will be saved: \nUsername: {Username}, Access = {Access}");
            if (IsUserListsNull())
            {
                UserLists = new List<User>();
            }
            UserLists.Add(new User { UserName = Username, UserProfile = Access });
            JsonFile.SaveUsers(UserLists);
            LoadAllUsers();
        }

        private static string SetUsername()
        {
            bool IsUsernameExists = false;
            string Username = "";
            Console.WriteLine("Please enter the name: ");
            while (!IsUsernameExists)
            {
                Username = Console.ReadLine();
                if(IsUserListsNull())
                {
                    IsUsernameExists = true;
                }
                else if(!UserLists.Any(x => x.UserName == Username))
                {
                    IsUsernameExists = true;
                }
                Console.WriteLine("Username already exists, please enter again.");
            }
            return Username;
        }
        private static string SetAccess()
        {
            string Access = "";
            Console.WriteLine("Please set the access(1 = Allow Access, 0 = Not Allow Access): ");
            foreach (var UserProfile in UserProfile.ProfileLists)
            {
                bool IsCorrectAccess = false;
                while (!IsCorrectAccess)
                {
                    Console.WriteLine($"Access ID: {UserProfile.AccessId}, Access Name: {UserProfile.AccessName}");
                    string AccessSelected = Console.ReadLine();
                    if (AcceptedAccessType.Contains(AccessSelected))
                    {
                        IsCorrectAccess = true;
                        Access += AccessSelected;
                    }
                    Console.WriteLine("Incorrect setting input, please try again.");
                }
            }
            return Access;
        }

        private static void GetAllAccess()
        {
            foreach(var UserProfile in UserProfile.ProfileLists)
            {
                Console.WriteLine($"Access ID: {UserProfile.AccessId}, Access Name: {UserProfile.AccessName}");
            }
        }

        private static void CheckUserAccess()
        {
            if (IsUserListsNull())
            {
                Console.WriteLine("No user exists.");
                return;
            }
            User UserInformation = GetUserInformation();
            
            if (UserInformation == null) return; //exit process if no information.
            
            Console.WriteLine("Select Access type to find(Please enter the number of the Access).");
            GetAllAccess();
            bool IsCorrectAccess = false;
            string AccessSelected = "";
            while (!IsCorrectAccess)
            {
                AccessSelected = Console.ReadLine();
                if (AccessSelected.All(char.IsNumber))
                {
                    if(int.Parse(AccessSelected) > 0 && int.Parse(AccessSelected) <= 8) break;
                }
                Console.WriteLine("Incorrect access input, please enter a number from 1 to 8.");
            }
            char[] AccessCharacters = UserInformation.UserProfile.ToCharArray();
            Console.WriteLine($"Selected Username: {UserInformation.UserName}, Access: {UserInformation.UserProfile}");
            Console.WriteLine($"Input: settings = {UserInformation.UserProfile}, setting = {AccessSelected}");
            string SelectedSetting = AccessCharacters[(int.Parse(AccessSelected) - 1)].ToString();
            Console.WriteLine($"Output: {(SelectedSetting.Equals("1"))}");
        }

        private static User GetUserInformation()
        {
            bool IsUserSelected = false;
            while (!IsUserSelected)
            {
                Console.WriteLine("Please enter the username");
                string Username = Console.ReadLine();
                if(UserLists.Any(x=> x.UserName == Username))
                {
                    return UserLists.FirstOrDefault(x => x.UserName == Username);
                }
                Console.WriteLine("No user found, do you want to continue?(Please enter 'y' or 'n')");
                string continueLoop = Console.ReadLine();
                if (!continueLoop.ToLower().Equals("y")) break;
            }
            return null;
        }
    }
}
