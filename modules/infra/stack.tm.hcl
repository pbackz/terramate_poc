stack {
  name        = "infra"
  description = "infra"
  id          = "08d73252-e586-403c-a182-4fc192c64b5c"
}

generate_hcl "infra.tf" {
  content {
    resource "local_file" "infra" {
      filename = "/tmp/tfinfra/index.html"
      content  = <<-EOF
        <html>
          <title>Homepage for project '${global.project_id}'</title>
        </html>
      EOF
    }
  }
}