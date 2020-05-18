<% if @skill.errors.any? %>
    $("#skillerrors").html("<%= escape_javascript(render "home/error_message", object: @skill) %>");
<% else %>
    $(".modal-backdrop").remove();
    $("#renskills").html("<%= escape_javascript(render "home/skillsTab") %>");
<% end %>