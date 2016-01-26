using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;

namespace ChatClientWPF
{
    class User:IDataErrorInfo
    {
        // This class serves to notify user logging-in from LoginWindow when he tries to login with blank username
        public string UserName { get; set; }
        public string Error { get; set; }

        public string this[string columnName]
        {
            get
            {
                string result = null;
                if (columnName == "UserName")
                {
                    if (this.UserName=="")
                    {
                        result = "User name cannot be left empty";
                    }
                }
                return result;
            }
        }
    }
}
