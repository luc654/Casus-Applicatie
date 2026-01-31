using Casus_Applicatie.Models;
using Casus_Applicatie.Data;
using Casus_Applicatie.Models;
using Microsoft.EntityFrameworkCore;

public class CustomerService
{
    private readonly CasusDbContext _db;

    public CustomerService(CasusDbContext db)
    {
        _db = db;
    }

    public async Task<List<Customer>> GetAllAsync()
    {
        return await _db.Customers.ToListAsync();
    }

    public async Task<Customer?> GetByIdAsync(int id)
    {
        return await _db.Customers.FindAsync(id);
    }

    public async Task CreateAsync(Customer customer)
    {
        _db.Customers.Add(customer);
        await _db.SaveChangesAsync();
    }
}