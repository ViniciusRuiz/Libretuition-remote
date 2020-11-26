# Libretuition-remote  
Libretuition scripts to run on pre-emptive/persistent remote VMs (Debian based)  



# Download and Setup
```
sudo apt update
sudo apt -y install git
git clone https://github.com/HasinduLanka/Libretuition-remote.git
cd Libretuition-remote
sudo chmod +x *.sh
sudo ./install.sh

```

## Install media tools
```
sudo ./install.sh $USER

```

## Install remote desktop
Install with Lightweight XFCE4
```
sudo ./google-remote-desktop.sh

```
or Install with modern Cinnamon
```
sudo ./google-remote-desktop-cinamon.sh

```
 
 
**After installing this, go to https://remotedesktop.google.com/headless , generate an auth command for your google account and enter it to VM**
  
  
  
# Usage 

Replace `NewName.mp4` with a **unique name and file extention**  
Replace the URL with a media stream 

| Command  | Usage  | Description |
| ------------ | ------------ | ------------ |
| down  | ./down.sh filename.mp4  https://example.com/video.mp4  | Download file |
| press  | ./press.sh filename.mp4   | Compress file  |
| split  | ./split.sh filename.mp4   | Split into 90 MB segments |
| encode  | ./encode-mp4.sh filename.mp4   | Re-encode media into mp4 or webm |

Outputs will be like `o.filename.mp4` for input file name` filename.mp4`
There are combined operations like` downpressplit.sh` 
These default **scripts will delete the source file ** you pass as a parameter. 
Using scripts ending with `-keep.sh ` will not delete the source file. Example : `downpress-keep.sh`


### Examples

####  Download, Compress, Upload
```
sudo ./liberate.sh NewName.mp4 mypassword https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_640_3MG.mp4
```

This script will **download** streams, **compress** them and **upload** them to anonymous file hoster **gofile.io**  
Prefered resolution ratio of input videos : **360p**  (Compresses to ~400 MB for 4 hours)  
If original video is not crystal clear, use ratio : **540p**  (Compresses to ~500 MB for 4 hours)  


Replace `mypassword` with a password for GoFiles  
Replace the URL with target stream **compatible with WGET**  
Admin code will be **saved** to `NAME.mp4.log`  

Save the result **CODE** and share url  
`https://gofile.io/d/CODE`

#### Download, Compress
```
sudo ./downpress.sh NewName.mp4 https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_640_3MG.mp4
```
Compressed file will be like o.NewName.mp4  

#### Download, Compress, Split into 90 MB segments  
```
sudo ./downpressplit.sh NewName.mp4 https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_640_3MG.mp4
```
