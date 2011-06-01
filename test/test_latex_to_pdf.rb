require 'helper'
require 'erb_latex'
require 'ostruct'

Rails = OpenStruct.new(:root => TMP_DIR = File.expand_path("../tmp", __FILE__))

class TestLatexToPdf < Test::Unit::TestCase
  def test_escape
    assert_equal "dsf \\textless{} \\textgreater{} \\& ! @ \\# \\$ \\% \\textasciicircum{} \\textasciitilde{} \\textbackslash{} fds", LatexToPdf.escape_latex('dsf < > & ! @ # $ % ^ ~ \\ fds')
    LatexToPdf.instance_eval{@latex_escaper=nil}
    require 'redcloth'
    assert_equal "dsf \\textless{} \\textgreater{} \\& ! @ \\# \\$ \\% \\^{} \\~{} \\textbackslash{} fds", LatexToPdf.escape_latex('dsf < > & ! @ # $ % ^ ~ \\ fds')
  end

  def test_generate_pdf
    FileUtils.mkdir_p(TMP_DIR)
    File.open(pdf_file=File.join(TMP_DIR, 'out.pdf'), 'wb') do |wio|
      wio.write(LatexToPdf.generate_pdf(IO.read(File.expand_path('../test_doc.tex', __FILE__))))
    end
    assert_equal "hello world\n\n1\n\n\f", `pdftotext #{pdf_file} -`

    assert_equal ["#{TMP_DIR}/rails-latex/input.log"], Dir["#{TMP_DIR}/rails-latex/*"]
  end
end
