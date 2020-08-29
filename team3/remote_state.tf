data "terraform_remote_state" "main" {
	backend = "s3"
	config = {
	    bucket = "test-bucket3-terraform"
        key = "path/to/my/key"
        region = "us-east-2"
	}
}


output "full_list" {
	value = "${data.terraform_remote_state.main.outputs.*}"
}