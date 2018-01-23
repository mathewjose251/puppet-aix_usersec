require 'pathname'

Puppet::Type.newtype(:usersec) do
	desc "Manages user security settings for AIX"
	
	newparam(:name) do
		isnamevar
	end
	
	newproperty(:umask) do
		desc "specify the default umask for the user account"
	end
	
	newproperty(:loginretries) do
		desc "specify the amount of login tries before account is locked"
	end
	
	newproperty(:histexpire) do
		desc "specify the expiration of the passwords"
	end
	
	newproperty(:histsize) do
		desc "specify the length of which passwords can be reused"
	end
	
	newproperty(:minage) do
		desc "minimum age of password"
	end
	
	newproperty(:maxage) do
		desc "the maximum age before password expires"
	end
	
	newproperty(:maxexpired) do
		desc "something to do with expiration. will find out later"
	end
	
	newproperty(:minalpha) do
		desc "will find out at a later date"
	end
	
	newproperty(:minother) do
		desc "will find this out later too"
	end
	
	newproperty(:minlen) do
		desc "the minimum length of a password"
	end
	
	newproperty(:mindiff) do
		desc "the minimum character difference between previous passwords"
	end
	
	newproperty(:maxrepeats) do
		desc "the maximum number of repeated characters in a password"
	end
end
	