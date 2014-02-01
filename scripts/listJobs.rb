
require "rubygems"
require "jenkins_api_client"
require "graphite-api"


@client = JenkinsApi::Client.new(:server_ip => '192.168.6.56', :jenkins_path => "/jenkins/" )

# The following call will return all jobs matching 'Testjob'

jobs =  @client.job.list_all_with_details

summary = Hash.new(0)

jobs.each do |job|
   summary[ job["color"] ] += 1
end


graphiteClient = GraphiteAPI.new( :graphite => 'graphite:2003' )

summary.each do |type,count|
  graphiteClient.metrics "jenkins.jobsummary.%s" % type => count
end