#!/bin/bash

# Copyright (C) 2020-2021 Arcigo Linux <arcigo.linux@gmail.com>
# Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
# 

total_packages=$(ls x86_64 | grep 'zst$' | wc -l)
repo_name="arcigo-repo"

cd x86_64/

echo -e "\n==> Total packages in repository: ${total_packages}" && sleep 2

if [ -f ${repo_name}.db ]; then
        echo -e "\n==> Trying to update package databases"
	echo -e "\n==> Removing the repository files and database\n"
	rm -rf ${repo_name}.*
	echo -e "==> Updating the repository\n"
        
        # Create a package database
	repo-add -n -R arcigo-repo.db.tar.gz *.tar.zst
	
	if [[ $? == 0 ]]; then
	    rm ${repo_name}.db
	    # rm ${repo_name}.db.sig
    
	    rm ${repo_name}.files
	    # rm ${repo_name}.files.sig
    
	    mv ${repo_name}.db.tar.gz ${repo_name}.db
	    # mv ${repo_name}.db.tar.gz.sig ${repo_name}.db.sig
    
	    mv ${repo_name}.files.tar.gz ${repo_name}.files
	    # mv ${repo_name}.files.tar.gz.sig ${repo_name}.files.sig
            echo -e "\n==> Repository Updated\n"
	else
	    echo -e "\n==> An error occured in updating repository.\n"
	    exit 1
	fi
else
	echo -e "\n==> Creating the repository\n"
	
        # Create a package database 
        repo-add -n -R arcigo-repo.db.tar.gz *.tar.zst
	
	if [[ $? == 0 ]]; then
	    rm ${repo_name}.db
	    # rm ${repo_name}.db.sig
    
	    rm ${repo_name}.files
	    # rm ${repo_name}.files.sig
    
	    mv ${repo_name}.db.tar.gz ${repo_name}.db
	    # mv ${repo_name}.db.tar.gz.sig ${repo_name}.db.sig
    
	    mv ${repo_name}.files.tar.gz ${repo_name}.files
	    # mv ${repo_name}.files.tar.gz.sig ${repo_name}.files.sig
            echo -e "\n==> Repository Updated\n"
	else
	    echo -e "\n==> An error occured in updating repository.\n"
	    exit 1
	fi
fi
