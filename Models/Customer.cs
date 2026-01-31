using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Models;

[Table("customers")]
public partial class Customer
{
    [Key]
    [Column("customerID")]
    [Required]
    public int CustomerId { get; set; }

    [Column("firstName")]
    [StringLength(50)]
    [Required]
    public string FirstName { get; set; } = null!;

    [Column("lastName")]
    [StringLength(50)]
    [Required]
    public string LastName { get; set; } = null!;

    [Column("email")]
    [StringLength(100)]
    [Required]
    public string? Email { get; set; }

    [Column("phoneNumber")]
    [StringLength(20)]
    [Required]
    public string? PhoneNumber { get; set; }

    [InverseProperty("Customer")]
    public virtual ICollection<Booking> Bookings { get; set; } = new List<Booking>();

    [InverseProperty("Customer")]
    public virtual ICollection<Customerwish> Customerwishes { get; set; } = new List<Customerwish>();
}
