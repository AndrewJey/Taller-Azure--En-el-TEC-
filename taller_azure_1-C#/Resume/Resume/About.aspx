<%@ Page Title="Acerca de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Resume.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="title">
        <h1><%: Title %></h1>
        <h2>Perfil técnico y competencias principales</h2>
    </div>

    <article>
        <p>
            Esta aplicación Web Forms sirve como currículum interactivo y demostración de despliegue en Microsoft Azure
            para el Taller de Azure en el Tecnológico de Costa Rica (TEC).
        </p>
        <p>
            Incluye gestión de usuarios con ASP.NET Membership, páginas maestras reutilizables y estilos adaptables
            para pantallas de escritorio, tableta y teléfono móvil.
        </p>
        <p>
            Las configuraciones de base de datos soportan <code>(LocalDb)\MSSQLLocalDB</code> para desarrollo local moderno.
        </p>
    </article>

    <aside aria-label="Navegación rápida">
        <h3>Navegación</h3>
        <p>Acceda rápidamente a las secciones principales del portafolio:</p>
        <ul>
            <li><a runat="server" href="~/">Inicio</a></li>
            <li><a runat="server" href="~/About">Acerca de</a></li>
            <li><a runat="server" href="~/Contact">Contacto</a></li>
        </ul>
    </aside>
</asp:Content>
