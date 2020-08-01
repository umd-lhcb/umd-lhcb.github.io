module Jekyll::Misc
  def flatten_as(hash, key_name)
    ary = []
    hash.each do | key, val |
      val.each do | x |
        x[key_name] = key
        ary.append(x)
      end
    end

    return ary
  end

  def getkeys(hash)
    return hash.keys
  end
end

Liquid::Template.register_filter(Jekyll::Misc)
