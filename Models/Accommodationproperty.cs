using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Models;

[PrimaryKey("AccommodationId", "PropertyId")]
[Table("accommodationproperties")]
[Index("PropertyId", Name = "propertyID")]
public partial class Accommodationproperty
{
    [Key]
    [Column("accommodationID")]
    public int AccommodationId { get; set; }

    [Key]
    [Column("propertyID")]
    public int PropertyId { get; set; }

    [Column("value")]
    [StringLength(50)]
    public string? Value { get; set; }

    [ForeignKey("AccommodationId")]
    [InverseProperty("Accommodationproperties")]
    public virtual Accommodation Accommodation { get; set; } = null!;

    [ForeignKey("PropertyId")]
    [InverseProperty("Accommodationproperties")]
    public virtual Property Property { get; set; } = null!;
}
