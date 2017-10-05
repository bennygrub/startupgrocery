task :newsletter => :environment do
  if Time.now.wday == 1
    Subscriber.where(subscribed: true).each do |sub|
      NewsletterMailer.weekly(sub.id).deliver_now
    end
  end
end

task :newsletter_test => :environment do
  Subscriber.where(email: "blgruber@gmail.com").each do |sub|
    NewsletterMailer.weekly(sub.id).deliver_now
  end
end