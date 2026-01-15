using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Models;

[Table("bookings")]
[Index("AccommodationId", Name = "accommodationID")]
[Index("CustomerId", Name = "customerID")]
public partial class Booking
{
    [Key]
    [Column("bookingID")]
    public int BookingId { get; set; }

    [Column("customerID")]
    public int CustomerId { get; set; }

    [Column("accommodationID")]
    public int AccommodationId { get; set; }

    [Column("bookingDate")]
    public DateOnly? BookingDate { get; set; }

    [Column("arrivalDate")]
    public DateOnly? ArrivalDate { get; set; }

    [Column("departureDate")]
    public DateOnly? DepartureDate { get; set; }

    [Column("numberOfGuests")]
    public int? NumberOfGuests { get; set; }

    [Column("totalPrice")]
    [Precision(10, 2)]
    public decimal? TotalPrice { get; set; }

    [ForeignKey("AccommodationId")]
    [InverseProperty("Bookings")]
    public virtual Accommodation Accommodation { get; set; } = null!;

    [ForeignKey("CustomerId")]
    [InverseProperty("Bookings")]
    public virtual Customer Customer { get; set; } = null!;
}
