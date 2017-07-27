task :newsletter => :environment do
  if Time.now.wday == 1
    User.all.each do |user|
      NewsletterMailer.weekly(user.email).deliver_now
    end

    Subscriber.all.where.not("email IN (?)", User.all.map{|u| u.email}).each do |s|
      NewsletterMailer.weekly(s.email).deliver_now
    end

  end
end