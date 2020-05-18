<% if @skill.errors.any? %>
    $("#skillerrors").html("<%= escape_javascript(render "home/error_message", object: @skill) %>");
<% else %>
    $("#skillmodals").html("<%= escape_javascript(render "skills/edit", skill: @skill) %>");
    $("#myModalskilledit").modal('show');
<% end %>