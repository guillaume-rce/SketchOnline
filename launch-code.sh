cd ../
scp -i vm-SteveNoumi_key.pem -r SketchOnline/Frontend stevenoumi@20.39.244.13:/home/stevenoumi/

ssh -i vm-SteveNoumi_key.pem stevenoumi@20.39.244.13 << EOF
    sudo -i
    rm -rf /srv/siteweb/SketchOnline/Frontend
    cp -r Frontend /srv/siteweb/
    systemctl restart apache2.service
EOF

open http://20.39.244.13:1956/SketchOnline/Frontend/Pages/index.html
