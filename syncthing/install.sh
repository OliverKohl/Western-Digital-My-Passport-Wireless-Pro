#!/bin/bash
cp /SOURCE/syncthing@.service /etc/systemd/system/syncthing@.service
cp /SOURCE/syncthing-resume.service /etc/systemd/system/syncthing-resume.service

systemctl daemon-reload
systemctl enable syncthing@root.service
systemctl start syncthing@root.service
systemctl status syncthing@root.service -l
