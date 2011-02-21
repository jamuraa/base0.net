require 'yaml'

for filename in ARGV do
  content = File.read(filename)

  if content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
    content = content[($1.size + $2.size)..-1]

    data = YAML.load($1)

    # excise the excerpt!
    deleted = data.delete("wordpress_url")
    if deleted
      out = File.open(filename, "w")
      out.write(data.to_yaml)
      out.write("---\n")
      out.write(content)
    end
  end
end

