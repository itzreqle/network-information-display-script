# Network Information Display Script

This Bash script displays network information including the hostname, IP address, MAC address, network interfaces, routing table, DNS servers, current connections, and open ports in an organized and color-coded format.

## Installation

Before running the script, ensure you have the following prerequisites:

- **For Linux Users:**
  - A Unix-like operating system (e.g., Ubuntu, CentOS).
  - Bash shell (typically pre-installed).
  - Open a terminal.

  To install and run the script on Linux:

  1. Clone this repository to your local machine or download the script file (`network_info.sh`) to a directory of your choice:

     ```bash
     git clone https://github.com/itzreqle/network-information-display-scriptrmation-display-script.git
     ```

  2. Open your terminal and navigate to the directory where the script is located:

     ```bash
     cd network-information-display-script
     ```

  3. Make the script executable:

     ```bash
     chmod +x network_info.sh
     ```

  4. Execute the script:

     ```bash
     ./network_info.sh
     ```

- **For macOS Users:**
  - macOS operating system.
  - Bash shell (pre-installed).
  - Open a terminal.

  To install and run the script on macOS:

  1. Clone this repository to your local machine or download the script file (`network_info.sh`) to a directory of your choice:

     ```bash
     git clone https://github.com/itzreqle/network-information-display-scriptrmation-display-script.git
     ```

  2. Open your terminal and navigate to the directory where the script is located:

     ```bash
     cd network-information-display-script
     ```

  3. Make the script executable:

     ```bash
     chmod +x network_info.sh
     ```

  4. Execute the script:

     ```bash
     ./network_info.sh
     ```

- **For Windows Users (Using Windows Subsystem for Linux - WSL):**
  - Windows 10 or later with Windows Subsystem for Linux (WSL) installed.
  - A Linux distribution installed via WSL (e.g., Ubuntu).
  - Open a WSL terminal.

  To install and run the script on Windows (using WSL):

  1. Open your WSL terminal.

  2. Clone this repository to your local machine within the WSL environment or download the script file (`network_info.sh`) to a directory of your choice:

     ```bash
     git clone https://github.com/itzreqle/network-information-display-scriptrmation-display-script.git
     ```

  3. Navigate to the directory where the script is located:

     ```bash
     cd network-information-display-script
     ```

  4. Make the script executable:

     ```bash
     chmod +x network_info.sh
     ```

  5. Execute the script:

     ```bash
     ./network_info.sh
     ```

The script will automatically detect your operating system (Linux, macOS, or Windows with WSL) and run the appropriate commands accordingly.

## Usage

Once you've executed the script, it will display the following network information:

- **Hostname:** The name of your system.
- **IP Address:** The IP address of your system.
- **MAC Address:** The MAC address of your default network interface.
- **Network Interfaces:** A list of network interfaces on your system.
- **Routing Table:** Information about the routing table.
- **DNS Servers:** DNS server information.
- **Current Connections:** A list of current network connections.
- **Open Ports:** A list of open ports on your system.

The information is color-coded as follows:
- Hostname: Blue
- IP Address: Green
- MAC Address: Red
- Network Interfaces: Blue
- Routing Table: Green
- DNS Servers: Blue
- Current Connections: Green
- Open Ports: Blue

## How It Works

The script determines your operating system (Linux, macOS, or Windows with WSL) and uses platform-specific commands to gather network information. It then formats and displays the information with colored text using ANSI escape codes.

If you are using Windows, ensure that you have Windows Subsystem for Linux (WSL) installed, as this script relies on Linux-like commands. The script will automatically detect the operating system and run the appropriate commands accordingly.

Please note that the script may require superuser (sudo) privileges on Linux and macOS to access certain network information.

Feel free to customize the script or improve it according to your needs. Contributions and suggestions are welcome!
