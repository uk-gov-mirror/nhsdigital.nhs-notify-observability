locals {
  root_domain_name              = "${var.environment}.${data.aws_route53_zone.main.name}" # e.g. [main|dev|abxy0].observe.[dev|nonprod|prod].nhsnotify.national.nhs.uk
  aws_lambda_functions_dir_path = "../../../../lambdas"
  jira_url_path                 = "/notify/jira/url"
  jira_pat_token_path           = "/notify/jira/pat/token"
  csoc_event_rule_shield_csoc_arn = var.csoc_log_forwarding ? format("arn:aws:events:%s:%s:event-bus/shield-eventbus",
    var.region,
    var.csoc_destination_account
  ) : null
}
