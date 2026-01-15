using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Models;

[Table("properties")]
public partial class Property
{
    [Key]
    [Column("propertyID")]
    public int PropertyId { get; set; }

    [Column("name")]
    [StringLength(50)]
    public string? Name { get; set; }

    [InverseProperty("Property")]
    public virtual ICollection<Accommodationproperty> Accommodationproperties { get; set; } = new List<Accommodationproperty>();

    [InverseProperty("Property")]
    public virtual ICollection<Customerwish> Customerwishes { get; set; } = new List<Customerwish>();
}
