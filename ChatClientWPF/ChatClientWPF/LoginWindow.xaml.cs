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
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAnimatedGif;
using Microsoft.AspNet.SignalR.Hubs;
using Microsoft.Owin.Host;
using Microsoft.Owin.Hosting;
using Microsoft.Owin.Builder;
using Microsoft.Owin.Host.HttpListener;
using Newtonsoft.Json;
using Microsoft.AspNet.SignalR.Client;
using Microsoft.AspNet.SignalR.Client.Hubs;
using System.Threading;

namespace ChatClientWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
       static public HubConnection connection;
       static public IHubProxy myHub;
       Chat chatwindow;
       User user;
       
        public MainWindow()
        {
            InitializeComponent();
            connection = new HubConnection(@"http://iskenxan-001-site1.btempurl.com/signalr");
            myHub = connection.CreateHubProxy("ChatHub");
             user = new User();
            UserNameTextBox.Focus();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
           BindingExpression be = UserNameTextBox.GetBindingExpression(TextBox.TextProperty);
           be.UpdateSource();
           string username = user.UserName;
            if (!String.IsNullOrEmpty(username))
            {
              LoginProgress.Visibility = Visibility.Visible;
                Thread connectT = new Thread(() =>
                {
                    try
                    {
                        connection.Start().Wait();
                        if (connection.State == Microsoft.AspNet.SignalR.Client.ConnectionState.Connected)
                        {
                            Application.Current.Dispatcher.BeginInvoke(
                                    new Action(() =>
                                    {
                                        chatwindow = new Chat(username);
                                        this.Close();
                                        chatwindow.ShowDialog();
                                    })
                                    );
                        }
                        else
                        {
                            MessageBox.Show("Connection Failed");
                            Dispatcher.BeginInvoke(new Action(() => this.Close()));
                        }
                    }

                    catch (Exception)
                    {
                        MessageBox.Show("Connection Failed");
                        Dispatcher.BeginInvoke(new Action(() => this.Close()));

                    }
                });

                connectT.SetApartmentState(ApartmentState.STA);
                connectT.Start();
            }
            else
            {

            }
        }

    }
}
