<% if @user.errors.any? %>
    $("#usererrors").html("<%= escape_javascript(render "home/error_message", object: @user) %>");
<% end %>