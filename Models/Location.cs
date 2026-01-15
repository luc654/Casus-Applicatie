using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Models;

[Table("location")]
public partial class Location
{
    [Key]
    [Column("locationID")]
    public int LocationId { get; set; }

    [Column("city")]
    [StringLength(100)]
    public string? City { get; set; }

    [Column("province")]
    [StringLength(100)]
    public string? Province { get; set; }

    [Column("country")]
    [StringLength(100)]
    public string? Country { get; set; }

    [InverseProperty("Location")]
    public virtual ICollection<Accommodation> Accommodations { get; set; } = new List<Accommodation>();
}
