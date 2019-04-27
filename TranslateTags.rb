def to_HTML
	file = open "Markdown.txt"
	file.each do |line|
		if line.include? "#"
			a = "<h1>" + line.split('#').join("").chop + "</h1>"
		end

		if line.include? "##"
			a = "<h2>" + line.split('##').join("").chop + "</h2>"
		end

		if line.include? "###"
			a = "<h3>" + line.split('###').join("").chop + "</h3>"
		end

		if line.include? "####"
			a = "<h4>" + line.split('####').join("").chop + "</h4>"
		end

		if line.include? "#####"
			a = "<h5>" + line.split('#####').join("").chop + "</h5>"
		end

		if line.include? "######"
			a = "<h6>" + line.split('######').join("").chop + "</h6>"
		end

		if line.include? "*"
			a = "<p><strong>" + line.split('*').join("").chop + "</strong></p>"
		end

		if line.include? "**"
			a = "<p><em>" + line.split('**').join("").chop + "</em></p>"
		end

		if line.include? "~~"
			a = "<p><del>" + line.split('~~').join("").chop + "</del></p>"
		end
		if line.include? "* "
			a = "<ul><li>" + line.split('* ').join("").chop + "</li></ul>"
		end

		output_file = File.open("HTML.txt", 'a')
		output_file.puts a
		output_file.close
		puts a
	end
	file.close
end

to_HTML