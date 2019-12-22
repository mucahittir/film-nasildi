using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreIdentityExample.Models.ViewModels
{
    public class RoleAssignViewModel
    {
        [Display(Name = "Rol ID")]
        public int RoleId { get; set; }
        [Display(Name = "Rol Adı")]
        public string RoleName { get; set; }
        [Display(Name = "Atanmış mı?")]
        public bool HasAssign { get; set; }
    }
}
