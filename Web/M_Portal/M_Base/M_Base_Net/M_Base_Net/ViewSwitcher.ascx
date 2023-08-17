<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ViewSwitcher.ascx.vb" Inherits="M_Base_Net.ViewSwitcher" %>
<div id="viewSwitcher">
    <%: CurrentView %> view | <a href="<%: SwitchUrl %>">Switch to <%: AlternateView %></a>
</div>
