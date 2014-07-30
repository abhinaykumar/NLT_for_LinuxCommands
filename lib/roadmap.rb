1. Find all computers connected to a similar network.(using arp-scan):
    using command: 
    sudo arp-scan --interface=wlan0 --localnet // wlan0 for WL,eth0 for ethernet
    or 
    using nmap command:
    nmap -sP -PA21,22,25,3389 192.168.0.1/24
    
2. GET public IP of your network using command: 
    curl ifconfig.me

3. Get Every Interfaces IP Address using command:
  /sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' |awk -F: '{ print $1 ": " $3 }'

4. Create a simple Timer(countdown) using ruby:
    fin = Time.now + 5 * 60
    while Time.now < fin 
      puts fin — Time.now
      sleep 1
    end
5. 