# Study_yt-dlp
yt-dlp is a command-line tool for downloading videos from YouTube



**Install_method**


```
sudo curl -L https://yt-dlp.org/downloads/latest/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

```

Dependency software

```
sudo apt install ffmpeg

```







yt-dlp --version


```
sudo apt remove yt-dlp
sudo wget -O /usr/local/bin/yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

 /usr/local/bin/yt-dlp --version

```



update yt-dlp

```
yt-dlp -U
pip install -U yt-dlp
```



```
yt-dlp --cookies cookies.txt "https://www.youtube.com/watch?v=VIDEO_ID"
```


```
https://github.com/hrdl-github/cookies-txt
https://addons.mozilla.org/en-US/firefox/addon/cookies-txt/

Use the correct extension to extract cookies:

    🔹 Get cookies.txt (for Chrome/Firefox)


Export cookies and ensure the file contains __Secure-3PAPISID and __Secure-3PSID.
```



```
yt-dlp --cookies-from-browser firefox "https://www.youtube.com/watch?v=VIDEO_ID"

yt-dlp --cookies-from-browser chrome "https://www.youtube.com/watch?v=VIDEO_ID"

yt-dlp --cookies-from-browser firefox:default "https://www.youtube.com/watch?v=VIDEO_ID"
```





**Try Different User-Agent**


```
yt-dlp -U --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36" "https://www.youtube.com/watch?v=20SuWSn2ORw"

```



```
/usr/local/bin/yt-dlp --version
echo $PATH
export PATH="/usr/local/bin:$PATH"
source ~/.bashrc
```



```
yt-dlp --cookies-from-browser firefox -O "%(title)s - %(filesize_approx)s" "https://www.youtube.com/watch?v=VIDEO_ID"
yt-dlp --cookies-from-browser firefox -O "%(title)s - %(filesize_approx)s" "<playlist_url>"
yt-dlp --cookies-from-browser firefox --print "Title: %(title)s | Size: %(filesize_approx)s" "<URL>"
```




**137 is video-only, you need to merge it with an audio format (e.g., 140 for m4a audio). To do this automatically**


```
yt-dlp --cookies-from-browser firefox -f 137+140 "https://www.youtube.com/watch?v=VIDEO_ID"
```



```
/usr/local/bin/yt-dlp --cookies-from-browser firefox -F "https://www.youtube.com/watch?v=VIDEO_ID"


Extracting cookies from firefox
Extracted 1363 cookies from firefox
[youtube] Extracting URL: https://www.youtube.com/watch?v=VIDEO_ID
[youtube] 20SuWSn2ORw: Downloading webpage
[youtube] 20SuWSn2ORw: Downloading tv client config
[youtube] 20SuWSn2ORw: Downloading player d50f54ef
[youtube] 20SuWSn2ORw: Downloading tv player API JSON
[info] Available formats for 20SuWSn2ORw:
ID  EXT   RESOLUTION FPS CH │   FILESIZE  TBR PROTO │ VCODEC       VBR ACODEC      ABR ASR MORE INFO
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────
sb3 mhtml 48x27        0    │                 mhtml │ images                               storyboard
sb2 mhtml 85x45        0    │                 mhtml │ images                               storyboard
sb1 mhtml 171x90       0    │                 mhtml │ images                               storyboard
sb0 mhtml 343x180      0    │                 mhtml │ images                               storyboard
140 m4a   audio only      2 │  154.41MiB 129k https │ audio only       mp4a.40.2  129k 44k [en] medium, m4a_dash
251 webm  audio only      2 │  117.11MiB  98k https │ audio only       opus        98k 48k [en] medium, webm_dash
160 mp4   256x134     25    │   23.99MiB  20k https │ avc1.4d400c  20k video only          144p, mp4_dash
134 mp4   640x336     25    │   87.84MiB  74k https │ avc1.4d401e  74k video only          360p, mp4_dash
18  mp4   640x336     25  2 │ ≈241.10MiB 202k https │ avc1.42001E      mp4a.40.2       44k [en] 360p
243 webm  640x336     25    │   76.33MiB  64k https │ vp9          64k video only          360p, webm_dash
136 mp4   1280x672    25    │  255.77MiB 214k https │ avc1.64001f 214k video only          720p, mp4_dash
137 mp4   1920x1008   25    │  433.82MiB 364k https │ avc1.640028 364k video only          1080p, mp4_dash

```

```
yt-dlp --cookies-from-browser firefox -f 137 "https://www.youtube.com/watch?v=VIDEO_ID"

```




```
Log in to YouTube in Firefox and confirm you can view the private video.
Open your terminal and ensure yt-dlp is installed.
Run:
yt-dlp --cookies-from-browser firefox -f best "https://www.youtube.com/watch?v=VIDEO_ID"
Replace "VIDEO_ID" with the actual video's ID.
The command uses your browser cookies for authentication to download the private video.
```






---

### **Bug Fix**

**Error:**
```
ERROR: [youtube] VIDEO_ID: Video unavailable. This video is private
```

### **Method 1: Using Browser Cookies**
**Solution:**
1. Open **Firefox**.
2. Check if you are **logged into your YouTube account**.
3. If necessary, **switch to the correct account**.

Then, run the following command:
```bash
/usr/local/bin/yt-dlp --cookies-from-browser firefox "https://www.youtube.com/watch?v=VIDEO_ID"
```

---


### **Method 2: Using Cookies File**


### **Using yt-dlp to Extract Cookies without Firefox extension**

```
yt-dlp --cookies-from-browser firefox --cookies cookies.txt
```


**Solution:**
1. First, download the **cookies.txt** file using a Firefox extension.
2. Run the following command:
```bash
yt-dlp --cookies cookies.txt "https://www.youtube.com/watch?v=VIDEO_ID"
```
---