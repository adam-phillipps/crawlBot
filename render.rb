require 'dotenv'
Dotenv.load
require 'aws-sdk'
Aws.use_bundled_cert!
require 'httparty'
require 'byebug'
require 'logger'
require 'zip/zip'

module Render
  class BrokenJobException < Exception; end

  def s3
    Aws::S3::Client.new(
      region: ENV['AWS_REGION'],
      credentials: creds
    )
  end

  def backlog
    File.join(a_e_dir, 'backlog')
  end

  def finished
    File.join(a_e_dir, 'finished')
  end

  def a_e_dir
    # File.join('/Users/adam/code/F') # development mode
    File.join('F:') # production mode.  change this to your working dir for testing
  end

  def wip_poller
    Aws::SQS::QueuePoller.new(wip_address)
  end

  def backlog_poller
    Aws::SQS::QueuePoller.new(backlog_address)
  end

  def sqs
    Aws::SQS::Client.new(credentials: creds)
  end

  def backlog_address
    ENV['BACKLOG_QUEUE']
  end

  def wip_address
    ENV['WIP_QUEUE']
  end

  def finished_address
    ENV['FINISHED_QUEUE']
  end

  def needs_attention_address
    ENV['NEEDS_ATTENTION_QUEUE']
  end

   def ec2
    Aws::EC2::Client.new(region: ENV['AWS_REGION'],
      credentials: creds)
  end

  def creds
    Aws::Credentials.new(
      ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
  end

  def setup_logger
    logger_client = Logger.new(
      File.open(File.expand_path('../render_slave.log', __FILE__), 'a+')
    )
    logger_client.level = Logger::INFO
    logger_client
  end

  def logger
  #   logger.info("\njob started: #{stats.last_message_received_at}\n#{JSON.parse(msg.body)}\n#{msg}\n\n")
  #  @logger_client ||= setup_logger
  end

  def video_in
    'finished-pointway'
  end

  def sqs_queue_url
    ENV['PROCESSING_QUEUE'] # transcoder job
  end

  def pipeline_id
    ENV['PIPELINE']
  end


  def preset_id
    ENV['PRESET_ID']
  end

  def region
    ENV['REGION'] || 'us-west-2'
  end
end