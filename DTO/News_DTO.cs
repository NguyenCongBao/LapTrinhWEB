using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class News_DTO
    {
        int newsID, newsState;
        string newsName, newsAuthor, newsPhoto, newsDes, newsContent, newsDate;

        public int NewsID { get => newsID; set => newsID = value; }
        public int NewsState { get => newsState; set => newsState = value; }
        public string NewsName { get => newsName; set => newsName = value; }
        public string NewsAuthor { get => newsAuthor; set => newsAuthor = value; }
        public string NewsPhoto { get => newsPhoto; set => newsPhoto = value; }
        public string NewsDes { get => newsDes; set => newsDes = value; }
        public string NewsContent { get => newsContent; set => newsContent = value; }
        public string NewsDate { get => newsDate; set => newsDate = value; }
    }
}
