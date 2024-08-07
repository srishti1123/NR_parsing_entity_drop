resource "newrelic_log_parsing_rule" "demo-parse" {
    for_each =var.parse
    name        =  each.value.name    //"demo_rule"
    attribute   =  each.value.attribute       // "message"
    enabled     =  each.value.enabled         //true
    grok      =  each.value.grok               //"%%{DATA:Name}"
  lucene    =    each.value.lucene               //"messages LIKE 'error'"
  nrql      =    each.value.nrql            //"SELECT * FROM Log WHERE messages"
}