<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
    <link rel="stylesheet" href="https://static2.sharepointonline.com/files/fabric/office-ui-fabric-js/1.4.0/css/fabric.min.css" />
    <link rel="stylesheet" href="https://static2.sharepointonline.com/files/fabric/office-ui-fabric-js/1.4.0/css/fabric.components.min.css" />
    <script src="https://static2.sharepointonline.com/files/fabric/office-ui-fabric-js/1.4.0/js/fabric.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <p id="message">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>

    <ul>
      <li><a href="Default.aspx" title="More info about Example Link">Dashboard</a></li>
    </ul>

    <br />

    <button>open</button>
    <button>closed</button>
    <button>all</button>

    <br /><br />

    <div class="ms-SearchBox">
  <input class="ms-SearchBox-field" type="text" value="">
  <label class="ms-SearchBox-label">
    <i class="ms-SearchBox-icon ms-Icon ms-Icon--Search"></i>
    <span class="ms-SearchBox-text">Search</span> 
  </label>
  <div class="ms-CommandButton ms-SearchBox-clear ms-CommandButton--noLabel">
    <button class="ms-CommandButton-button">
      <span class="ms-CommandButton-icon"><i class="ms-Icon ms-Icon--Clear"></i></span> 
      <span class="ms-CommandButton-label"></span> 
    </button>
  </div>
</div>

    <br /><br />

  <table>
      <tr>
          <th>Name</th>
          <th>Issuer</th>
          <th>Assignee</th>
          <th>Date</th>
      </tr>
      <tr>
          <td>abc</td>
          <td>Lucas Verdillo</td>
          <td>Wolfgang Kalchbrenner</td>
          <td>10.10.2019</td>
      </tr>
  </table>

    <script type="text/javascript">
  var SearchBoxElements = document.querySelectorAll(".ms-SearchBox");
  for (var i = 0; i < SearchBoxElements.length; i++) {
    new fabric['SearchBox'](SearchBoxElements[i]);
  }
</script>

</asp:Content>
