FactoryGirl.define do
  factory :envelope, class: MailCannon::Envelope do
    from 'mailcannon@railsonthebeach.com'
    to [{email: 'mailcannon@railsnapraia.com', name: 'Mail Cannon'}]
    subject 'Test'
    mail MailCannon::Mail.new(text: "Hello %name%, If you can't read the HTML content, you're screwed!", html: "<html><body><p>%name%,<br/><br/>You should see what happens when your email client can't read HTML content.</p></body></html>")

    factory :envelope_multi, class: MailCannon::Envelope do
      from 'mailcannon@railsonthebeach.com'
      to [
        {email: 'mailcannon@railsnapraia.com', name: 'Mail Cannon'},
        {email: 'lucasmartins@railsnapraia.com', name: 'Lucas Martins'},
        {email: 'contact@railsonthebeach.com', name: 'Contact'}
      ]
      hash = {"%name%"=>['Mail Cannon','Lucas Martins','Contact']}
      substitutions hash
      subject 'Test'
    end
  end
end
