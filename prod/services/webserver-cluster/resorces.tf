resource "aws_autoscaling_schedule" "scale_out_during_business_hours" {
    scheduled_action_name = "scale-out-during-business-hours"
    min_size              = 1
    max_size              = 2
    desired_capacity      = 1
    recurrence            = "0 9 * * *"
    autoscaling_group_name = "${aws_autoscaling_group.example.name}"
}


resource "aws_autoscaling_schedule" "scale_in_at_night" {
    scheduled_action_name = "scale-in-at-night"
    min_size              = 1
    max_size              = 2
    desired_capacity      = 1
    recurrence            = "0 17 * * *"
    autoscaling_group_name = "${aws_autoscaling_group.example.name}"
}
