# Module: CloudWatch Alarm

This module creates AWS CloudWatch Metric Alarms based on specified metrics or metric queries.

## Features
- Single metric and multi-metric query support
- Customizable comparison operators and thresholds
- Support for multiple actions (Alarm, OK, Insufficient Data)
- Configurable missing data treatment

## Usage
```hcl
module "cloudwatch_alarm" {
  source = "../../terraform-modules/terraform-aws-cloudwatch-alarm"

  alarm_name          = "high-cpu-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
}
```

## Inputs
| Name | Type | Default | Description |
|------|------|---------|-------------|
| `alarm_name` | `string` | n/a | Alarm name |
| `alarm_description` | `string` | `null` | Alarm description |
| `comparison_operator` | `string` | n/a | Comparison operator |
| `evaluation_periods` | `number` | n/a | Evaluation periods |
| `metric_name` | `string` | `null` | Metric name |
| `namespace` | `string` | `null` | Metric namespace |
| `period` | `number` | `null` | Metric period |
| `statistic` | `string` | `null` | Statistic |
| `extended_statistic` | `string` | `null` | Extended statistic |
| `threshold` | `number` | `null` | Threshold |
| `threshold_metric_id` | `string` | `null` | Threshold metric ID |
| `dimensions` | `map(string)` | `{}` | Alarm dimensions |
| `metric_query` | `any` | `[]` | Metric query blocks |
| `actions_enabled` | `bool` | `true` | Actions enabled |
| `alarm_actions` | `list(string)` | `[]` | Alarm actions |
| `ok_actions` | `list(string)` | `[]` | OK actions |
| `insufficient_data_actions` | `list(string)` | `[]` | Insufficient data actions |
| `datapoints_to_alarm` | `number` | `null` | Datapoints to alarm |
| `treat_missing_data` | `string` | `"missing"` | Treat missing data |
| `tags` | `map(string)` | `{}` | Tags to apply |

## Outputs
| Name | Description |
|------|-------------|
| `alarm_arn` | Alarm ARN |
| `module` | Full module outputs |

## Environment Variables
None

## Notes
- If using `metric_query`, ensure the queries are correctly formatted according to AWS CloudWatch requirements.
- Actions (SNS, Auto Scaling, etc.) must be created separately and their ARNs passed to the action variables.
