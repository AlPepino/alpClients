<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="alpClients._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
  <h1 class="display-4">CRUD v aplikaci alpClients</h1>
  <p class="lead">
  Aplikace alpClients je vytvořena v <strong>ASP.NET Web Forms</strong> (.NET Framework 4.8). Operace CRUD jsou demonstrovány na tabulce <code>ClientsT</code>. Tabulka <code>ClientsT</code> má sloupce 
	<code>Id</code>, <code>FirstName</code>, <code>LastName</code>, <code>Sex</code>, <code>Email</code>, <code>Contact</code>, 
	<code>Address</code>. Vyjma sloupce <code>Id</code> jsou všechny sloupce typu <code>nvarchar</code>. Validace vstupů je prováděna na straně klienta pomocí <strong>frameworku Bootstrap</strong>.
  </p>
  <hr class="my-4">
	<div class="accordion">
	  <div class="accordion-item">
		<h2 class="accordion-header" id="panelsStayOpen-headingOne">
		  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
			CREATE
		  </button>
		</h2>
		<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
		  <div class="accordion-body">
			Přidání záznamu do tabulky pomocí modálního okna. Forumář pro nový záznam lze otevřít tlačítkem <span class="badge rounded-pill bg-primary">Nová registrace</span>.
		  </div>
		</div>
	  </div>
	  <div class="accordion-item">
		<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
		  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
			READ
		  </button>
		</h2>
		<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
		  <div class="accordion-body">
			Načtení dat do gridu.
		  </div>
		</div>
	  </div>
	  <div class="accordion-item">
		<h2 class="accordion-header" id="panelsStayOpen-headingThree">
		  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
			UPDATE
		  </button>
		</h2>
		<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
		  <div class="accordion-body">
			 Editování dat v gridu. Modální okno pro editaci záznamu lze otevřít dvojklikem myši na příslušné řádce tabulky.
		  </div>
		</div>
	  </div>
	  <div class="accordion-item">
		<h2 class="accordion-header" id="panelsStayOpen-headingFourth">
		  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFourth" aria-expanded="false" aria-controls="panelsStayOpen-collapseFourth">
			DELETE
		  </button>
		</h2>
		<div id="panelsStayOpen-collapseFourth" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFourth">
		  <div class="accordion-body">
			Mazání záznamu lze provést kliknutím na ikonku odpadkového koše v příslušném řádku tabulky.
		  </div>
		</div>
	  </div>	  
	</div>
  
</div>


</asp:Content>
