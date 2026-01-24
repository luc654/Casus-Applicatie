using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql.Scaffolding.Internal;

namespace Casus_Applicatie.Models;

public partial class CasusDbContext : DbContext
{

    // This was all build from scaffolding the existing database?
    // I don't know how, or why, or what any of this does. But it seems to be working. 
    // See this as an eloquent model like in laravel, but a global instance for ALL tables / models. 
    private readonly ILogger<CasusDbContext> _logger;
    public CasusDbContext()
    {
    }

    public CasusDbContext(DbContextOptions<CasusDbContext> options, ILogger<CasusDbContext> logger)
        : base(options)
    {
        _logger = logger;
    }

    public virtual DbSet<Accommodation> Accommodations { get; set; }

    public virtual DbSet<Accommodationproperty> Accommodationproperties { get; set; }

    public virtual DbSet<Booking> Bookings { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Customerwish> Customerwishes { get; set; }

    public virtual DbSet<Efmigrationshistory> Efmigrationshistories { get; set; }

    public virtual DbSet<Location> Locations { get; set; }

    public virtual DbSet<Property> Properties { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        _logger.LogInformation("Attempting to configure");

            var connectionString = Environment.GetEnvironmentVariable("DB_CONNECTION");
            _logger.LogInformation("Connection string: {ConnectionString}", connectionString);
            optionsBuilder.UseMySql(connectionString, Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.44-mysql"));

    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb4_0900_ai_ci")
            .HasCharSet("utf8mb4");

        modelBuilder.Entity<Accommodation>(entity =>
        {
            entity.HasKey(e => e.AccommodationId).HasName("PRIMARY");

            entity.Property(e => e.AccommodationId).ValueGeneratedNever();

            entity.HasOne(d => d.Location).WithMany(p => p.Accommodations)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("accommodations_ibfk_1");
        });

        modelBuilder.Entity<Accommodationproperty>(entity =>
        {
            entity.HasKey(e => new { e.AccommodationId, e.PropertyId })
                .HasName("PRIMARY")
                .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });

            entity.HasOne(d => d.Accommodation).WithMany(p => p.Accommodationproperties)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("accommodationproperties_ibfk_1");

            entity.HasOne(d => d.Property).WithMany(p => p.Accommodationproperties)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("accommodationproperties_ibfk_2");
        });

        modelBuilder.Entity<Booking>(entity =>
        {
            entity.HasKey(e => e.BookingId).HasName("PRIMARY");

            entity.Property(e => e.BookingId).ValueGeneratedNever();

            entity.HasOne(d => d.Accommodation).WithMany(p => p.Bookings)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("bookings_ibfk_2");

            entity.HasOne(d => d.Customer).WithMany(p => p.Bookings)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("bookings_ibfk_1");
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.CustomerId).HasName("PRIMARY");

            entity.Property(e => e.CustomerId).ValueGeneratedNever();
            entity.Property(e => e.FirstName).IsFixedLength();
        });

        modelBuilder.Entity<Customerwish>(entity =>
        {
            entity.HasKey(e => new { e.CustomerId, e.WishId })
                .HasName("PRIMARY")
                .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });

            entity.HasOne(d => d.Customer).WithMany(p => p.Customerwishes)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("customerwishes_ibfk_1");

            entity.HasOne(d => d.Property).WithMany(p => p.Customerwishes)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("customerwishes_ibfk_2");
        });

        modelBuilder.Entity<Efmigrationshistory>(entity =>
        {
            entity.HasKey(e => e.MigrationId).HasName("PRIMARY");
        });

        modelBuilder.Entity<Location>(entity =>
        {
            entity.HasKey(e => e.LocationId).HasName("PRIMARY");

            entity.Property(e => e.LocationId).ValueGeneratedNever();
        });

        modelBuilder.Entity<Property>(entity =>
        {
            entity.HasKey(e => e.PropertyId).HasName("PRIMARY");

            entity.Property(e => e.PropertyId).ValueGeneratedNever();
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
