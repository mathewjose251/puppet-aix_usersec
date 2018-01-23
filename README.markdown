#Puppet module to manage AIX default user security settings #

This module is a custom type/provider that enbables the ability to manage the default user security settings in AIX through puppet.

### Requirements

Module has been tested on:

 * PE Puppet 3.3
 * OS:
   * AIX 5.3
   * AIX 6.1
   * AIX 7.1
Attributes that can be managed:
  * maxage      
  * minlen  
  * loginretries
  * histexpire  
  * histsize 
  * minage     
  * maxexpired  
  * minalpha     
  * minother  
  * mindiff    
  * maxrepeats  
  * umask   
      
```puppet
class { 'usersecurity'
  usersec { 'default_settings':
    maxage => '12',  # set max user password age
    minlen => '27',  # set minimum user password length
  }
}
```

***
