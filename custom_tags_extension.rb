class CustomTagsExtension < Radiant::Extension
  
  version "1.0"
  description "Very basic and simple cpatcha that may be used on forms"
  url "http://captchator.com/"  

  
  def activate
    SiteController.class_eval{
      session :disabled => false
    }
    Page.send :include, CustomTags
  end
end
