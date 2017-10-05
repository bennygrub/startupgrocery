task :newsletter => :environment do
  if Time.now.wday == 4
    Subscriber.where(subscribed: true).each do |sub|
      NewsletterMailer.weekly(sub.id).deliver_now
    end
  end
end