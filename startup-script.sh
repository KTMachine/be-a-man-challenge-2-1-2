#!/bin/bash

# Install Apache
apt-get update
apt-get install -y apache2

# Create a simple HTML page with VPC information
cat > /var/www/html/index.html <<EOF
<html>
<head>
    <title>GCP Web Server</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        h1 { color: #4285F4; }
        .info { background-color: #f5f5f5; padding: 20px; border-radius: 5px; }
        img { max-width: 400px; margin-top: 20px; }
    </style>
</head>
<body>
    <h1>Welcome to GCP Web Server</h1>
    
    <div class="info">
        <h2>VPC Connection Information</h2>
        <p><strong>Hostname:</strong> $(hostname)</p>
        <p><strong>Internal IP:</strong> $(hostname -I)</p>
        <p><strong>VPC Network:</strong> ${vpc_name}</p>
        <p><strong>Subnet:</strong> ${subnet_name} (${subnet_cidr})</p>
        <p><strong>Region/Zone:</strong> ${region}/${zone}</p>
    </div>
    
    <h2>Sample Image</h2>
    <img src="image.jpg" alt="Sample Image">
</body>
</html>
EOF

# Move the image to the web directory
mv /tmp/image.jpg /var/www/html/image.jpg

# Restart Apache to apply changes
systemctl restart apache2