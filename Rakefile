plugins = [
	"git://github.com/tomtom/tcomment_vim.git",
	"git://github.com/tpope/vim-surround.git",
	"git://github.com/tpope/vim-endwise.git",
	"git://github.com/scrooloose/syntastic.git",
	"git://github.com/Townk/vim-autoclose.git",
	"git://github.com/scrooloose/nerdtree.git",
	"git://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/tpope/vim-rails.git",
  "git://github.com/tpope/vim-haml.git"
]

task :install do
  root = File.expand_path(File.dirname(__FILE__))

  puts 'Installing Bundles'

  plugins.each do |p|
	 system("cd bundle && git clone #{p}")
  end

  puts '*' * 79
  puts
  puts 'All done!'
  puts
  puts '*' * 79
end

desc 'Update to latest and greatest'
task :update do
  system('git pull origin master') 
  puts 'Updating Bundles'

  Dir.glob("bundle/*").each do |dir|
    puts "Updating #{dir}"
    system("cd #{dir} && git pull")
  end

  puts '*' * 79
  puts
  puts 'Finished'
  puts
  puts '*' * 79
end
