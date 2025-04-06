# Usar imagem base do Nginx
FROM nginx:alpine

# Remover os arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar seu HTML para o diretório do Nginx
COPY index.html /usr/share/nginx/html/

# Expor a porta padrão do Nginx
EXPOSE 80

# Iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
