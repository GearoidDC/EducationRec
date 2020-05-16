<% if @skill.errors.any? %>
$("#skillerrors").html("<%= escape_javascript(render "home/error_message", object: @skill) %>");
<% else %>
$("#testskill").html("<%= escape_javascript(render "skills/skill_modal_edit", skill: @skill) %>");
$("#myModalskilledit").modal('show');
<% end %>