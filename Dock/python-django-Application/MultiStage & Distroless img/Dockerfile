#####    MULTISTAGE DOCKER BUILD

# Stage 1: Build the application
FROM python:3-slim AS build
# 'AS' used for set an alias for FROM

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Stage 2: Use a distroless Python image
FROM gcr.io/distroless/python3:debug

# Set working directory
WORKDIR /app

# Copy only necessary files from the build stage
COPY --from=build /app /app
#Copy installed dependencies from the builder stage
COPY --from=build /usr/local/lib/python3.13/site-packages /usr/local/lib/python3.13/site-packages


# Set PYTHONPATH to include the system-wide packages
ENV PYTHONPATH=/usr/local/lib/python3.13/site-packages

# Expose the application port
EXPOSE 80

# Run the application
CMD  ["/app/manage.py", "runserver", "0.0.0.0:80"]

# here in Distroless image contain its ENTRYPOINT as Python so we don't need to add in 'CMD'
