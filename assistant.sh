#!/bin/bash
echo "✨ Welcome, I'm your Linux Genie 🧞 — type your wish!"

# Function to display system information
system_info() {
    echo "System Information:"
    echo "--------------------"
    echo "Date: $(date)"
    echo "Uptime: $(uptime -p)"
    echo "Memory Usage: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
    echo "Disk Usage: $(df -h | grep '/dev/sda1' | awk '{print $3 " / " $2}')"
    echo "-----------------------------------------"
}

# Call the function
system_info
# Function to list processes and allow killing
manage_processes() {
    echo "Running Processes:"
    ps aux --sort=-%mem | head -n 10
    echo "--------------------------------------"
    read -p "Enter PID to kill: " pid
    kill $pid
    echo "Process $pid killed."
}

# Call the function
manage_processes
# Function for basic file operations
file_management() {
    echo "Current Directory: $(pwd)"
    echo "List of files:"
    ls -lh
    echo "--------------------------------------"
    
    read -p "Enter a command (create/delete/list): " command
    
    if [[ "$command" == "create" ]]; then
        read -p "Enter file name to create: " filename
        touch "$filename"
        echo "File $filename created."
    elif [[ "$command" == "delete" ]]; then
        read -p "Enter file name to delete: " filename
        rm "$filename"
        echo "File $filename deleted."
    elif [[ "$command" == "list" ]]; then
        ls -lh
    else
        echo "Unknown command"
    fi
}

# Call the function
file_management
# Function for the main menu
main_menu() {
    echo "Welcome to your Linux Assistant!"
    echo "Choose an option:"
    echo "1. System Information"
    echo "2. Process Management"
    echo "3. File Management"
    echo "4. Exit"
    read -p "Enter your choice (1/2/3/4): " choice
    
    case $choice in
        1)
            system_info
            ;;
        2)
            manage_processes
            ;;
        3)
            file_management
            ;;
        4)
            echo "Exiting Linux Assistant. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option"
            main_menu
            ;;
    esac
}

# Call the main menu
main_menu

