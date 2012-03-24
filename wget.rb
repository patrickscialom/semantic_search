class Wget

	@wget_cmd="wget --tries=5 --dns-timeout=30 --connect-timeout=5 --read-timeout=5 --timestamping --directory-prefix=data/pages --wait=2 --random-wait --recursive --level=5 --no-parent --no-verbose --reject *.jpg --reject *.gif --reject *.png --reject *.css --reject *.pdf --reject *.bz2 --reject *.gz  --reject *.zip --reject *.mov --reject *.fla --reject *.xml --reject *.js --no-check-certificate"
  
  def self.cmd
    @wget_cmd
  end
  
  def initialize(url)
    system(Wget.cmd + ' ' + url)
  end
  
end