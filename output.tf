output "instance_names_and_ids" {
  description = "List of instance names and their IDs"
  value = [
    for instance in aws_instance.my-terraform-instance : {
      name = instance.tags["Name"]
      id   = instance.id
    }
  ]
}
