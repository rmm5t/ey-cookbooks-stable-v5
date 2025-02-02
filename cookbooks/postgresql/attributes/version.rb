case attribute.dna.engineyard.environment.db_stack_name
when "postgres9_4"
  default['postgresql']['latest_version'] = '9.4.22'
  default['postgresql']['short_version'] = '9.4'
when "postgres9_5"
  default['postgresql']['latest_version'] = '9.5.17'
  default['postgresql']['short_version'] = '9.5'
when "postgres9_6"
  default['postgresql']['latest_version'] = '9.6.13'
  default['postgresql']['short_version'] = '9.6'
when "postgres10"
  default['postgresql']['latest_version'] = '10.8'
  default['postgresql']['short_version'] = '10'
end
default['postgresql']['datadir'] = "/db/postgresql/#{node['postgresql']['short_version']}/data/"
default['postgresql']['dbroot'] = '/db/postgresql/'
default['postgresql']['owner'] = 'postgres'
