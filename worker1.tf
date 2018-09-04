resource "digitalocean_droplet" "worker1" {
  image = "ubuntu-18-04-x64"
  name = "worker1"
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
