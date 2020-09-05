using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class User_DTO
    {
        int userID_, userState;
        string userName_, password_, email_, phone_, address_, role_;

        public int UserID_ { get => userID_; set => userID_ = value; }
        public int UserState { get => userState; set => userState = value; }
        public string UserName_ { get => userName_; set => userName_ = value; }
        public string Password_ { get => password_; set => password_ = value; }
        public string Email_ { get => email_; set => email_ = value; }
        public string Phone_ { get => phone_; set => phone_ = value; }
        public string Address_ { get => address_; set => address_ = value; }
        public string Role_ { get => role_; set => role_ = value; }
    }
}
