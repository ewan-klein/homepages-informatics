 

=begin
@url = "http://homepages.inf.ed.ac.uk/ewan/publications/Klein2011TVC.pdf"
@pdf = ''

if
	@url.end_with?(".pdf")
	@pdf = @url
	puts @pdf
else
	puts "not a pdf" 
end

@url = "https://doi.org/10.1007/BF00351812"
@doi = ''

if
	@url.start_with?("https://doi.org")
	@doi = @url
	puts @doi
else
	puts "not a doi" 
end
=end

require 'bibtex'
b = BibTeX.open('./references.bib')

@book1 = b['gazdarGeneralizedPhraseStructure1985a']
puts @book1.author

@book2 = b['gazdarGeneralizedPhraseStructure1985a']
puts @book2[:bibtex_type]

puts b['gazdarGeneralizedPhraseStructure1985a']
