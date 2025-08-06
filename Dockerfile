# 1. Usa imagem base do Nginx
FROM nginx:latest

# 2. Remove arquivos HTML padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# 3. Copia nosso index.html para a pasta do Nginx
COPY app/index.html /usr/share/nginx/html/index.html

# 4. Expõe a porta 80
EXPOSE 80

# 5. Inicia o Nginx em foreground
CMD ["nginx", "-g", "daemon off;"]

