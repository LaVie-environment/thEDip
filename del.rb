['bacon', 'eggs', 'sausage'].each do |type|
    file "/tmp/#{type}" do
        content "#{type} is delicious!"
    end
end