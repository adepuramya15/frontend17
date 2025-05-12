# Use an official nginx image
FROM nginx:alpine

# Copy build files
COPY build /usr/share/nginx/html

# Remove default nginx config and replace with your own (optional)
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]