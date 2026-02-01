using Casus_Applicatie.Models;
using Casus_Applicatie.Data;
using Casus_Applicatie.Models;
using Microsoft.EntityFrameworkCore;

public class CustomerService
{
    private readonly CasusDbContext _db;
    private readonly BookingService _bookingService;
    public CustomerService(CasusDbContext db, BookingService bookingService)
    {
        _db = db;
        _bookingService = bookingService;
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
        
        _db.ChangeTracker.Clear();

    }
    
    // this was a fun function to make (not) AND I WROTE IT ALL MYSELF, DONT YOU DARE THINK A CLANKER WROTE THIS
    public async Task<bool> RemoveAsync(int id)
    {
        
        
        // Step 1. Determine if user exists
        var customer = await GetByIdAsync(id);
        if (customer == null)
            return false;
        
        
        
        // Step 2. Retrieve all foreign references and remove those
        
        List<Booking> bookingList = await _bookingService.GetByCustomerIdAsync(id);

        // !== is not allowed in c# :D... so fuck you compiler, and make it work.
        if (bookingList == null)
        {
        } else {
        foreach (var booking in bookingList)
        {
            await _bookingService.deleteByIdAsync(booking.BookingId);
        }
        }
        
        
        // Step 3. Remove customer
        
        _db.Customers.Remove(customer);
        
        
        // Step 4. check if remove was successfull.
        
        // https://stackoverflow.com/questions/61283974/how-to-check-if-a-delete-operation-succeeds-in-asp-net-mvc-using-entity-framewor
        // SaveChangesAsync retuns... and i kid you not.... the amount of affected rows as an int. 
        int changes = await _db.SaveChangesAsync();
        
       return changes > 0;
    }


    public async Task<bool> UpdateAsync(Customer customer)
    {
     _db.Customers.Update(customer);
     int  changes = await _db.SaveChangesAsync();
     return changes > 0;
    }

    public async Task<List<Customerwish>> getCustomerWishesById(int id)
    {
        return await _db.Customerwishes
            .Where(ap => ap.CustomerId == id)
            .ToListAsync();
    }
}