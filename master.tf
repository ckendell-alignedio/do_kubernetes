resource "digitalocean_droplet" "master" {
  image = "ubuntu-18-04-x64"
  name = "master"
  region = "tor1"
  size = "1gb"
  private_networking = true
  ssh_keys = ["${var.ssh_fingerprint}"]

  connection {
    user = "root"
    type = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout = "2m"
  }
}
