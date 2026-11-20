<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Resume._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured" aria-label="Presentación">
        <div class="content-wrapper">
            <div class="title">
                <h1><%: Resume.ResumeProfileService.CandidateTitle %></h1>
                <h2>Aplicación ASP.NET Web Forms modernizada para escritorio y móvil</h2>
            </div>
            <p>
                Proyecto de portafolio web creado para el taller de Microsoft Azure en el TEC,
                actualizado con estructura semántica, diseño responsivo y navegación clara.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Áreas destacadas</h3>
    <ol class="round">
        <li class="one">
            <h5>Desarrollo Web en .NET y Azure</h5>
            Construcción de aplicaciones web dinámicas en ASP.NET listas para publicación en Azure App Service.
            <a runat="server" href="~/About">Ver perfil completo…</a>
        </li>
        <li class="two">
            <h5>Bases de Datos y Servicios</h5>
            Integración de almacenamiento relacional con configuración flexible para entornos locales y nube.
            <a runat="server" href="~/About">Explorar stack…</a>
        </li>
        <li class="three">
            <h5>Contacto y Colaboración</h5>
            Canales de contacto organizados y navegación accesible en cualquier resolución de pantalla.
            <a runat="server" href="~/Contact">Ir a contacto…</a>
        </li>
    </ol>
</asp:Content>
