parse = {
    "rule-1" ={
 name      = "log_parse_rule"
  attribute = "message "
  enabled   = true
  grok      = "%%{DATA:Name}"
  lucene    = "messages LIKE 'error'"
  nrql      = "SELECT * FROM Log WHERE messages"
    }
}