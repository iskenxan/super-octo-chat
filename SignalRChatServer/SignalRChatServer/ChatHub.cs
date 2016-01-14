using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using System.Threading.Tasks;

namespace SignalRChatServer
{
    [HubName ("ChatHub")]
    public class ChatHub : Hub
    {

        public void  SendMessage(string message)
        {
            string formattedString=String.Format("{0}:{1}",UsersList.Users[Context.ConnectionId],message);
            Clients.All.addMessage(formattedString);
        }


        public void Join(string username)
        {
            UsersList.Users.Add(Context.ConnectionId, username);
            Clients.All.addMessage(username + " has joined the chat!");
        }


        public List<string> GetUsers()
        {
            return UsersList.Users.Values.ToList();
        }

        public void LeaveNotify(string username)
        {
            UsersList.Users.Remove(Context.ConnectionId);
            Clients.Others.addMessage(username + " has left the chat!");

        }

    }


    public static class UsersList
    {
        public static Dictionary<string,string> Users= new Dictionary<string,string>();

    }

}