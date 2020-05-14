module GroupsHelper
  # To get the links for the icon images.
  # Need: link(data-icon_src), name(data-name), author(data-author_name)
  # & site flaticon.com
  def icons
    html_data = RestClient.get('https://www.flaticon.com/packs/minimal-school')
    nok_obj = Nokogiri::HTML(html_data)
    tags = nok_obj.xpath('//html/body/section/div/div/section/ul/li')
    i_hash = {}
    tags.each_with_index do |li, i|
      i_hash[i] = {
        'name' => li['data-name'],
        'link' => li['data-icon_src'],
        'auth' => li['data-author_name']
      }
    end
    i_hash
  end
end
