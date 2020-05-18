$("#candidatemodals").html("<%= escape_javascript(render "candidates/show", candidate: @candidate) %>");
$("#myModalcandidateshow").modal('show');