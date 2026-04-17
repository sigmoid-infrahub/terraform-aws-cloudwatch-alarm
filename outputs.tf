output "alarm_arn" {
  description = "Alarm ARN"
  value       = aws_cloudwatch_metric_alarm.this.arn
}

output "module" {
  description = "Full module outputs"
  value = {
    alarm_arn = aws_cloudwatch_metric_alarm.this.arn
  }
}
