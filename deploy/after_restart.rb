on_app_servers do
  sudo "monit unmonitor all -g eysidekiq_sidekiq"
  sudo "/engineyard/bin/sidekiq eysidekiq stop production 0"
  sudo "/engineyard/bin/sidekiq eysidekiq start production 0"
  sudo "monit monitor all -g eysidekiq_sidekiq"
end

