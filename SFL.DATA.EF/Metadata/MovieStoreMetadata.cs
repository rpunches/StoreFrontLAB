using System;
using System.ComponentModel.DataAnnotations;

namespace SFL.DATA.EF//.Metadata
{
    #region Actor Metadata
    public class ActorMetadata
    {
        //public int ActorID { get; set; }
        [Required(ErrorMessage = "* Required")]
        [StringLength(20, ErrorMessage = "* First name cannot be more than 20 characters.")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "* Required")]
        [StringLength(20, ErrorMessage = "* Last name cannot be more than 20 characters.")]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }
    }

    [MetadataType(typeof(ActorMetadata))]
    public partial class Actor
    {
        [Display(Name = "Actor")]
        public string ActorFullName
        {
            get { return FirstName + " " + LastName; }
        }
    }
    #endregion

    #region Director Metadata
    public class DirectorMetadata
    {
        //    public int DirectorID { get; set; }
        [Required(ErrorMessage = "* Required")]
        [StringLength(20, ErrorMessage = "* First name cannot be more than 20 characters.")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "* Required")]
        [StringLength(20, ErrorMessage = "* Last name cannot be more than 20 characters.")]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }
    }

    [MetadataType(typeof(DirectorMetadata))]
    public partial class Director
    {
        [Display(Name = "Director")]
        public string DirectorFullName
        {
            get { return FirstName + " " + LastName; }
        }
    }
    #endregion

    #region Genre Metadata
    public class GenreMetadata
    {
        //public int GenreID { get; set; }
        [Required(ErrorMessage = "* Required")]
        [StringLength(20, ErrorMessage = "* Genre cannot be more than 20 characters.")]
        [Display(Name = "Genre")]
        public string GenreName { get; set; }
    }

    [MetadataType(typeof(GenreMetadata))]
    public partial class Genre
    {
    }
    #endregion

    #region Movie Metadata
    public class MovieMetadata
    {
        //public int MovieID { get; set; }
        [Required(ErrorMessage = "* Required")]
        [Display(Name ="Movie Title")]
        [StringLength(100, ErrorMessage ="* Title cannot be more than 100 characters.")]
        public string MovieTitle { get; set; }

        //public int GenreID { get; set; }

        [Range(0, double.MaxValue, ErrorMessage ="* Value must be a valid number, 0 or more.")]
        [DisplayFormat(DataFormatString ="{0:c}", NullDisplayText = "N/A")]
        public Nullable<decimal> Price { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "* Value must be a valid number, 0 or more.")]
        [DisplayFormat(NullDisplayText = "N/A")]
        [Display(Name ="Movies Sold")]
        public Nullable<int> UnitsSold { get; set; }

        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true, NullDisplayText = "N/A")]
        [Display(Name = "Release Date")]
        public Nullable<System.DateTime> ReleaseDate { get; set; }

        [Required(ErrorMessage =("* Required"))]
        public int ProductionID { get; set; }

        [UIHint("MultilineText")]
        [DisplayFormat(NullDisplayText = "N/A")]
        public string Plot { get; set; }

        [Display(Name ="Poster")]
        public string PosterImage { get; set; }
    }

    [MetadataType(typeof(MovieMetadata))]
    public partial class Movie { }
    #endregion

    #region ProductionCompany Metadata
    public class ProductionCompanyMetadata
    {
        //public int ProductionID { get; set; }

        [Required(ErrorMessage ="* Required")]
        [Display(Name = "Production Company")]
        public string ProductionCompany1 { get; set; }
    }

    [MetadataType(typeof(ProductionCompanyMetadata))]
    public partial class ProductionCompany { }
    #endregion




}
