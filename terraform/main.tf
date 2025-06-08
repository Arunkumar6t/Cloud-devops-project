provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "devops_app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install docker -y",
      "sudo systemctl start docker",
      "sudo usermod -aG docker ec2-user",
      "docker run -d -p 80:8080 arunkumar6t/java-devops-app"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }
}

output "instance_ip" {
  value = aws_instance.devops_app.public_ip
}
