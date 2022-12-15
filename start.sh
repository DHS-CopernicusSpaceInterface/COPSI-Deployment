#!/bin/bash

echo "  *********************************************************************************"
echo "  *                                                                               *"
echo "  *                             Welcome to COPSI!                                 *"
echo "  *                                                                               *"
echo "  *********************************************************************************"

echo "  Starting COPSI..."

docker-compose pull

docker-compose up -d

return_code=$?

if [ $return_code -eq 0 ]; then
    echo "  Application started"

    echo "  You can check the application status by means of the following command:"
    echo "  docker ps"

    echo "  You can check the application logs by means of the following commands:"
    echo "  docker logs -f copsi"    
else
    echo "  Application launching error!"
fi
