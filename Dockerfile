FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

RUN chmod +rx /app/startup.sh
CMD /app/startup.sh ; sleep infinity
