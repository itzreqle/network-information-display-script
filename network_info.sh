#!/bin/bash

# Define RGB color codes using ANSI escape codes
RGB_RED='\033[38;2;255;0;0m'    # Red
RGB_GREEN='\033[38;2;0;255;0m'  # Green
RGB_BLUE='\033[38;2;0;0;255m'   # Blue
NC='\033[0m'  # No color

# Check the operating system to determine the appropriate commands
case "$(uname -s)" in
  Linux*)
    # Linux commands
    hostname=$(hostname)
    ip_address=$(hostname -I)
    mac_address=$(ip link show | awk '/ether/ {print $2}')
    ifconfig_cmd="ifconfig -a"
    route_cmd="route -n"
    dns_cmd="cat /etc/resolv.conf"
    connections_cmd="netstat -tuln"
    ;;
  Darwin*)
    # macOS commands
    hostname=$(hostname)
    ip_address=$(ipconfig getifaddr en0)
    mac_address=$(ifconfig en0 | awk '/ether/ {print $2}')
    ifconfig_cmd="ifconfig -a"
    route_cmd="netstat -rn"
    dns_cmd="cat /etc/resolv.conf"
    connections_cmd="netstat -tuln"
    ;;
  CYGWIN*|MINGW*|MSYS*)
    # Windows commands (WSL)
    hostname=$(hostname)
    ip_address=$(ipconfig | awk '/IPv4 Address/ {print $NF}')
    mac_address=$(ipconfig | awk '/Physical Address/ {print $NF}')
    ifconfig_cmd="ipconfig"
    route_cmd="route print"
    dns_cmd="cat /etc/resolv.conf" # In WSL, you can use the Linux resolv.conf
    connections_cmd="netstat -tuln"
    ;;
  *)
    # Unsupported operating system
    echo "Unsupported operating system"
    exit 1
    ;;
esac

# Display the hostname in RGB colors
echo -e "Hostname: ${RGB_BLUE}$hostname${NC}"

# Display the IP address in RGB colors
echo -e "IP Address: ${RGB_GREEN}$ip_address${NC}"

# Display the MAC address in RGB colors
echo -e "MAC Address: ${RGB_RED}$mac_address${NC}"

# Display the network interfaces in RGB colors
echo -e "${RGB_BLUE}Network Interfaces:${NC}"
$ifconfig_cmd

# Display the routing table in RGB colors
echo -e "${RGB_GREEN}Routing Table:${NC}"
$route_cmd

# Display DNS information in RGB colors
echo -e "${RGB_BLUE}DNS Servers:${NC}"
$dns_cmd

# Display the current connections in RGB colors
echo -e "${RGB_GREEN}Current Connections:${NC}"
$connections_cmd

# Display open ports in RGB colors
echo -e "${RGB_BLUE}Open Ports:${NC}"
ss -tuln
