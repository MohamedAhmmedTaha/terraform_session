resource "local_file" "nti_file" {
  filename = "./NTI_file.txt"
  content  = "Hello ,I am Mohamed Taha this file created using terraform"
}