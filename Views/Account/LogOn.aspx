<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Portal.Models.LogOnModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Log On
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Log On</h2>
    <p>
        Please enter your username and password. <%: Html.ActionLink("Register", "Register") %> if you don't have an account.
    </p>

    <form action="Authenticate?ReturnUrl=<%=HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]) %>" method="post" id="openid_form">
    <input type="hidden" name="action" value="verify" />
        <%: Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>
        <div>
            <fieldset>
                <legend>Account Information</legend>

                <div class="openid_choice">
                    <p>Please click your account provider:</p>
					<div id="openid_btns"></div>
                </div>                               
               
                <div id="openid_input_area">
                    <%: Html.TextBox("openid_identifier") %>
                    <input type="submit" value="Log On" />
                </div>
				<noscript>
				<p>OpenID is service that allows you to log-on to many different websites using a single indentity.
				Find out <a href="http://openid.net/what/">more about OpenID</a> and <a href="http://openid.net/get/">how to get an OpenID enabled account</a>.</p>
				</noscript>
            </fieldset>
        </div>
    </form>
</asp:Content>

