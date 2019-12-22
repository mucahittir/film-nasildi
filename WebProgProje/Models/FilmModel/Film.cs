using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebProgProje.Models.FilmModel
{
    public class Film
    {
        [Display(Name = "Film ID")]
        public int Id { get; set; }
        [Display(Name = "Film Başlığı")]
        public string Baslik { get; set; }
        [DataType(DataType.Date)]
        [Display(Name = "Yayınlanma Tarihi")]
        public DateTime YaziGiris { get; set; }
        public string Etiket { get; set; }
        [Display(Name = "Yazı")]
        public string Yazi { get; set; }
        [Display(Name = "Resim adresi")]
        public string ResimUrl { get; set; }
    }
}
