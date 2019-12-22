using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using WebProgProje.Models.FilmModel;

namespace WebProgProje.Models.ViewModels
{
    public class FilmViewModel
    {
        [Display(Name = "Filmler")]
        public List<Film> Filmler { get; set; }
        [Display(Name = "Etiketler")]
        public SelectList Etiketler { get; set; }

        [Display(Name = "Film Etiketi")]
        public string FilmEtiketi { get; set; }
        [Display(Name = "Arama Metni")]
        public string SearchString { get; set; }

        
    }
}
