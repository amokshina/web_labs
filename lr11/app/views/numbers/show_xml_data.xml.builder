

xml.instruct! :xml, version: '1.0'
xml.numbers do
  @data.each do |number|
    xml.number do
      xml.val number.val
      xml.res number.res
    end
  end
end
