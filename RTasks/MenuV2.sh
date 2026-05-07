#!/bin/bash

calc_factorial(){
    read -p "Enter a number: " num
    # Validate input is a non-negative integer
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then  #burası biraaz karışı köğren
        echo "Error: Please enter a valid non-negative integer."
        return
    fi
    result=1
    for (( i=2; i<=num; i++ )); do
        result=$(( result * i ))
    done
    echo "Factorial of $num is: $result"
}


 display_info() {
    echo "******************************"
    echo " System info"
    echo "******************************"
    echo "Date : $(date)"
    echo "Runing User : $USER"
    echo "Home directoyr : $HOME"
    echo "Shell type : $SHELL"
    echo "******************************"
 }    

fix_perm() {
echo " Searchin current directory for .sh files that are not exevutable."

   found=0;
  for file in *.sh; do 
     #1.Kontrol: Dosya gerçekten var mı ? 
    if [ -e "$file" ]; then 
     #2.Kontrol: Çalıştırma izni YOK mu ? 
        if [ ! -x "$file" ]; then 
            chmod +x "$file"
            echo "Permission changed: $file -> now executable"
            found=1;
        fi
    fi
  done

  #3.Kontrol : hiç değişiklik ypaıldı mı ? 

    if [ "$found" -eq 0 ]; then
    echo " No non-executable .sh files found in current directory."
        fi
}
        
        

#amacım burada bir menü görüntüsü oluşturmak 
# my purpose here is to create a menu display
#ilk önce 4 tane seçeneğin gösterildiği menü ekranını oluşturacağım.
# first , I will create a menu screen that shows 4 options.
# ilk önce bir do while döngüsü açacağım ki hep burada dursun
# first, I will open a do while loop to stay here all the time

while true; do 
    echo "******************************"
    echo "    MENU    "
    echo "******************************"
    echo "1.Display system information"
    echo "2.Fix permissions on .sh files"
    echo "3.Calculate factorial"
    echo "4.Exit"
    echo "******************************"
    read -p "Select an option: " choice

    case $choice in
        1) display_info;;
        2) fix_perm;;
        3) calc_factorial;;
        4) 
            echo "Exiting now ...";  exit 0;;

        *) echo "you are selecting wrong option, please select again";;
    esac
done




 
