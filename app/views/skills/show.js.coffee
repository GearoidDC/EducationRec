$("#testskill").html("<%= escape_javascript(render "skills/skill_modal_show", skill: @skill) %>");
$("#myModalskilldshow").modal('show');