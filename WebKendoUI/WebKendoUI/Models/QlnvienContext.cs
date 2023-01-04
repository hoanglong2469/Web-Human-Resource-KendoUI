using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebKendoUI.Models;

public partial class QlnvienContext : DbContext
{
    public QlnvienContext()
    {
    }

    public QlnvienContext(DbContextOptions<QlnvienContext> options)
        : base(options)
    {
    }

    public virtual DbSet<NhanVien> NhanViens { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=.\\SQLEXPRESS;Database=QLNVien;Trusted_Connection=True; encrypt=false");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<NhanVien>(entity =>
        {
            entity.ToTable("NhanVien");

            entity.Property(e => e.Id)
                .HasMaxLength(10)
                .IsFixedLength();
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .IsFixedLength();
            entity.Property(e => e.Password)
                .HasMaxLength(50)
                .IsFixedLength();
            entity.Property(e => e.Tel)
                .HasMaxLength(50)
                .IsFixedLength();
            entity.Property(e => e.UserName)
                .HasMaxLength(50)
                .IsFixedLength();
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
