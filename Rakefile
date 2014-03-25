require 'rake/clean'
require 'puppetlabs_spec_helper/rake_tasks'

CLEAN.include('modules', 'spec/fixtures/manifests', 'Puppetfile.lock')
CLOBBER.include('.tmp', '.librarian')

task :librarian_spec_prep do
 sh "librarian-puppet install"
end
task :spec_prep => :librarian_spec_prep

task :default => [:spec]

task :vagrant_up do
  sh "vagrant up"
end
task :vagrant_up => :spec_prep

task :vagrant_provision do
  sh "vagrant provision"
end
task :vagrant_provision => :vagrant_up

task :serverspec do
  sh "cd serverspec ; rake spec"
end
task :serverspec => :vagrant_provision
