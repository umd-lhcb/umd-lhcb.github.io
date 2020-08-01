module Jekyll::SetOperations
  def complement(ary, diff_ary)
    return ary - diff_ary
  end

  def intersection(ary1, ary2)
    return ary1 & ary2
  end
end

Liquid::Template.register_filter(Jekyll::SetOperations)
