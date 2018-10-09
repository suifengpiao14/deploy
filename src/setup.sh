#!/bin/sh

if [ -e .gitlab-ci.yml ];
then
	echo "gitlab-ci already installed ^_^"
    exit 0
fi

cp ./vendor/suifengpiao14/deploy/src/.gitlab-ci.yml ./
cp ./vendor/suifengpiao14/deploy/src/.playbook-build.yml ./
cp ./vendor/suifengpiao14/deploy/src/.build.sh ./
chmod +x .build.sh

echo "gitlab-ci is installed ^_^"