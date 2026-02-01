using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
using Casus_Applicatie.Data;
using Casus_Applicatie.Models;
using Casus_Applicatie.Services;
using Microsoft.EntityFrameworkCore;
using DotNetEnv;
using MudBlazor.Services;



Env.Load();
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();
builder.Services.AddSingleton<WeatherForecastService>();

// Database stuff
builder.Services.AddDbContext<CasusDbContext>(options =>
    options.UseMySql(builder.Configuration.GetConnectionString("DefaultConnection"),
        new MySqlServerVersion(new Version(8, 0, 44))));


// Add services to global scope (because ofcourse you have to do that manually)
builder.Services.AddScoped<BookingService>();
builder.Services.AddScoped<AccommodationService>();
builder.Services.AddScoped<CustomerService>();
builder.Services.AddScoped<PropertyService>();


// Add mudshark lib
builder.Services.AddMudServices();



var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
