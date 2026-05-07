#!/bin/bash


calculate_factorial() {
    read -p "Enter a number: " num 
    

    
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then  #burası biraaz karışı köğren.
        echo "Error: Please enter a valid non-negative integer.",
        
        return
    fi


    result=1

    for (( i=2; i<=num; i++ )); do

        result=$(( result * i ))  
    done
    echo "Factorial of $num is: $result"

    # 1 * 2 = 2 
    # 2 * 3 = 6
    # 6 * 4 = 24
    # 24 * 5 = 120
}

fix_sh_permissions() {
    echo "Searching current directory for non-executable .sh files..."

    found=0
    
    for file in *.sh; do
        
        [ -e "$file" ] || continue

        if [ ! -x "$file" ]; then
            chmod +x "$file" 
            echo "Permission changed: $file → now executable"
            found=1
        fi
    done

    if [ "$found" -eq 0 ]; then
        echo "No non-executable .sh files found in current directory."
    fi
}

display_system_info() {
    echo "-----------------------------"
    echo "  SYSTEM INFORMATION"
    echo "-----------------------------"
    echo "Date        : $(date)"
    echo "Shell       : $SHELL"
    echo "Home Dir    : $HOME"
    echo "Run by user : $USER"
    echo "-----------------------------"
}

while true; do
    echo 
    echo "         MAIN MENU"
    echo "============================="
    echo "1. Calculate factorial"
    echo "2. Fix .sh file permissions"
    echo "3. Display system info"
    echo "4. Exit"
    echo "============================="
    read -p "Select an option: " choice

    case $choice in
        1) calculate_factorial ;;
        2) fix_sh_permissions ;;
        3) display_system_info ;;
        4)
            echo "Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done