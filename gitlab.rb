external_url 'https://gitlab.nikitaserkin.pp.ua/'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")
nginx['enable'] = true
nginx['listen_port'] = 80
nginx['listen_https'] = false
nginx['error_log_level'] = "debug"
nginx['proxy_set_headers'] = {
    "X-Forwarded-Proto" => "https",
    "X-Forwarded-Ssl" => "on"
}
gitlab_rails['gitlab_shell_ssh_port'] = 2224
letsencrypt['enable'] = false