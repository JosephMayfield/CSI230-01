function ApacheLogs2($page, $httpc, $browser){

$logsNotformatted = Get-Content C:\xampp\apache\logs\access.log | `
Select-String "/$page " | Select-String " $httpc " | Select-String " $browser/"

return $logsNotformatted
}

# $logsNotformatted = ApacheLogs1 "*" "404" "Chrome"
# $logsNotformatted


# --------------------------------------------------------------------
# Parsing Apache Logs Assignment 
# (this is a more structured, better approach to analyzing apache logs.
# They do the earlier assignments to learn Get-Content, Select-String)
# --------------------------------------------------------------------
