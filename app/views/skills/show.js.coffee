$("#skillmodals").html("<%= escape_javascript(render "skills/show", skill: @skill) %>");
$("#myModalskilldshow").modal('show');