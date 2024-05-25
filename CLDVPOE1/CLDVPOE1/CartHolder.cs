using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CLDVPOE1
{
    public static class CartHolder
    {
        public static List<ArtWork> cart = new List<ArtWork>();
    }

    public static class UserHolder
    {
        public static UserInfomation loggedInUser;
    }
}