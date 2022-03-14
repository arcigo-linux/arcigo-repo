# Arcigo Package repository

[![Maintenance](https://img.shields.io/maintenance/yes/2022.svg)]()

> This is a package repository for arcigo linux.
## How to add arcigo-repo ?

Add the following lines to the end of /etc/pacman.conf :

### Method 1

 - Create a mirrolist for arcigo-repo by running the command below:

```bash
sudo touch /etc/pacman.d/arcigo-mirrorlist
echo "Server = https://gitlab.com/arcigo-linux/arcigo-repo/-/raw/main/$arch" | sudo tee /etc/pacman.d/arcigo-mirrorlist
```

- Add the following lines to /etc/pacman.conf

```bash
[arcigo-repo]
SigLevel = Required DatabaseOptional
Include = /etc/pacman.d/arcigo-mirrorlist
```

### Method 2

- Add the following lines to /etc/pacman.conf

```bash
[arcigo-repo]
SigLevel = Required DatabaseOptional
Server = https://gitlab.com/arcigo-linux/arcigo-repo/-/raw/main/$arch
```

#### Update your system

Once all done, sync the repositories and update you system

```bash
sudo pacman -Syyu
```

And, then

```sudo pacman -S <name-of-package>```
