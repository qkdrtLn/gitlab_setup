external_url 'gitlab.nikitaserkin.pp.ua'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")