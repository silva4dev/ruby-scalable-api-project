# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/simplecov-html/all/simplecov-html.rbi
#
# simplecov-html-0.13.1

module SimpleCov
end
module SimpleCov::Formatter
end
class SimpleCov::Formatter::HTMLFormatter
  def asset_inline(name); end
  def asset_output_path; end
  def assets_path(name); end
  def branchable_result?; end
  def coverage_css_class(covered_percent); end
  def covered_percent(percent); end
  def format(result); end
  def formatted_file_list(title, source_files); end
  def formatted_source_file(source_file); end
  def id(source_file); end
  def initialize; end
  def line_status?(source_file, line); end
  def link_to_source_file(source_file); end
  def output_message(result); end
  def output_path; end
  def shortened_filename(source_file); end
  def strength_css_class(covered_strength); end
  def template(name); end
  def timeago(time); end
end
