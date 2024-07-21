using System;
using System.Collections.Generic;
using System.Text;

namespace zapper.Common
{
    public static class Messages
    {
        public const string MainSelection = "Select a Number to do: \n";
        public const string CreateUser = "1. Create User \n";
        public const string ShowAllUser = "2. Show All User \n";
        public const string ProfileList = "3. Profile List \n";
        public const string SelectUser = "4. Select User \n";
        public const string ExitProgram = "5. Exit";
        public static string Selections = $"{MainSelection}{CreateUser}{ShowAllUser}{ProfileList}{SelectUser}{ExitProgram}";
    }
}
