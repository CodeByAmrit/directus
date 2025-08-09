cat > Dockerfile <<'EOF'
FROM directus/directus:11

# Security: use non-root user
USER node

ENV NODE_ENV=production \
    PORT=8055 \
    CORS_ENABLED=true \
    RATE_LIMIT_ENABLED=true

# Optional: copy custom extensions/templates
# COPY ./extensions /directus/extensions
# COPY ./templates /directus/templates
EOF
