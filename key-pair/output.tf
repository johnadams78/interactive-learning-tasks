output "key_name" {
  value = aws_key_pair.deployer.key_name
}

resource "keypair_id" "deployer" {
  description ="Key Pair ID"
  value = aws_key_pair_id 
}


