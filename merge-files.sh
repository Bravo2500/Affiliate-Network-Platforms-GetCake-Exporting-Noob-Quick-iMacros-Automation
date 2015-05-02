#merge-files bash breh
# don't need the end date for now because using latest day. and no start date variable choosing for now because just going with a pretty early date

# 'just for now combining ROUTINE_Start-Date.iim ROUTINE_Click-Filter.iim ROUTINE_Click-Export.iim and technically the last two lines of each TAB is also repeating - TAB_end-repeating.iim, but this goes first because it is supposed to come right after each TAB one.

#/bin/cp /dev/null _mini-combine-in-between.iim
cat TAB_end-repeating.iim ROUTINE_Start-Date.iim ROUTINE_Click-Filter.iim ROUTINE_Click-Export.iim > _mini-combine-in-between.iim
# NOT DOING ROUTINE_End-Date.iim above

#/bin/cp /dev/null _mini-combine-initial_cake.iim
cat initial-prompt.iim initial-specifying-which.iim SIDEbar_Reports.iim > _mini-combine-initial_cake.iim

#/bin/cp /dev/null _combined.iim
# So at this point it just the initial combined iim, then the four tabs that I think are available across all 
cat _mini-combine-initial_cake.iim \
TAB_Daily-Summary.iim _mini-combine-in-between.iim \
TAB_Campaign-Summary.iim _mini-combine-in-between.iim \
TAB_Conversion-Report.iim _mini-combine-in-between.iim \
TAB_Click-Report.iim _mini-combine-in-between.iim \
TAB_Daily-Summary-Deux.iim TAB_end-repeating.iim ROUTINE_Change-Rows.iim revenue-descending.iim > _combined.iim
# Not doing TAB_SubAffiliate-Summary.iim because that is only for up to 30 days (i think)
# And not doing TAB_Creaive-Summary.iim because that doesnt seem to always be available? (or this and Subaffiliate are reversed)

# GOd damn add to file dont truncate. lame
