# Libretuition-remote  
Libretuition scripts to run on pre-emptive remote VMs (Debian based)  

This script will **download** streams, **compress** them and **upload** them to anonymous file hoster **gofile.io**  
Prefered resolution ratio of input videos : **360p**  (Compresses to ~300 MB for 4 hours)  
If original video is not crystal clear, use ratio : **540p**  (Compresses to ~450 MB for 4 hours)  


# Install  
```
sudo apt update
sudo apt install git
git clone https://github.com/HasinduLanka/Libretuition-remote.git
cd Libretuition-remote
sudo chmod +x install.sh
sudo ./install.sh

```

# Usage - Download, Compress, Upload
```
sudo ./liberate.sh NewName.mp4 mypassword https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_640_3MG.mp4
```

Replace `NewName.mp4` with a **unique name and file extention**  
Replace `mypassword` with a password for GoFiles  
Replace the URL with target stream **compatible with WGET**  
Admin code will be **saved** to `NAME.mp4.log`  

Save the result **CODE** and share url  
`https://gofile.io/d/CODE`

# Usage - Download, Compress
```
sudo ./downpress.sh NewName.mp4 https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_640_3MG.mp4
```
Compressed file will be like o.NewName.mp4  

