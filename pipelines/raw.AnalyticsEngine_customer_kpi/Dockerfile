# Dockerfile for raw.AnalyticsEngine_customer_kpi Data Pipeline
FROM apache/airflow:2.7.1-python3.9

# Install additional dependencies
USER root
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    && rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Install Python packages
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Copy pipeline code
COPY pipelines/ /opt/airflow/pipelines/
COPY dags/ /opt/airflow/dags/

# Set working directory
WORKDIR /opt/airflow

# Switch back to airflow user
USER airflow

# Expose port
EXPOSE 8080

# Start Airflow
CMD ["webserver"]