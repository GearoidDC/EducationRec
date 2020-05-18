<% if @user.errors.any? %>
    $("#editusererrors").html("<%= escape_javascript(render "home/error_message", object: @user) %>");
<% end %>