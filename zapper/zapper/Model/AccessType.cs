using System;
using System.Collections.Generic;
using System.Text;

namespace zapper.Model
{
    public class AccessType
    {
        public int AccessId { get; set; }
        public String AccessName { get; set; }
    }

    public static class UserProfile
    {
        public static List<AccessType> ProfileLists = new List<AccessType>{ 
                                                                            new AccessType { AccessId = 1, AccessName = "SMS Notification Enabled"}, 
                                                                            new AccessType { AccessId = 2, AccessName = "Push Notification Enabled"}, 
                                                                            new AccessType { AccessId = 3, AccessName = "Bio-metrics Enabled"}, 
                                                                            new AccessType { AccessId = 4, AccessName = "Camera Enabled"}, 
                                                                            new AccessType { AccessId = 5, AccessName = "Location Enabled"}, 
                                                                            new AccessType { AccessId = 6, AccessName = "NPC Enabled"}, 
                                                                            new AccessType { AccessId = 7, AccessName = "Vouchers Enabled"}, 
                                                                            new AccessType { AccessId = 8, AccessName = "Loyalty Enabled"}
                                                                          };
    }
}
