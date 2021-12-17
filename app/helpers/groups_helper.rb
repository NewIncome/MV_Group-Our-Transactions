module GroupsHelper
  # To get the links for the icon images.
  # Need: link(data-icon_src), name(data-name), author(data-author_name)
  # & site flaticon.com
  def icons
    html_data = RestClient.get('https://www.flaticon.com/packs/minimal-school')
    nok_obj = Nokogiri::HTML(html_data)
    # tags = nok_obj.xpath('//html/body/section/div/div/section/ul/li')
    tags = nok_obj.xpath("//section[@class='search-result']/ul/li")
    # after 50 it doesn't get the whole values of the children, so cut it
    tags = tags.slice(0,49)
    i_hash = {}
    tags.each_with_index do |li, i|
      i_hash[i] = {
        'name' => li['data-name'],
        'link' => li['data-png'],
        # 'link' => li.children[3].children[1]['href'], #to target the inside a element's href ; not needed btw
        'auth' => li['data-author_name']
      }
    end
    i_hash
  end
end
