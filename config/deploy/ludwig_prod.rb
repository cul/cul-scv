set :rails_env, "ludwig_prod"
set :domain,      "ludwig.cul.columbia.edu"
set :deploy_to,   "/opt/passenger/scv/"
set :user, "deployer"
set :branch, "master"
set :scm_passphrase, "Current user can full owner domains."

role :app, domain
role :web, domain
role :db,  domain, :primary => true

