using Casus_Applicatie.Models;
using Casus_Applicatie.Data;
using Casus_Applicatie.Models;
using Microsoft.EntityFrameworkCore;

public class BookingService
{
    private readonly CasusDbContext _db;

    public BookingService(CasusDbContext db)
    {
        _db = db;
    }

    public async Task<List<Booking>> GetAllAsync()
    {
        return await _db.Bookings.ToListAsync();
    }

    public async Task<Booking?> GetByIdAsync(int id)
    {
        return await _db.Bookings.FindAsync(id);
    }

    public async Task<List<Booking>> GetByCustomerIdAsync(int id)
    {
        return await _db.Bookings.Where(b => b.CustomerId == id).ToListAsync();
    }

    public async Task deleteByIdAsync(int id)
    {
        var booking = await GetByIdAsync(id);
        _db.Bookings.Remove(booking);
        await _db.SaveChangesAsync();
    }
    public async Task CreateAsync(Booking customer)
    {
        _db.Bookings.Add(customer);
        await _db.SaveChangesAsync();
    }
    
}