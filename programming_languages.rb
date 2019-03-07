def reformat_languages(languages)
  # your code here
  reformatted_language = {}
  styles = languages.keys
  languages.each do |style, data|
    data.each do |language, type|
      if !reformatted_language.has_key?(language)
        reformatted_language[language] = {
        :type => type[:type],
        :style => []
      }
        
      end
      styles.each do |s|
        if s == style
          reformatted_language[language][:style] << s
        end
      end
    end
  end
  return reformatted_language
end
