$("#candidatemodals").html("<%= escape_javascript(render "candidates/candidate_modal_show", candidate: @candidate) %>");
$("#myModalcandidateshow").modal('show');