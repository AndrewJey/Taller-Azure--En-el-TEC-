<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Resume.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="title">
        <h1><%: Title %></h1>
        <h2>Información de contacto profesional</h2>
    </div>

    <section class="contact">
        <header>
            <h3>Disponibilidad</h3>
        </header>
        <p>
            <span class="label">Horario:</span>
            <span>Lunes a viernes, 08:00 – 17:00 (CST)</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Correo electrónico</h3>
        </header>
        <p>
            <span class="label">Consultas generales:</span>
            <span><a href="mailto:contacto@portafolio-azure.local">contacto@portafolio-azure.local</a></span>
        </p>
        <p>
            <span class="label">Soporte técnico:</span>
            <span><a href="mailto:soporte@portafolio-azure.local">soporte@portafolio-azure.local</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Ubicación</h3>
        </header>
        <p>
            Tecnológico de Costa Rica (TEC)<br />
            Cartago, Costa Rica
        </p>
    </section>
</asp:Content>
