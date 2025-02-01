FROM nginx:alpine

# Copy the Nginx configuration
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy HTML files
COPY index.html /usr/share/nginx/html/
COPY health /usr/share/nginx/html/

# Expose port 80 (optional, useful for documentation)
EXPOSE 80

# Add a simple health check
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost/health || exit 1
