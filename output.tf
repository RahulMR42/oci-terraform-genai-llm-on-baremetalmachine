output "OS_IMAGE" {
  value = data.oci_core_images.InstanceImageOCID.images[*].display_name
}
output "HOST_PUBLIC_IP" {
  value = oci_core_instance.llm_host.public_ip
}
output "LLM_URL" {
  value = "${oci_apigateway_deployment.apigw_deployment.endpoint}${var.route_prefix}"
}