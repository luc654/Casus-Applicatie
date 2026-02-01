using Casus_Applicatie.Models;
using Microsoft.EntityFrameworkCore;

namespace Casus_Applicatie.Services;

public class PropertyService
{
    private readonly CasusDbContext _db;
    private readonly AccommodationService _accommodationService;
    
    public PropertyService(CasusDbContext db,  AccommodationService accommodationService)
    {
        _db = db;
        _accommodationService = accommodationService;
    }
    
    public async Task<List<Property>> GetAllProperties()
    {
        return await _db.Properties.ToListAsync();
    }

    public async Task<Property> GetPropertyById(int id)
    {
        return await _db.Properties.FindAsync(id);
    }

    public async Task<List<Property>> GetPropertiesByAccommodation(int id)
    {
        return await _db.Accommodationproperties
            .Where(ap => ap.AccommodationId == id)
            .Select(ap => ap.Property)
            .ToListAsync();
    }
}