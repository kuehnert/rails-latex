# encoding: utf-8
# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'

Gem::Specification.new do |s|
  s.name = %q{rails-latex}
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthias Kühnert", "Geoff Jacobsen"]
  s.date = %q{2011-06-01}
  s.description = %q{rails-latex is a renderer for rails 3 which allows tex files with erb to be turned into an inline pdf.}
  s.email = %q{m.github@mailnull.com}
  s.extra_rdoc_files = [
    "MIT-LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
    "lib/erb_latex.rb",
    "lib/latex_to_pdf.rb",
    "lib/rails-latex.rb",
    "test/helper.rb",
    "test/test_doc.tex",
    "test/test_latex_to_pdf.rb"
  ]
  s.rdoc_options = ["--main = README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{A LaTeX to pdf rails 3 renderer.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
  end
end
