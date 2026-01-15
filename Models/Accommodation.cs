using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Models;

[Table("accommodations")]
[Index("LocationId", Name = "locationID")]
public partial class Accommodation
{
    [Key]
    [Column("accommodationID")]
    public int AccommodationId { get; set; }

    [Column("locationID")]
    public int LocationId { get; set; }

    [Column("name")]
    [StringLength(100)]
    public string Name { get; set; } = null!;

    [Column("description", TypeName = "text")]
    public string? Description { get; set; }

    [Column("price")]
    [Precision(10, 2)]
    public decimal? Price { get; set; }

    [Column("imageURL")]
    [StringLength(255)]
    public string? ImageUrl { get; set; }

    [InverseProperty("Accommodation")]
    public virtual ICollection<Accommodationproperty> Accommodationproperties { get; set; } = new List<Accommodationproperty>();

    [InverseProperty("Accommodation")]
    public virtual ICollection<Booking> Bookings { get; set; } = new List<Booking>();

    [ForeignKey("LocationId")]
    [InverseProperty("Accommodations")]
    public virtual Location Location { get; set; } = null!;
}
