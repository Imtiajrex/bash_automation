#!/bin/bash
#read project
user="imtiajrex"
if [[ $1 = "school" ]]
then
    su -c "php '/mnt/Fast Projects/Web/school_backend/artisan' serve &" $user
    
    /opt/lampp/lampp start &


    su -c "code '/mnt/Fast Projects/Web/school_argon/' &" $user
    su -c "code '/mnt/Fast Projects/Web/school_backend/' &" $user

    su -c "npm start --prefix '/mnt/Fast Projects/Web/school_argon/' &" $user

else
    echo "Not Valid Project!"
fi

disown & exit
