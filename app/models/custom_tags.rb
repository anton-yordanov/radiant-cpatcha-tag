module CustomTags
  
  include Radiant::Taggable
  
  desc "Creates an CPATCHA"
  tag "cpatcha" do |tag|
    %{<div class="cpatcha">
        <img src="http://captchator.com/captcha/image/99871467714092"/>
        <div class="just_txt">
          <input name="cpatcha" class="just_txt" value=""/>
        </div>
      <div class="content">
        #{tag.expand}
      </div>
    </div>}
  end
    
end
