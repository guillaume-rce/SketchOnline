cd ../
scp -i ./SketchOnline-1/vm-SteveNoumi_key.pem -r SketchOnline/ stevenoumi@20.39.244.13:/home/stevenoumi/

ssh -i ./SketchOnline-1/vm-SteveNoumi_key.pem stevenoumi@20.39.244.13 << EOF
    sudo -i
    rm -rf /srv/siteweb/SketchOnline
    cp -r /home/stevenoumi/SketchOnline/ /srv/siteweb/stevenoumi/
    systemctl restart apache2.service
EOF
