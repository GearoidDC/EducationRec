<% if @candidate.errors.any? %>
    $("#candidateerrors").html("<%= escape_javascript(render "home/error_message", object: @candidate) %>");
<% else %>
    $ location.reload();
    $(".modal-backdrop").remove();
    $("#rencandidates").html("<%= escape_javascript(render "home/candidateTab") %>");
<% end %>