# resource "aws_s3_bucket" "prashansa_bucket_server"{
#     bucket = var.bucket_name
#     force_destroy = true
# }

# resource "aws_s3_bucket" "prashansa_bucket_server"{
#     bucket = var.bucket_name
#     force_destroy = true
# }




















# # resource "aws_s3_bucket" "prashansa_terraform" {
# #   bucket = "prashansa--terraform"

# #   tags = {
# #     owner       = "prashansa.joshi"
# #     silo        = "intern2"
# #     environment = "dev"
# #     terraform   = "true"
# #   }
# # }

# # # resource "aws_s3_bucket_acl" "prashansa_static_acl" {
# # #   # This resource is no longer needed as Block Public Access is disabled
# # #   # Removing it to avoid potential conflicts.
# # # }

# # resource "aws_s3_bucket_public_access_block" "prashansa_terraform" {
# #   bucket = aws_s3_bucket.prashansa_terraform.id
# #   block_public_acls        = true
# #   block_public_policy     = true
# #   ignore_public_acls      = true
# #   restrict_public_buckets = true
# # }

# # resource "aws_s3_bucket_website_configuration" "prashansa_terraform_config" {
# #   bucket = aws_s3_bucket.prashansa_terraform.id

# #   index_document {
# #     suffix = "index.html"
# #   }

# #   error_document {
# #     key = "error.html"
# #   }
# # }

# # resource "aws_s3_bucket_policy" "prashansa_terraform" {
# #   bucket = aws_s3_bucket.prashansa_terraform.id

# #   policy = jsonencode({
# #     Version = "2012-10-17"
# #     Statement = [
# #       {
# #         Sid       = "PublicReadGetObject"  # Consider renaming for clarity
# #         Effect    = "Allow"
# #         Principal = "*"
# #         Action    = "s3:GetObject"
# #         Resource  = "arn:aws:s3:::prashansa-terraform/*"
# #       },
# #       {
# #         Sid      = "AllowRoleAccess"
# #         Effect   = "Allow"
# #         Principal = {
# #           "AWS" = "arn:aws:iam::123456789012:role/example-role"
# #         }
# #         Action = [
# #           "s3:GetObject",
# #           "s3:PutObject"
# #         ]
# #         Resource = "arn:aws:aws:s3:::prashansa-terraform/*"
# #       }
# #     ]
# #   })
# # }