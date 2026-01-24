using Casus_Applicatie.Models;
using Casus_Applicatie.Data;
using Casus_Applicatie.Models;
using Microsoft.EntityFrameworkCore;

public class AccommodationService
{
    private readonly CasusDbContext _db;

    public AccommodationService(CasusDbContext db)
    {
        _db = db;
    }

    public async Task<List<Accommodation>> GetAllAsync()
    {
        return await _db.Accommodations.ToListAsync();
    }

    public async Task<Accommodation?> GetByIdAsync(int id)
    {
        return await _db.Accommodations.FindAsync(id);
    }

    public async Task CreateAsync(Accommodation accommodation)
    {
        _db.Accommodations.Add(accommodation);
        await _db.SaveChangesAsync();
    }
}