using PeaceHotel.Models;

namespace PeaceHotel.UserPage
{
    internal class ViewModel
    {
        public Payment Payment { get; set; }
        public Booking Booking { get; set; }
        public Room Room { get; set; }
        public RoomType RoomType { get; set; }
        public aspnet_Users aspnet_Users { get; set; }
    }
}