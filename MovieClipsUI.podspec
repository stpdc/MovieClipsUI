Pod::Spec.new do |s|
  s.name         = "MovieClipsUI"
  s.version      = "1.0.1"
  s.summary      = "A short description of MovieClipsUI."
  s.description  = "N/A"
  s.homepage     = "http://github.com/stpdc/MovieClipsUI"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "stpdc" => "43500109+stpdc@users.noreply.github.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "http://github.com/stpdc/MovieClipsUI.git", :tag => "#{s.version}" }
  s.source_files  = "MovieClipsUI", "MovieClipsUI/**/*.{h,m,swift}"
end
