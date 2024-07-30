# Use the official Drupal image as the base image
FROM drupal:latest

# Set the working directory
WORKDIR /opt/drupal

# Copy the Drupal files into the container
COPY drupal-data /opt/drupal

# Expose port 80
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2-foreground"]
