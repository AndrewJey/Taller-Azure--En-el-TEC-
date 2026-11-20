using System;
using System.Collections.Generic;
using System.Web.UI;

namespace Resume
{
    public class ResumeSection
    {
        public string Title { get; set; }
        public string Summary { get; set; }
        public string Highlight { get; set; }
    }

    public static class ResumeProfileService
    {
        public static string CandidateTitle => "Portafolio Técnico — Taller Azure (TEC)";

        public static IReadOnlyList<ResumeSection> GetHighlights()
        {
            return new List<ResumeSection>
            {
                new ResumeSection
                {
                    Title = "Desarrollo Web en .NET y Azure",
                    Summary = "Aplicaciones ASP.NET Web Forms y APIs desplegadas en la nube con prácticas de configuración segura y responsividad.",
                    Highlight = "ASP.NET / Azure App Service"
                },
                new ResumeSection
                {
                    Title = "Arquitectura y Bases de Datos",
                    Summary = "Diseño de modelos relacionales, consultas parametrizadas y manejo de datos en SQL Server y PostgreSQL.",
                    Highlight = "SQL Server / PostgreSQL"
                },
                new ResumeSection
                {
                    Title = "Calidad, Accesibilidad y UI/UX",
                    Summary = "Interfaces claras, navegación consistente por teclado y layouts adaptables a móvil y escritorio.",
                    Highlight = "HTML5 / CSS3 / Accesibilidad"
                }
            }.AsReadOnly();
        }

        public static bool ValidateContactEmail(string email)
        {
            if (string.IsNullOrWhiteSpace(email))
            {
                return false;
            }
            string trimmed = email.Trim();
            int at = trimmed.IndexOf('@');
            int dot = trimmed.LastIndexOf('.');
            return at > 0 && dot > at + 1 && dot < trimmed.Length - 1;
        }
    }

    public partial class _Default : Page
    {
        public IReadOnlyList<ResumeSection> Highlights => ResumeProfileService.GetHighlights();

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Inicio";
        }
    }
}
