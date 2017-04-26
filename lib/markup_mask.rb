class MarkupMask
  def self.markup_mask(text)
      tagsRegExp = /(<\/?\w+(?:(?:\s+\w+(?:\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>)/
      nbspsRegExp = /(&nbsp;)/
      jsRegExp = /(function.*?})/
      @regex = Regexp.union(nbspsRegExp, tagsRegExp, jsRegExp)
      unless text.nil?
        @text_arr = text.split(@regex)
      end
    end
end
