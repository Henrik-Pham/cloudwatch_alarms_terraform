resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = var.student_name
  dashboard_body = <<DASHBOARD
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.student_name}",
            "account_count.value"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total number of accounts"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 6,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.student_name}",
            "bank_sum"
          ]
        ],
        "period": 300,
        "stat": "Sum",
        "region": "eu-west-1",
        "title": "Total Bank Balance (bank_sum)"
      }
    }
  ]
}
DASHBOARD
}

module "alarm" {
  source      = "./alarm_module"
  alarm_email = var.alarm_email
  prefix      = var.student_name
  threshold   = "100000"  # Juster denne verdien basert på ønsket alarmgrense
}
# Test change for workflow
