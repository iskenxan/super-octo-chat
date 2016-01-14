using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Microsoft.AspNet.SignalR.Hubs;
using Microsoft.Owin.Host;
using Microsoft.Owin.Hosting;
using Microsoft.Owin.Builder;
using Microsoft.Owin.Host.HttpListener;
using Newtonsoft.Json;
using Microsoft.AspNet.SignalR.Client;
using Microsoft.AspNet.SignalR.Client.Hubs;

namespace ChatClientWPF
{
    /// <summary>
    /// Interaction logic for Chat.xaml
    /// </summary>
    public partial class Chat : Window
    {
        Subscription sub;
        string userName;
        public Chat( string username)
        {
            InitializeComponent();
            SendButton.Focusable = false;
            sub = MainWindow.myHub.Subscribe("addMessage");
            sub.Received += args =>
                {
                    string message=args[0].ToString();
                    SendMessage(message);
                };
            this.userName = username;
            MainWindow.myHub.Invoke("Join", username);
            GetUsers();
        }


        void SendMessage(string message)
        {
            Dispatcher.BeginInvoke(
                new Action(()=>
                    {
                        ChatListBox.Items.Add(message);
                        if (message.Contains("joined") || message.Contains("left"))
                            GetUsers();
                    }
                    )
                );
        }

        private void SendButton_Click(object sender, RoutedEventArgs e)
        {
            string message = MessageListBox.Text;
            MainWindow.myHub.Invoke("SendMessage", message);
            MessageListBox.Text = String.Empty;
        }


        private void GetUsers()
        {
           
            List<string> users= new List<string>();
            MainWindow.myHub.Invoke<List<string>>("GetUsers").ContinueWith(task =>
            {
                users = task.Result;
            }).Wait();
            UsersListBox.ItemsSource = users;

        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MainWindow.myHub.Invoke("LeaveNotify", userName).Wait();
        }
    }
}
