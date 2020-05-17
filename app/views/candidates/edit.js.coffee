<% if @candidate.errors.any? %>
    $("#candidateerrors").html("<%= escape_javascript(render "home/error_message", object: @candidate) %>");
<% else %>
    $("#candidatemodals").html("<%= escape_javascript(render "candidates/candidate_modal_edit", candidate: @candidate) %>");
    $("#myModalcandidateedit").modal('show');
<% end %>