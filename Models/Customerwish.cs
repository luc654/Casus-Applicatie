using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Models;

[PrimaryKey("CustomerId", "WishId")]
[Table("customerwishes")]
[Index("PropertyId", Name = "propertyID")]
public partial class Customerwish
{
    [Key]
    [Column("customerID")]
    public int CustomerId { get; set; }

    [Key]
    [Column("wishID")]
    public int WishId { get; set; }

    [Column("propertyID")]
    public int PropertyId { get; set; }

    [Column("value")]
    [StringLength(50)]
    public string? Value { get; set; }

    [ForeignKey("CustomerId")]
    [InverseProperty("Customerwishes")]
    public virtual Customer Customer { get; set; } = null!;

    [ForeignKey("PropertyId")]
    [InverseProperty("Customerwishes")]
    public virtual Property Property { get; set; } = null!;
}
