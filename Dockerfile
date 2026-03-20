FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
```

Sua pasta deve ficar assim:
```
proposta-site/
├── index.html
└── Dockerfile
```

---

## PASSO 2 — Suba para o GitHub

1. Acesse **github.com** e faça login (ou crie conta grátis)
2. Clique em **"New repository"**
3. Nome: `proposta-site` (ou qualquer nome)
4. Deixe **Public** ou **Private** — tanto faz
5. Clique em **"Create repository"**
6. Na próxima tela clique em **"uploading an existing file"**
7. Arraste os **2 arquivos** (`index.html` e `Dockerfile`) para a área de upload
8. Clique em **"Commit changes"**

---

## PASSO 3 — Configure no Coolify

1. Abra seu Coolify no navegador
2. Clique em **"New Resource"** (ou **"+ Add"**)
3. Escolha **"Public Repository"** ou **"GitHub"**
4. Cole a URL do seu repositório GitHub:
```
https://github.com/SEU_USUARIO/proposta-site
```
5. Em **Build Pack** selecione **"Dockerfile"**
6. Coolify vai detectar o `Dockerfile` automaticamente

---

## PASSO 4 — Configure o domínio

Na tela de configuração do resource no Coolify:

- **Domain**: coloque o domínio que quiser usar, por exemplo:
```
https://proposta.seudominio.com.br
```
- O Coolify gera o **certificado HTTPS automaticamente**
- Se não tiver domínio, o Coolify dá um subdomínio no seu próprio servidor

> ⚠️ Se usar domínio próprio, lembre de criar um **registro DNS tipo A** apontando para o IP do seu servidor antes.

---

## PASSO 5 — Deploy

1. Clique em **"Deploy"** (ou **"Save and Deploy"**)
2. Aguarde — normalmente leva menos de **1 minuto**
3. O Coolify vai mostrar os logs em tempo real
4. Quando aparecer **"Running"** ou **"Healthy"** — está no ar ✅

---

## Resultado esperado nos logs:
```
Building image...
Pulling nginx:alpine...
COPY index.html → done
Container started
Health check: OK ✅
