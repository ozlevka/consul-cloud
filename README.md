### Make any service in cloud cheap (spot) and scalable



### For running in Google cloud:
Create two files
    google.json => authentication file,

    gce.ini => with initial data for ansible inventory

```
[gce]
gce_service_account_email_address = [your service account email]
gce_service_account_pem_file_path = [path to your authentication file]
gce_project_id = [your project id]
```
