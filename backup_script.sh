# Executar backup dentro do container
echo "========== Initiating backup job =========="
docker exec snipeit_app php artisan snipeit:backup

# Copiar backup do container para o host
echo "========== Copying backups to /backups =========="
cp -r /var/lib/docker/volumes/snipe-it-simple-docker-compose_storage/_data/dumps/* /root/snipe-it-simple-docker-compose/backups

echo "Backup concluido"