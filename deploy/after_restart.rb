on_app_servers do
  sudo "monit restart all -g ey-sidekiq_sidekiq"
end

