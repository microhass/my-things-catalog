module ListAuthors
  def list_authors
    s_no = 1
    ObjectSpace.each_object(Author) do |obj|
      puts "Serial Number: #{s_no}, First Name: #{obj.first_name} Last Name: #{obj.last_name}"
      s_no += 1
    end
  end
end
