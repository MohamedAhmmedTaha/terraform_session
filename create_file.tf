resource "local_file" "nti_file" {
  filename = "./task1_file.txt" #any name
  content  = "Hello ,I am Mohamed Taha this file created using terraform"
}