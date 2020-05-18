<% if @candidate.errors.any? %>
    $("#candidateerrors").html("<%= escape_javascript(render "home/error_message", object: @candidate) %>");
<% else %>
    $("#candidatemodals").html("<%= escape_javascript(render "candidates/edit", candidate: @candidate) %>");
    $("#myModalcandidateedit").modal('show');
<% end %>