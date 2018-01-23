require 'open3'
Puppet::Type.type(:usersec).provide :aix do
	
	desc "manages user security settings for AIX"
	
	confine :operatingsystem => :AIX
	defaultfor :operatingsystem => :AIX
	
	commands :chsec => 'chsec',
		       :lssec => 'lssec'
		      
  def getuser(attr)
    Open3.popen3("lssec -f /etc/security/user -s default -a #{attr}") do |stdin, stdout, stderr|
    	stdout.each do |line|
    		elements=line.split(/\s+/)
    		chum=elements[1].split('=')
    		if chum[0] == attr
    		  return chum[1]
    		end
      end
    end
  end
  
  def umask
    if getuser("umask") == resource[:umask]
      return resource[:umask]
    end
  end
  
  def umask=(value)
    system('chsec -f /etc/security/user -s default -a umask='"#{resource[:umask]}")
  end
  
  def loginretries
    if getuser("loginretries") == resource[:loginretries]
      return resource[:loginretries]
    end
  end
  
  def loginretries=(value)
    system('chsec -f /etc/security/user -s default -a loginretries='"#{resource[:loginretries]}")
  end
  
  def histexpire
    if getuser("histexpire") == resource[:histexpire]
      return resource[:histexpire]
    end
  end
  
  def histexpire=(value)
    system('chsec -f /etc/security/user -s default -a histexpire='"#{resource[:histexpire]}")
  end
  
  def histsize
    if getuser("histsize") == resource[:histsize]
      return resource[:histsize]
    end
  end
  
  def histsize=(value)
    system('chsec -f /etc/security/user -s default -a histsize='"#{resource[:histsize]}")
  end
  
  def minage
    if getuser("minage") == resource[:minage]
      return resource[:minage]
    end
  end
  
  def minage=(value)
    system('chsec -f /etc/security/user -s default -a minage='"#{resource[:minage]}")
  end
  
  def maxage
    if getuser("maxage") == resource[:maxage]
      return resource[:maxage]
    end
  end
  
  def maxage=(value)
    system('chsec -f /etc/security/user -s default -a maxage='"#{resource[:maxage]}")
  end
  
  def maxexpired
    if getuser("maxexpired") == resource[:maxexpired]
      return resource[:maxexpired]
    end
  end
  
  def maxexpired=(value)
    system('chsec -f /etc/security/user -s default -a maxexpired='"#{resource[:maxexpired]}")
  end
  
  def minalpha
    if getuser("minalpha") == resource[:minalpha]
      return resource[:minalpha]
    end
  end
  
  def minalpha=(value)
    system('chsec -f /etc/security/user -s default -a minalpha='"#{resource[:minalpha]}")
  end
  
  def minother
    if getuser("minother") == resource[:minother]
      return resource[:minother]
    end
  end
  
  def minother=(value)
    system('chsec -f /etc/security/user -s default -a minother='"#{resource[:minother]}")
  end
  
  def minlen
    if getuser("minlen") == resource[:minlen]
      return resource[:minlen]
    end
  end
  
  def minlen=(value)
    system('chsec -f /etc/security/user -s default -a minlen='"#{resource[:minlen]}")
  end
  
  def mindiff
    if getuser("mindiff") == resource[:mindiff]
      return resource[:mindiff]
    end
  end
  
  def mindiff=(value)
    system('chsec -f /etc/security/user -s default -a mindiff='"#{resource[:mindiff]}")
  end
  
  def maxrepeats
    if getuser("maxrepeats") == resource[:maxrepeats]
      return resource[:maxrepeats]
    end
  end
  
  def maxrepeats=(value)
    system('chsec -f /etc/security/user -s default -a maxrepeats='"#{resource[:maxrepeats]}")
  end
end
  
  