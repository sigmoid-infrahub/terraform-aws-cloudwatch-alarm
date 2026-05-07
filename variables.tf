variable "alarm_name" {
  type        = string
  description = "Alarm name"
}

variable "alarm_description" {
  type        = string
  description = "Alarm description"
  default     = null
}

variable "comparison_operator" {
  type        = string
  description = "Comparison operator"
}

variable "evaluation_periods" {
  type        = number
  description = "Evaluation periods"
}

variable "metric_name" {
  type        = string
  description = "Metric name"
  default     = null
}

variable "namespace" {
  type        = string
  description = "Metric namespace"
  default     = null
}

variable "period" {
  type        = number
  description = "Metric period"
  default     = null
}

variable "statistic" {
  type        = string
  description = "Statistic"
  default     = null
}

variable "extended_statistic" {
  type        = string
  description = "Extended statistic"
  default     = null
}

variable "threshold" {
  type        = number
  description = "Threshold"
  default     = null
}

variable "threshold_metric_id" {
  type        = string
  description = "Threshold metric ID"
  default     = null
}

variable "dimensions" {
  type        = map(string)
  description = "Alarm dimensions"
  default     = {}
}

variable "metric_query" {
  type        = any
  description = "Metric query blocks"
  default     = []
}

variable "actions_enabled" {
  type        = bool
  description = "Actions enabled"
  default     = true
}

variable "alarm_actions" {
  type        = list(string)
  description = "Alarm actions"
  default     = []
}

variable "ok_actions" {
  type        = list(string)
  description = "OK actions"
  default     = []
}

variable "insufficient_data_actions" {
  type        = list(string)
  description = "Insufficient data actions"
  default     = []
}

variable "datapoints_to_alarm" {
  type        = number
  description = "Datapoints to alarm. Use 0 to inherit evaluation_periods"
  default     = 0
}

variable "treat_missing_data" {
  type        = string
  description = "Treat missing data"
  default     = "missing"

  validation {
    condition     = contains(["missing", "ignore", "breaching", "notBreaching"], var.treat_missing_data)
    error_message = "treat_missing_data must be one of: missing, ignore, breaching, notBreaching"
  }
}

variable "evaluate_low_sample_count_percentiles" {
  type        = string
  description = "Evaluate or ignore alarms on low sample count percentile metrics"
  default     = "evaluate"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
  default     = {}
}

# ====================================
# Sigmoid Tags Configuration
# ====================================

variable "sigmoid_environment" {
  description = "Sigmoid environment identifier for cost allocation"
  type        = string
  default     = ""
}

variable "sigmoid_project" {
  description = "Sigmoid project identifier for cost allocation"
  type        = string
  default     = ""
}

variable "sigmoid_team" {
  description = "Sigmoid team identifier for cost allocation"
  type        = string
  default     = ""
}
