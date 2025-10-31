# ==============================
# Makefile original (Linux/Unix)
# ==============================
# ENV?=dev
# TF_DIR=terraform-ec2-deploy
#
# init:
# 	@echo "Inicializando os recursos terraform no ambiente de $(ENV)...."
# 	cd $(TF_DIR) && terraform init
#
# plan:
# 	@echo "Gerando um plano no ambiente de $(ENV).."
# 	cd $(TF_DIR) && terraform plan -out=tfplan
#
# apply:
# 	@echo "Aplicando na infraestrutura $(ENV)..."
# 	cd $(TF_DIR) && terraform apply tfplan
#
# destroy:
# 	@echo "Destruindo recursos deste ambiente"
# 	cd $(TF_DIR) && terraform destroy -auto-approve

# ==============================
# Makefile adaptado para Windows/PowerShell
# ==============================
ENV?=dev
TF_DIR=terraform-ec2-deploy

init:
	@echo "Inicializando os recursos terraform no ambiente de $(ENV)...."
	powershell -Command "Set-Location '$(TF_DIR)'; terraform init"

plan:
	@echo "Gerando um plano no ambiente de $(ENV).."
	powershell -Command "Set-Location '$(TF_DIR)'; terraform plan -out=tfplan"

apply:
	@echo "Aplicando na infraestrutura $(ENV)..."
	powershell -Command "Set-Location '$(TF_DIR)'; terraform apply tfplan"

destroy:
	@echo "Destruindo recursos deste ambiente"
	powershell -Command "Set-Location '$(TF_DIR)'; terraform destroy -auto-approve"
