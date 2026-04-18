#!/bin/bash

# Script 2: Menu-driven script with functions
# Runs until option 4 (Exit) is selected

# ─────────────────────────────────────────
# FUNCTION 1: Calculate factorial
# ─────────────────────────────────────────
calculate_factorial() {
    read -p "Enter a number: " num

    # Validate input is a non-negative integer
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Error: Please enter a valid non-negative integer."
        return
    fi

    result=1
    for (( i=2; i<=num; i++ )); do
        result=$(( result * i ))
    done

    echo "Factorial of $num is: $result"
}

# ─────────────────────────────────────────
# FUNCTION 2: Fix permissions on .sh files
# ─────────────────────────────────────────
fix_sh_permissions() {
    echo "Searching current directory for non-executable .sh files..."

    found=0
    for file in *.sh; do
        # Check if any .sh files exist
        [ -e "$file" ] || continue

        # If file is not executable, make it executable
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

# ─────────────────────────────────────────
# FUNCTION 3: Display system information
# ─────────────────────────────────────────
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

# ─────────────────────────────────────────
# MAIN MENU LOOP
# ─────────────────────────────────────────
while true; do
    echo ""
    echo "============================="
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