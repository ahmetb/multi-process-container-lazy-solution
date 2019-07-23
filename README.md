# Example: multiple processes in a container (for Cloud Run)

Read the blog post for more details: http://ahmet.im/blog/cloud-run-multiple-processes-easy-way.

Build:

    docker build -t foo .

Run:

    docker run --port 5000:8080 --rm foo

Visit:

```sh
http://localhost:5000                  # served by Python server
http://localhost:5000/static/horse.jpg # served by NGINX
```

