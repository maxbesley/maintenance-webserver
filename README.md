# Placeholder App for Website Maintenance

A very simple web app that serves a plain HTML page
saying the website is currently undergoing maintenance.


## Usage

Perform the following steps on the remote web server:

1. Clone this repository and traverse into it

2. In the **Caddyfile** replace `example.com` with your domain name

3. Gracefully stop your original web application

4. Check that ports **443** and **80** are free by running `ss -tuan`

5. Now simply run `docker compose up --detach`


## License

This code is made available under the [MIT License](https://opensource.org/licenses/MIT).
