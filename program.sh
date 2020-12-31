#!/bin/bash
#read project
if [[ $1 = "school" ]]
then
    php '/mnt/Fast Projects/Web/school_backend/artisan' serve &

    /opt/lampp/lampp start &


    code '/mnt/Fast Projects/Web/school_argon/' &
    code '/mnt/Fast Projects/Web/school_backend/' &

    npm start --prefix '/mnt/Fast Projects/Web/school_argon/' &

    clear
    disown & exit
else
    echo "Not Valid Project!"
fi

exit