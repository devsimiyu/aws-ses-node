resource "aws_ses_email_identity" "ses_email_from" {
  email = var.email_identity_from
}

resource "aws_ses_email_identity" "ses_email_to" {
  email = var.email_identity_to
}

resource "aws_ses_template" "ses_email_template" {
  text = "Hello {{name}}, I hope this message gets sent!"
  subject = "{{subject}}"
  html = "<h2>Hello {{name}},</h2> <h4>I hope this message gets sent!</h4>"
  name = "hello_email_template"
}