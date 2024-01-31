cd ../
scp -i SketchOnline/vm-SteveNoumi_key.pem -r SketchOnline/ stevenoumi@20.39.244.13:/home/stevenoumi/

ssh -i SketchOnline/vm-SteveNoumi_key.pem stevenoumi@20.39.244.13 << EOF
    sudo -i
    rm -rf /srv/siteweb/SketchOnline
    cp -r /home/stevenoumi/SketchOnline/ /srv/siteweb/
    systemctl restart apache2.service
EOF

open http://20.39.244.13:1956/SketchOnline/Frontend/Pages/index.html
