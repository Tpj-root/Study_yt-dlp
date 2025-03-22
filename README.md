# Study_yt-dlp
yt-dlp is a command-line tool for downloading videos from YouTube



**Install_method**


```
sudo curl -L https://yt-dlp.org/downloads/latest/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

```

**Dependency software**

```
sudo apt install ffmpeg
sudo apt install yt-dlp

```


**Python_method**

```
pip install -U yt-dlp
python3 -m yt_dlp --version
```


```
(base) cnc@debian:~$ which yt-dlp
/home/cnc/miniconda3/bin/yt-dlp

```


```
Then add the bin directory inside that path to your PATH.

(base) cnc@debian:~$ python3 -m site --user-base
/home/cnc/.local

export PATH="$HOME/.local/bin:$PATH"

source ~/.bashrc

```


**update yt-dlp**

```
yt-dlp -U


(base) cnc@debian:~$ yt-dlp -U
Latest version: stable@2025.03.21 from yt-dlp/yt-dlp
yt-dlp is up to date (stable@2025.03.21 from yt-dlp/yt-dlp)

```


**yt-dlp --version**

```
(base) cnc@debian:~$ yt-dlp --version
2025.03.21
(base) cnc@debian:~$ 

```


```
sudo apt remove yt-dlp
sudo wget -O /usr/local/bin/yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

 /usr/local/bin/yt-dlp --version

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
yt-dlp --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36" "https://www.youtube.com/watch?v=VIDEO_ID"

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




 

**Get a list available formats of each video**


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




**BASIC**


```
Usage: yt-dlp [OPTIONS] URL [URL...]

Options:
  General Options:
    -h, --help                      Print this help text and exit
    --version                       Print program version and exit
    -U, --update                    Check if updates are available. You
                                    installed yt-dlp with pip or using the wheel
                                    from PyPi; Use that to update
    --no-update                     Do not check for updates (default)
    --update-to [CHANNEL]@[TAG]     Upgrade/downgrade to a specific version.
                                    CHANNEL can be a repository as well. CHANNEL
                                    and TAG default to "stable" and "latest"
                                    respectively if omitted; See "UPDATE" for
                                    details. Supported channels: stable,
                                    nightly, master
    -i, --ignore-errors             Ignore download and postprocessing errors.
                                    The download will be considered successful
                                    even if the postprocessing fails
    --no-abort-on-error             Continue with next video on download errors;
                                    e.g. to skip unavailable videos in a
                                    playlist (default)
    --abort-on-error                Abort downloading of further videos if an
                                    error occurs (Alias: --no-ignore-errors)
    --dump-user-agent               Display the current user-agent and exit
    --list-extractors               List all supported extractors and exit
    --extractor-descriptions        Output descriptions of all supported
                                    extractors and exit
    --use-extractors NAMES          Extractor names to use separated by commas.
                                    You can also use regexes, "all", "default"
                                    and "end" (end URL matching); e.g. --ies
                                    "holodex.*,end,youtube". Prefix the name
                                    with a "-" to exclude it, e.g. --ies
                                    default,-generic. Use --list-extractors for
                                    a list of extractor names. (Alias: --ies)
    --default-search PREFIX         Use this prefix for unqualified URLs. E.g.
                                    "gvsearch2:python" downloads two videos from
                                    google videos for the search term "python".
                                    Use the value "auto" to let yt-dlp guess
                                    ("auto_warning" to emit a warning when
                                    guessing). "error" just throws an error. The
                                    default value "fixup_error" repairs broken
                                    URLs, but emits an error if this is not
                                    possible instead of searching
    --ignore-config                 Don't load any more configuration files
                                    except those given to --config-locations.
                                    For backward compatibility, if this option
                                    is found inside the system configuration
                                    file, the user configuration is not loaded.
                                    (Alias: --no-config)
    --no-config-locations           Do not load any custom configuration files
                                    (default). When given inside a configuration
                                    file, ignore all previous --config-locations
                                    defined in the current file
    --config-locations PATH         Location of the main configuration file;
                                    either the path to the config or its
                                    containing directory ("-" for stdin). Can be
                                    used multiple times and inside other
                                    configuration files
    --plugin-dirs PATH              Path to an additional directory to search
                                    for plugins. This option can be used
                                    multiple times to add multiple directories.
                                    Use "default" to search the default plugin
                                    directories (default)
    --no-plugin-dirs                Clear plugin directories to search,
                                    including defaults and those provided by
                                    previous --plugin-dirs
    --flat-playlist                 Do not extract a playlist's URL result
                                    entries; some entry metadata may be missing
                                    and downloading may be bypassed
    --no-flat-playlist              Fully extract the videos of a playlist
                                    (default)
    --live-from-start               Download livestreams from the start.
                                    Currently only supported for YouTube
                                    (Experimental)
    --no-live-from-start            Download livestreams from the current time
                                    (default)
    --wait-for-video MIN[-MAX]      Wait for scheduled streams to become
                                    available. Pass the minimum number of
                                    seconds (or range) to wait between retries
    --no-wait-for-video             Do not wait for scheduled streams (default)
    --mark-watched                  Mark videos watched (even with --simulate)
    --no-mark-watched               Do not mark videos watched (default)
    --color [STREAM:]POLICY         Whether to emit color codes in output,
                                    optionally prefixed by the STREAM (stdout or
                                    stderr) to apply the setting to. Can be one
                                    of "always", "auto" (default), "never", or
                                    "no_color" (use non color terminal
                                    sequences). Use "auto-tty" or "no_color-tty"
                                    to decide based on terminal support only.
                                    Can be used multiple times
    --compat-options OPTS           Options that can help keep compatibility
                                    with youtube-dl or youtube-dlc
                                    configurations by reverting some of the
                                    changes made in yt-dlp. See "Differences in
                                    default behavior" for details
    --alias ALIASES OPTIONS         Create aliases for an option string. Unless
                                    an alias starts with a dash "-", it is
                                    prefixed with "--". Arguments are parsed
                                    according to the Python string formatting
                                    mini-language. E.g. --alias get-audio,-X
                                    "-S=aext:{0},abr -x --audio-format {0}"
                                    creates options "--get-audio" and "-X" that
                                    takes an argument (ARG0) and expands to
                                    "-S=aext:ARG0,abr -x --audio-format ARG0".
                                    All defined aliases are listed in the --help
                                    output. Alias options can trigger more
                                    aliases; so be careful to avoid defining
                                    recursive options. As a safety measure, each
                                    alias may be triggered a maximum of 100
                                    times. This option can be used multiple
                                    times

  Network Options:
    --proxy URL                     Use the specified HTTP/HTTPS/SOCKS proxy. To
                                    enable SOCKS proxy, specify a proper scheme,
                                    e.g. socks5://user:pass@127.0.0.1:1080/.
                                    Pass in an empty string (--proxy "") for
                                    direct connection
    --socket-timeout SECONDS        Time to wait before giving up, in seconds
    --source-address IP             Client-side IP address to bind to
    --impersonate CLIENT[:OS]       Client to impersonate for requests. E.g.
                                    chrome, chrome-110, chrome:windows-10. Pass
                                    --impersonate="" to impersonate any client.
                                    Note that forcing impersonation for all
                                    requests may have a detrimental impact on
                                    download speed and stability
    --list-impersonate-targets      List available clients to impersonate.
    -4, --force-ipv4                Make all connections via IPv4
    -6, --force-ipv6                Make all connections via IPv6
    --enable-file-urls              Enable file:// URLs. This is disabled by
                                    default for security reasons.

  Geo-restriction:
    --geo-verification-proxy URL    Use this proxy to verify the IP address for
                                    some geo-restricted sites. The default proxy
                                    specified by --proxy (or none, if the option
                                    is not present) is used for the actual
                                    downloading
    --xff VALUE                     How to fake X-Forwarded-For HTTP header to
                                    try bypassing geographic restriction. One of
                                    "default" (only when known to be useful),
                                    "never", an IP block in CIDR notation, or a
                                    two-letter ISO 3166-2 country code

  Video Selection:
    -I, --playlist-items ITEM_SPEC  Comma separated playlist_index of the items
                                    to download. You can specify a range using
                                    "[START]:[STOP][:STEP]". For backward
                                    compatibility, START-STOP is also supported.
                                    Use negative indices to count from the right
                                    and negative STEP to download in reverse
                                    order. E.g. "-I 1:3,7,-5::2" used on a
                                    playlist of size 15 will download the items
                                    at index 1,2,3,7,11,13,15
    --min-filesize SIZE             Abort download if filesize is smaller than
                                    SIZE, e.g. 50k or 44.6M
    --max-filesize SIZE             Abort download if filesize is larger than
                                    SIZE, e.g. 50k or 44.6M
    --date DATE                     Download only videos uploaded on this date.
                                    The date can be "YYYYMMDD" or in the format 
                                    [now|today|yesterday][-
                                    N[day|week|month|year]]. E.g. "--date
                                    today-2weeks" downloads only videos uploaded
                                    on the same day two weeks ago
    --datebefore DATE               Download only videos uploaded on or before
                                    this date. The date formats accepted are the
                                    same as --date
    --dateafter DATE                Download only videos uploaded on or after
                                    this date. The date formats accepted are the
                                    same as --date
    --match-filters FILTER          Generic video filter. Any "OUTPUT TEMPLATE"
                                    field can be compared with a number or a
                                    string using the operators defined in
                                    "Filtering Formats". You can also simply
                                    specify a field to match if the field is
                                    present, use "!field" to check if the field
                                    is not present, and "&" to check multiple
                                    conditions. Use a "\" to escape "&" or
                                    quotes if needed. If used multiple times,
                                    the filter matches if at least one of the
                                    conditions is met. E.g. --match-filters
                                    !is_live --match-filters "like_count>?100 &
                                    description~='(?i)\bcats \& dogs\b'" matches
                                    only videos that are not live OR those that
                                    have a like count more than 100 (or the like
                                    field is not available) and also has a
                                    description that contains the phrase "cats &
                                    dogs" (caseless). Use "--match-filters -" to
                                    interactively ask whether to download each
                                    video
    --no-match-filters              Do not use any --match-filters (default)
    --break-match-filters FILTER    Same as "--match-filters" but stops the
                                    download process when a video is rejected
    --no-break-match-filters        Do not use any --break-match-filters
                                    (default)
    --no-playlist                   Download only the video, if the URL refers
                                    to a video and a playlist
    --yes-playlist                  Download the playlist, if the URL refers to
                                    a video and a playlist
    --age-limit YEARS               Download only videos suitable for the given
                                    age
    --download-archive FILE         Download only videos not listed in the
                                    archive file. Record the IDs of all
                                    downloaded videos in it
    --no-download-archive           Do not use archive file (default)
    --max-downloads NUMBER          Abort after downloading NUMBER files
    --break-on-existing             Stop the download process when encountering
                                    a file that is in the archive supplied with
                                    the --download-archive option
    --no-break-on-existing          Do not stop the download process when
                                    encountering a file that is in the archive
                                    (default)
    --break-per-input               Alters --max-downloads, --break-on-existing,
                                    --break-match-filters, and autonumber to
                                    reset per input URL
    --no-break-per-input            --break-on-existing and similar options
                                    terminates the entire download queue
    --skip-playlist-after-errors N  Number of allowed failures until the rest of
                                    the playlist is skipped

  Download Options:
    -N, --concurrent-fragments N    Number of fragments of a dash/hlsnative
                                    video that should be downloaded concurrently
                                    (default is 1)
    -r, --limit-rate RATE           Maximum download rate in bytes per second,
                                    e.g. 50K or 4.2M
    --throttled-rate RATE           Minimum download rate in bytes per second
                                    below which throttling is assumed and the
                                    video data is re-extracted, e.g. 100K
    -R, --retries RETRIES           Number of retries (default is 10), or
                                    "infinite"
    --file-access-retries RETRIES   Number of times to retry on file access
                                    error (default is 3), or "infinite"
    --fragment-retries RETRIES      Number of retries for a fragment (default is
                                    10), or "infinite" (DASH, hlsnative and ISM)
    --retry-sleep [TYPE:]EXPR       Time to sleep between retries in seconds
                                    (optionally) prefixed by the type of retry
                                    (http (default), fragment, file_access,
                                    extractor) to apply the sleep to. EXPR can
                                    be a number, linear=START[:END[:STEP=1]] or
                                    exp=START[:END[:BASE=2]]. This option can be
                                    used multiple times to set the sleep for the
                                    different retry types, e.g. --retry-sleep
                                    linear=1::2 --retry-sleep fragment:exp=1:20
    --skip-unavailable-fragments    Skip unavailable fragments for DASH,
                                    hlsnative and ISM downloads (default)
                                    (Alias: --no-abort-on-unavailable-fragments)
    --abort-on-unavailable-fragments
                                    Abort download if a fragment is unavailable
                                    (Alias: --no-skip-unavailable-fragments)
    --keep-fragments                Keep downloaded fragments on disk after
                                    downloading is finished
    --no-keep-fragments             Delete downloaded fragments after
                                    downloading is finished (default)
    --buffer-size SIZE              Size of download buffer, e.g. 1024 or 16K
                                    (default is 1024)
    --resize-buffer                 The buffer size is automatically resized
                                    from an initial value of --buffer-size
                                    (default)
    --no-resize-buffer              Do not automatically adjust the buffer size
    --http-chunk-size SIZE          Size of a chunk for chunk-based HTTP
                                    downloading, e.g. 10485760 or 10M (default
                                    is disabled). May be useful for bypassing
                                    bandwidth throttling imposed by a webserver
                                    (experimental)
    --playlist-random               Download playlist videos in random order
    --lazy-playlist                 Process entries in the playlist as they are
                                    received. This disables n_entries,
                                    --playlist-random and --playlist-reverse
    --no-lazy-playlist              Process videos in the playlist only after
                                    the entire playlist is parsed (default)
    --xattr-set-filesize            Set file xattribute ytdl.filesize with
                                    expected file size
    --hls-use-mpegts                Use the mpegts container for HLS videos;
                                    allowing some players to play the video
                                    while downloading, and reducing the chance
                                    of file corruption if download is
                                    interrupted. This is enabled by default for
                                    live streams
    --no-hls-use-mpegts             Do not use the mpegts container for HLS
                                    videos. This is default when not downloading
                                    live streams
    --download-sections REGEX       Download only chapters that match the
                                    regular expression. A "*" prefix denotes
                                    time-range instead of chapter. Negative
                                    timestamps are calculated from the end.
                                    "*from-url" can be used to download between
                                    the "start_time" and "end_time" extracted
                                    from the URL. Needs ffmpeg. This option can
                                    be used multiple times to download multiple
                                    sections, e.g. --download-sections
                                    "*10:15-inf" --download-sections "intro"
    --downloader [PROTO:]NAME       Name or path of the external downloader to
                                    use (optionally) prefixed by the protocols
                                    (http, ftp, m3u8, dash, rstp, rtmp, mms) to
                                    use it for. Currently supports native,
                                    aria2c, avconv, axel, curl, ffmpeg, httpie,
                                    wget. You can use this option multiple times
                                    to set different downloaders for different
                                    protocols. E.g. --downloader aria2c
                                    --downloader "dash,m3u8:native" will use
                                    aria2c for http/ftp downloads, and the
                                    native downloader for dash/m3u8 downloads
                                    (Alias: --external-downloader)
    --downloader-args NAME:ARGS     Give these arguments to the external
                                    downloader. Specify the downloader name and
                                    the arguments separated by a colon ":". For
                                    ffmpeg, arguments can be passed to different
                                    positions using the same syntax as
                                    --postprocessor-args. You can use this
                                    option multiple times to give different
                                    arguments to different downloaders (Alias:
                                    --external-downloader-args)

  Filesystem Options:
    -a, --batch-file FILE           File containing URLs to download ("-" for
                                    stdin), one URL per line. Lines starting
                                    with "#", ";" or "]" are considered as
                                    comments and ignored
    --no-batch-file                 Do not read URLs from batch file (default)
    -P, --paths [TYPES:]PATH        The paths where the files should be
                                    downloaded. Specify the type of file and the
                                    path separated by a colon ":". All the same
                                    TYPES as --output are supported.
                                    Additionally, you can also provide "home"
                                    (default) and "temp" paths. All intermediary
                                    files are first downloaded to the temp path
                                    and then the final files are moved over to
                                    the home path after download is finished.
                                    This option is ignored if --output is an
                                    absolute path
    -o, --output [TYPES:]TEMPLATE   Output filename template; see "OUTPUT
                                    TEMPLATE" for details
    --output-na-placeholder TEXT    Placeholder for unavailable fields in
                                    --output (default: "NA")
    --restrict-filenames            Restrict filenames to only ASCII characters,
                                    and avoid "&" and spaces in filenames
    --no-restrict-filenames         Allow Unicode characters, "&" and spaces in
                                    filenames (default)
    --windows-filenames             Force filenames to be Windows-compatible
    --no-windows-filenames          Sanitize filenames only minimally
    --trim-filenames LENGTH         Limit the filename length (excluding
                                    extension) to the specified number of
                                    characters
    -w, --no-overwrites             Do not overwrite any files
    --force-overwrites              Overwrite all video and metadata files. This
                                    option includes --no-continue
    --no-force-overwrites           Do not overwrite the video, but overwrite
                                    related files (default)
    -c, --continue                  Resume partially downloaded files/fragments
                                    (default)
    --no-continue                   Do not resume partially downloaded
                                    fragments. If the file is not fragmented,
                                    restart download of the entire file
    --part                          Use .part files instead of writing directly
                                    into output file (default)
    --no-part                       Do not use .part files - write directly into
                                    output file
    --mtime                         Use the Last-modified header to set the file
                                    modification time (default)
    --no-mtime                      Do not use the Last-modified header to set
                                    the file modification time
    --write-description             Write video description to a .description
                                    file
    --no-write-description          Do not write video description (default)
    --write-info-json               Write video metadata to a .info.json file
                                    (this may contain personal information)
    --no-write-info-json            Do not write video metadata (default)
    --write-playlist-metafiles      Write playlist metadata in addition to the
                                    video metadata when using --write-info-json,
                                    --write-description etc. (default)
    --no-write-playlist-metafiles   Do not write playlist metadata when using
                                    --write-info-json, --write-description etc.
    --clean-info-json               Remove some internal metadata such as
                                    filenames from the infojson (default)
    --no-clean-info-json            Write all fields to the infojson
    --write-comments                Retrieve video comments to be placed in the
                                    infojson. The comments are fetched even
                                    without this option if the extraction is
                                    known to be quick (Alias: --get-comments)
    --no-write-comments             Do not retrieve video comments unless the
                                    extraction is known to be quick (Alias:
                                    --no-get-comments)
    --load-info-json FILE           JSON file containing the video information
                                    (created with the "--write-info-json"
                                    option)
    --cookies FILE                  Netscape formatted file to read cookies from
                                    and dump cookie jar in
    --no-cookies                    Do not read/dump cookies from/to file
                                    (default)
    --cookies-from-browser BROWSER[+KEYRING][:PROFILE][::CONTAINER]
                                    The name of the browser to load cookies
                                    from. Currently supported browsers are:
                                    brave, chrome, chromium, edge, firefox,
                                    opera, safari, vivaldi, whale. Optionally,
                                    the KEYRING used for decrypting Chromium
                                    cookies on Linux, the name/path of the
                                    PROFILE to load cookies from, and the
                                    CONTAINER name (if Firefox) ("none" for no
                                    container) can be given with their
                                    respective separators. By default, all
                                    containers of the most recently accessed
                                    profile are used. Currently supported
                                    keyrings are: basictext, gnomekeyring,
                                    kwallet, kwallet5, kwallet6
    --no-cookies-from-browser       Do not load cookies from browser (default)
    --cache-dir DIR                 Location in the filesystem where yt-dlp can
                                    store some downloaded information (such as
                                    client ids and signatures) permanently. By
                                    default ${XDG_CACHE_HOME}/yt-dlp
    --no-cache-dir                  Disable filesystem caching
    --rm-cache-dir                  Delete all filesystem cache files

  Thumbnail Options:
    --write-thumbnail               Write thumbnail image to disk
    --no-write-thumbnail            Do not write thumbnail image to disk
                                    (default)
    --write-all-thumbnails          Write all thumbnail image formats to disk
    --list-thumbnails               List available thumbnails of each video.
                                    Simulate unless --no-simulate is used

  Internet Shortcut Options:
    --write-link                    Write an internet shortcut file, depending
                                    on the current platform (.url, .webloc or
                                    .desktop). The URL may be cached by the OS
    --write-url-link                Write a .url Windows internet shortcut. The
                                    OS caches the URL based on the file path
    --write-webloc-link             Write a .webloc macOS internet shortcut
    --write-desktop-link            Write a .desktop Linux internet shortcut

  Verbosity and Simulation Options:
    -q, --quiet                     Activate quiet mode. If used with --verbose,
                                    print the log to stderr
    --no-quiet                      Deactivate quiet mode. (Default)
    --no-warnings                   Ignore warnings
    -s, --simulate                  Do not download the video and do not write
                                    anything to disk
    --no-simulate                   Download the video even if printing/listing
                                    options are used
    --ignore-no-formats-error       Ignore "No video formats" error. Useful for
                                    extracting metadata even if the videos are
                                    not actually available for download
                                    (experimental)
    --no-ignore-no-formats-error    Throw error when no downloadable video
                                    formats are found (default)
    --skip-download                 Do not download the video but write all
                                    related files (Alias: --no-download)
    -O, --print [WHEN:]TEMPLATE     Field name or output template to print to
                                    screen, optionally prefixed with when to
                                    print it, separated by a ":". Supported
                                    values of "WHEN" are the same as that of
                                    --use-postprocessor (default: video).
                                    Implies --quiet. Implies --simulate unless
                                    --no-simulate or later stages of WHEN are
                                    used. This option can be used multiple times
    --print-to-file [WHEN:]TEMPLATE FILE
                                    Append given template to the file. The
                                    values of WHEN and TEMPLATE are the same as
                                    that of --print. FILE uses the same syntax
                                    as the output template. This option can be
                                    used multiple times
    -j, --dump-json                 Quiet, but print JSON information for each
                                    video. Simulate unless --no-simulate is
                                    used. See "OUTPUT TEMPLATE" for a
                                    description of available keys
    -J, --dump-single-json          Quiet, but print JSON information for each
                                    URL or infojson passed. Simulate unless
                                    --no-simulate is used. If the URL refers to
                                    a playlist, the whole playlist information
                                    is dumped in a single line
    --force-write-archive           Force download archive entries to be written
                                    as far as no errors occur, even if -s or
                                    another simulation option is used (Alias:
                                    --force-download-archive)
    --newline                       Output progress bar as new lines
    --no-progress                   Do not print progress bar
    --progress                      Show progress bar, even if in quiet mode
    --console-title                 Display progress in console titlebar
    --progress-template [TYPES:]TEMPLATE
                                    Template for progress outputs, optionally
                                    prefixed with one of "download:" (default),
                                    "download-title:" (the console title),
                                    "postprocess:",  or "postprocess-title:".
                                    The video's fields are accessible under the
                                    "info" key and the progress attributes are
                                    accessible under "progress" key. E.g.
                                    --console-title --progress-template
                                    "download-
                                    title:%(info.id)s-%(progress.eta)s"
    --progress-delta SECONDS        Time between progress output (default: 0)
    -v, --verbose                   Print various debugging information
    --dump-pages                    Print downloaded pages encoded using base64
                                    to debug problems (very verbose)
    --write-pages                   Write downloaded intermediary pages to files
                                    in the current directory to debug problems
    --print-traffic                 Display sent and read HTTP traffic

  Workarounds:
    --encoding ENCODING             Force the specified encoding (experimental)
    --legacy-server-connect         Explicitly allow HTTPS connection to servers
                                    that do not support RFC 5746 secure
                                    renegotiation
    --no-check-certificates         Suppress HTTPS certificate validation
    --prefer-insecure               Use an unencrypted connection to retrieve
                                    information about the video (Currently
                                    supported only for YouTube)
    --add-headers FIELD:VALUE       Specify a custom HTTP header and its value,
                                    separated by a colon ":". You can use this
                                    option multiple times
    --bidi-workaround               Work around terminals that lack
                                    bidirectional text support. Requires bidiv
                                    or fribidi executable in PATH
    --sleep-requests SECONDS        Number of seconds to sleep between requests
                                    during data extraction
    --sleep-interval SECONDS        Number of seconds to sleep before each
                                    download. This is the minimum time to sleep
                                    when used along with --max-sleep-interval
                                    (Alias: --min-sleep-interval)
    --max-sleep-interval SECONDS    Maximum number of seconds to sleep. Can only
                                    be used along with --min-sleep-interval
    --sleep-subtitles SECONDS       Number of seconds to sleep before each
                                    subtitle download

  Video Format Options:
    -f, --format FORMAT             Video format code, see "FORMAT SELECTION"
                                    for more details
    -S, --format-sort SORTORDER     Sort the formats by the fields given, see
                                    "Sorting Formats" for more details
    --format-sort-force             Force user specified sort order to have
                                    precedence over all fields, see "Sorting
                                    Formats" for more details (Alias: --S-force)
    --no-format-sort-force          Some fields have precedence over the user
                                    specified sort order (default)
    --video-multistreams            Allow multiple video streams to be merged
                                    into a single file
    --no-video-multistreams         Only one video stream is downloaded for each
                                    output file (default)
    --audio-multistreams            Allow multiple audio streams to be merged
                                    into a single file
    --no-audio-multistreams         Only one audio stream is downloaded for each
                                    output file (default)
    --prefer-free-formats           Prefer video formats with free containers
                                    over non-free ones of the same quality. Use
                                    with "-S ext" to strictly prefer free
                                    containers irrespective of quality
    --no-prefer-free-formats        Don't give any special preference to free
                                    containers (default)
    --check-formats                 Make sure formats are selected only from
                                    those that are actually downloadable
    --check-all-formats             Check all formats for whether they are
                                    actually downloadable
    --no-check-formats              Do not check that the formats are actually
                                    downloadable
    -F, --list-formats              List available formats of each video.
                                    Simulate unless --no-simulate is used
    --merge-output-format FORMAT    Containers that may be used when merging
                                    formats, separated by "/", e.g. "mp4/mkv".
                                    Ignored if no merge is required. (currently
                                    supported: avi, flv, mkv, mov, mp4, webm)

  Subtitle Options:
    --write-subs                    Write subtitle file
    --no-write-subs                 Do not write subtitle file (default)
    --write-auto-subs               Write automatically generated subtitle file
                                    (Alias: --write-automatic-subs)
    --no-write-auto-subs            Do not write auto-generated subtitles
                                    (default) (Alias: --no-write-automatic-subs)
    --list-subs                     List available subtitles of each video.
                                    Simulate unless --no-simulate is used
    --sub-format FORMAT             Subtitle format; accepts formats preference
                                    separated by "/", e.g. "srt" or
                                    "ass/srt/best"
    --sub-langs LANGS               Languages of the subtitles to download (can
                                    be regex) or "all" separated by commas, e.g.
                                    --sub-langs "en.*,ja" (where "en.*" is a
                                    regex pattern that matches "en" followed by
                                    0 or more of any character). You can prefix
                                    the language code with a "-" to exclude it
                                    from the requested languages, e.g. --sub-
                                    langs all,-live_chat. Use --list-subs for a
                                    list of available language tags

  Authentication Options:
    -u, --username USERNAME         Login with this account ID
    -p, --password PASSWORD         Account password. If this option is left
                                    out, yt-dlp will ask interactively
    -2, --twofactor TWOFACTOR       Two-factor authentication code
    -n, --netrc                     Use .netrc authentication data
    --netrc-location PATH           Location of .netrc authentication data;
                                    either the path or its containing directory.
                                    Defaults to ~/.netrc
    --netrc-cmd NETRC_CMD           Command to execute to get the credentials
                                    for an extractor.
    --video-password PASSWORD       Video-specific password
    --ap-mso MSO                    Adobe Pass multiple-system operator (TV
                                    provider) identifier, use --ap-list-mso for
                                    a list of available MSOs
    --ap-username USERNAME          Multiple-system operator account login
    --ap-password PASSWORD          Multiple-system operator account password.
                                    If this option is left out, yt-dlp will ask
                                    interactively
    --ap-list-mso                   List all supported multiple-system operators
    --client-certificate CERTFILE   Path to client certificate file in PEM
                                    format. May include the private key
    --client-certificate-key KEYFILE
                                    Path to private key file for client
                                    certificate
    --client-certificate-password PASSWORD
                                    Password for client certificate private key,
                                    if encrypted. If not provided, and the key
                                    is encrypted, yt-dlp will ask interactively

  Post-Processing Options:
    -x, --extract-audio             Convert video files to audio-only files
                                    (requires ffmpeg and ffprobe)
    --audio-format FORMAT           Format to convert the audio to when -x is
                                    used. (currently supported: best (default),
                                    aac, alac, flac, m4a, mp3, opus, vorbis,
                                    wav). You can specify multiple rules using
                                    similar syntax as --remux-video
    --audio-quality QUALITY         Specify ffmpeg audio quality to use when
                                    converting the audio with -x. Insert a value
                                    between 0 (best) and 10 (worst) for VBR or a
                                    specific bitrate like 128K (default 5)
    --remux-video FORMAT            Remux the video into another container if
                                    necessary (currently supported: avi, flv,
                                    gif, mkv, mov, mp4, webm, aac, aiff, alac,
                                    flac, m4a, mka, mp3, ogg, opus, vorbis,
                                    wav). If the target container does not
                                    support the video/audio codec, remuxing will
                                    fail. You can specify multiple rules; e.g.
                                    "aac>m4a/mov>mp4/mkv" will remux aac to m4a,
                                    mov to mp4 and anything else to mkv
    --recode-video FORMAT           Re-encode the video into another format if
                                    necessary. The syntax and supported formats
                                    are the same as --remux-video
    --postprocessor-args NAME:ARGS  Give these arguments to the postprocessors.
                                    Specify the postprocessor/executable name
                                    and the arguments separated by a colon ":"
                                    to give the argument to the specified
                                    postprocessor/executable. Supported PP are:
                                    Merger, ModifyChapters, SplitChapters,
                                    ExtractAudio, VideoRemuxer, VideoConvertor,
                                    Metadata, EmbedSubtitle, EmbedThumbnail,
                                    SubtitlesConvertor, ThumbnailsConvertor,
                                    FixupStretched, FixupM4a, FixupM3u8,
                                    FixupTimestamp and FixupDuration. The
                                    supported executables are: AtomicParsley,
                                    FFmpeg and FFprobe. You can also specify
                                    "PP+EXE:ARGS" to give the arguments to the
                                    specified executable only when being used by
                                    the specified postprocessor. Additionally,
                                    for ffmpeg/ffprobe, "_i"/"_o" can be
                                    appended to the prefix optionally followed
                                    by a number to pass the argument before the
                                    specified input/output file, e.g. --ppa
                                    "Merger+ffmpeg_i1:-v quiet". You can use
                                    this option multiple times to give different
                                    arguments to different postprocessors.
                                    (Alias: --ppa)
    -k, --keep-video                Keep the intermediate video file on disk
                                    after post-processing
    --no-keep-video                 Delete the intermediate video file after
                                    post-processing (default)
    --post-overwrites               Overwrite post-processed files (default)
    --no-post-overwrites            Do not overwrite post-processed files
    --embed-subs                    Embed subtitles in the video (only for mp4,
                                    webm and mkv videos)
    --no-embed-subs                 Do not embed subtitles (default)
    --embed-thumbnail               Embed thumbnail in the video as cover art
    --no-embed-thumbnail            Do not embed thumbnail (default)
    --embed-metadata                Embed metadata to the video file. Also
                                    embeds chapters/infojson if present unless
                                    --no-embed-chapters/--no-embed-info-json are
                                    used (Alias: --add-metadata)
    --no-embed-metadata             Do not add metadata to file (default)
                                    (Alias: --no-add-metadata)
    --embed-chapters                Add chapter markers to the video file
                                    (Alias: --add-chapters)
    --no-embed-chapters             Do not add chapter markers (default) (Alias:
                                    --no-add-chapters)
    --embed-info-json               Embed the infojson as an attachment to
                                    mkv/mka video files
    --no-embed-info-json            Do not embed the infojson as an attachment
                                    to the video file
    --parse-metadata [WHEN:]FROM:TO
                                    Parse additional metadata like title/artist
                                    from other fields; see "MODIFYING METADATA"
                                    for details. Supported values of "WHEN" are
                                    the same as that of --use-postprocessor
                                    (default: pre_process)
    --replace-in-metadata [WHEN:]FIELDS REGEX REPLACE
                                    Replace text in a metadata field using the
                                    given regex. This option can be used
                                    multiple times. Supported values of "WHEN"
                                    are the same as that of --use-postprocessor
                                    (default: pre_process)
    --xattrs                        Write metadata to the video file's xattrs
                                    (using Dublin Core and XDG standards)
    --concat-playlist POLICY        Concatenate videos in a playlist. One of
                                    "never", "always", or "multi_video"
                                    (default; only when the videos form a single
                                    show). All the video files must have the
                                    same codecs and number of streams to be
                                    concatenable. The "pl_video:" prefix can be
                                    used with "--paths" and "--output" to set
                                    the output filename for the concatenated
                                    files. See "OUTPUT TEMPLATE" for details
    --fixup POLICY                  Automatically correct known faults of the
                                    file. One of never (do nothing), warn (only
                                    emit a warning), detect_or_warn (the
                                    default; fix the file if we can, warn
                                    otherwise), force (try fixing even if the
                                    file already exists)
    --ffmpeg-location PATH          Location of the ffmpeg binary; either the
                                    path to the binary or its containing
                                    directory
    --exec [WHEN:]CMD               Execute a command, optionally prefixed with
                                    when to execute it, separated by a ":".
                                    Supported values of "WHEN" are the same as
                                    that of --use-postprocessor (default:
                                    after_move). The same syntax as the output
                                    template can be used to pass any field as
                                    arguments to the command. If no fields are
                                    passed, %(filepath,_filename|)q is appended
                                    to the end of the command. This option can
                                    be used multiple times
    --no-exec                       Remove any previously defined --exec
    --convert-subs FORMAT           Convert the subtitles to another format
                                    (currently supported: ass, lrc, srt, vtt).
                                    Use "--convert-subs none" to disable
                                    conversion (default) (Alias: --convert-
                                    subtitles)
    --convert-thumbnails FORMAT     Convert the thumbnails to another format
                                    (currently supported: jpg, png, webp). You
                                    can specify multiple rules using similar
                                    syntax as "--remux-video". Use "--convert-
                                    thumbnails none" to disable conversion
                                    (default)
    --split-chapters                Split video into multiple files based on
                                    internal chapters. The "chapter:" prefix can
                                    be used with "--paths" and "--output" to set
                                    the output filename for the split files. See
                                    "OUTPUT TEMPLATE" for details
    --no-split-chapters             Do not split video based on chapters
                                    (default)
    --remove-chapters REGEX         Remove chapters whose title matches the
                                    given regular expression. The syntax is the
                                    same as --download-sections. This option can
                                    be used multiple times
    --no-remove-chapters            Do not remove any chapters from the file
                                    (default)
    --force-keyframes-at-cuts       Force keyframes at cuts when
                                    downloading/splitting/removing sections.
                                    This is slow due to needing a re-encode, but
                                    the resulting video may have fewer artifacts
                                    around the cuts
    --no-force-keyframes-at-cuts    Do not force keyframes around the chapters
                                    when cutting/splitting (default)
    --use-postprocessor NAME[:ARGS]
                                    The (case-sensitive) name of plugin
                                    postprocessors to be enabled, and
                                    (optionally) arguments to be passed to it,
                                    separated by a colon ":". ARGS are a
                                    semicolon ";" delimited list of NAME=VALUE.
                                    The "when" argument determines when the
                                    postprocessor is invoked. It can be one of
                                    "pre_process" (after video extraction),
                                    "after_filter" (after video passes filter),
                                    "video" (after --format; before
                                    --print/--output), "before_dl" (before each
                                    video download), "post_process" (after each
                                    video download; default), "after_move"
                                    (after moving the video file to its final
                                    location), "after_video" (after downloading
                                    and processing all formats of a video), or
                                    "playlist" (at end of playlist). This option
                                    can be used multiple times to add different
                                    postprocessors

  SponsorBlock Options:
    Make chapter entries for, or remove various segments (sponsor,
    introductions, etc.) from downloaded YouTube videos using the
    SponsorBlock API (https://sponsor.ajay.app)

    --sponsorblock-mark CATS        SponsorBlock categories to create chapters
                                    for, separated by commas. Available
                                    categories are sponsor, intro, outro,
                                    selfpromo, preview, filler, interaction,
                                    music_offtopic, poi_highlight, chapter, all
                                    and default (=all). You can prefix the
                                    category with a "-" to exclude it. See [1]
                                    for descriptions of the categories. E.g.
                                    --sponsorblock-mark all,-preview [1] https:/
                                    /wiki.sponsor.ajay.app/w/Segment_Categories
    --sponsorblock-remove CATS      SponsorBlock categories to be removed from
                                    the video file, separated by commas. If a
                                    category is present in both mark and remove,
                                    remove takes precedence. The syntax and
                                    available categories are the same as for
                                    --sponsorblock-mark except that "default"
                                    refers to "all,-filler" and poi_highlight,
                                    chapter are not available
    --sponsorblock-chapter-title TEMPLATE
                                    An output template for the title of the
                                    SponsorBlock chapters created by
                                    --sponsorblock-mark. The only available
                                    fields are start_time, end_time, category,
                                    categories, name, category_names. Defaults
                                    to "[SponsorBlock]: %(category_names)l"
    --no-sponsorblock               Disable both --sponsorblock-mark and
                                    --sponsorblock-remove
    --sponsorblock-api URL          SponsorBlock API location, defaults to
                                    https://sponsor.ajay.app

  Extractor Options:
    --extractor-retries RETRIES     Number of retries for known extractor errors
                                    (default is 3), or "infinite"
    --allow-dynamic-mpd             Process dynamic DASH manifests (default)
                                    (Alias: --no-ignore-dynamic-mpd)
    --ignore-dynamic-mpd            Do not process dynamic DASH manifests
                                    (Alias: --no-allow-dynamic-mpd)
    --hls-split-discontinuity       Split HLS playlists to different formats at
                                    discontinuities such as ad breaks
    --no-hls-split-discontinuity    Do not split HLS playlists into different
                                    formats at discontinuities such as ad breaks
                                    (default)
    --extractor-args IE_KEY:ARGS    Pass ARGS arguments to the IE_KEY extractor.
                                    See "EXTRACTOR ARGUMENTS" for details. You
                                    can use this option multiple times to give
                                    arguments for different extractors



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