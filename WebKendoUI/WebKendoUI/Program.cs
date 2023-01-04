using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json.Serialization;
using WebKendoUI.Models;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers()
    .AddNewtonsoftJson(options => options.SerializerSettings.ContractResolver = new DefaultContractResolver());

// Add services to the container.
builder.Services.AddControllersWithViews();

// Add Kendo UI services to the services container.
builder.Services.AddKendo();

builder.Services.AddDbContext<QlnvienContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("constring")));



var app = builder.Build();


// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=NhanVien}/{action=Index}/{id?}");

app.Run();
