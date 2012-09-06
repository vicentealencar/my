BRANCHES_TO_PRESERVE = ["nomenclature_standardization", "email_sort_columns", "agenda_maps", "date_time_formats", "agenda", "devel", "master", "hearing_processor_ruby", "master_pre_pull"]

ALL_BRANCHES = ["admin-scopes", "agenda", "agenda_maps", "ajax-datatable", "base_architecture", "CR-hearing_processor-Rails_interface", "CR_AddingBaseIdToSpreadsheetFeeder", "CR_AgentInChargeHearing", "CR_DatatablesNoticesBroken", "CR_DisableOrganFieldForHearings", "CR_InsideLawyerTerm", "date_time_formats", "devel", "diligences", "diligences_refactor", "email_sort_columns", "fixsendterm", "footnotes", "full_suggestions", "hearingConfirmationToken", "hearings-datatable-css", "hide-tasks-columns", "last_deploy_fix", "master", "master_pre_pull", "nomenclature_standardization", "omg_branch", "raa_rules", "server-side-sorting", "suggestions"]

ALL_BRANCHES.each do |branch|
    next if BRANCHES_TO_PRESERVE.include? branch

    puts "deleting #{branch}"

    `git push origin :#{branch}`
end
