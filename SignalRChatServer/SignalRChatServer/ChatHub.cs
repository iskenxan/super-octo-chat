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
        /// <summary>
        /// Sends a message to all chat recipients
        /// </summary>
        /// <param name="message"></param>
        public void  SendMessage(string message)
        {
            string formattedString=String.Format("{0}:{1}",UsersList.Users[Context.ConnectionId],message);
            Clients.All.addMessage(formattedString);
        }

        /// <summary>
        /// Adds the user to the Collection of all the users in the chat
        /// </summary>
        /// <param name="username"></param>
        public void Join(string username)
        {
            UsersList.Users.Add(Context.ConnectionId, username);
            Clients.All.addMessage(username + " has joined the chat!");
        }

        /// <summary>
        /// Returns a list of all the users in the chat
        /// </summary>
        /// <returns></returns>
        public List<string> GetUsers()
        {
            return UsersList.Users.Values.ToList();
        }
        /// <summary>
        /// Sends a message to all other users , telling them that the user has left the chat
        /// </summary>
        /// <param name="username"></param>
        public void LeaveNotify(string username)
        {
            UsersList.Users.Remove(Context.ConnectionId);
            Clients.Others.addMessage(username + " has left the chat!");

        }

    }

    //This dictionary contains a connection Id and username of every user in the chat
    public static class UsersList
    {
        public static Dictionary<string,string> Users= new Dictionary<string,string>();

    }

}