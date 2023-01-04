using System;
using System.Collections.Generic;

namespace WebKendoUI.Models;

public partial class NhanVien
{
    public string Id { get; set; } = null!;

    public string UserName { get; set; } = null!;

    public string? Password { get; set; }

    public string? Email { get; set; }

    public string? Tel { get; set; }
}
