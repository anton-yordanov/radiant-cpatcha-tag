module CustomTags
  
  include Radiant::Taggable
  
  desc "Creates an CPATCHA"
  tag "cpatcha" do |tag|
    %{<div class="cpatcha">        
        <div class="just_txt">
          <img id="cpatcha_img" src="http://captchator.com/captcha/image/#{tag.expand}" />
          <br />
          <input type="hidden" name="cpatcha_key" value="#{tag.expand}" />
          <input id="cpatcha" name="cpatcha" class="txt_form" value="" />
        </div>      
    </div>}
  end
  
  desc "Make key for CPATCHA, because session in templates and that in Mailer are diferent ???"
  tag "cpatcha_key" do |tag|
    h "#{request.session.id.to_s[4..12]}"
  end
    
end
