---
title: "CLI |> Compress and Decompress via CLI"
date: 2020-08-28T11:03:21+08:00
lastmod: 2020-08-28T11:03:21+08:00
draft: false
author: "qaRabbit"
tags: ["CLI", "Tar", "Zip"]
summary: "summary of compress and decompress"
images: 
- https://images.pexels.com/photos/3831772/pexels-photo-3831772.jpeg?cs=srgb&dl=pexels-alex-conchillos-3831772.jpg&fm=jpg
---

<hr>


## macOS

- file.zip

extract to the current directory

{{<highlight zsh>}}
    unzip file.zip
{{</highlight>}}

    extract to the target directory

{{<highlight zsh>}}
    unzip file.zip -d target_dir_path
{{</highlight>}}

    compress to file.zip

{{<highlight zsh>}}
    zip file path1 path2 path3
{{</highlight>}}

- file.tar (archive, no compress)

extract to the current directory

{{<highlight zsh>}}
    tar -xvf file.tar
{{</highlight>}}

    extract to target_dir_path (must be created first)

{{<highlight zsh>}}
    mkdir -p target_dir_path && tar -C target_dir_path -xvf file.tar
{{</highlight>}}

    compress path

{{<highlight zsh>}}
    tar -cvf file.tar path1 path2
{{</highlight>}}

- file.tar.gz file.tgz

_**tar.gz** file is a **Tar archive** compressed with **Gzip**_

    extract to the current directory

{{<highlight zsh>}}
    tar -zxvf file.tar.gz
{{</highlight>}}

    extract to target_dir_path (must be created first)

{{<highlight zsh>}}
    mkdir -p target_dir_path && tar -C target_dir_path -zxvf file.tar.gz
{{</highlight>}}

    compress path

{{<highlight zsh>}}
    tar -czvf file.tar.gz path1 path2 ...
{{</highlight>}}

    compress with exclude
    
{{<highlight zsh>}}
    tar -czvf file.tar.gz path --exclude=sub_path1 --exclude=sub_path2

    tar -czvf file.tar.gz path --exclude={sub_path1, sub_path2}

    tar -czvf file.tar.gz path --exclude=*.ext
{{</highlight>}}


- file.tar.xz

_**tar.gz** file is a **Tar archive** compressed with **Xz** a LZMA based compress algorithm_

    tar auto-detects compression type and extracts the archive

{{<highlight zsh>}}
    tar -xf file.tar.xz
{{</highlight>}}

- file.tar.bz2 file.tbz

_**tar.bz2** file is a **Tar archive** compressed with **Bzip2**_

    extract to the current directory

{{<highlight zsh>}}
    tar -xvf file.tar.bz2
{{</highlight>}}

    extract to target_dir_path (--directory, -C; must be created first)

{{<highlight zsh>}}
    mkdir -p target_dir_path && tar -xvf file.tar.bz2 -C target_dir_path
{{</highlight>}}

    extract specific files

{{<highlight zsh>}}
    tar -xf archive.tar.bz2 file1 file2 dir1 dir2

    tar -xf archive.tar.bz2 --wildcards '*.md'
{{</highlight>}}

    extract from stdin

{{<highlight zsh>}}
    wget -c ftp://ftp.vim.org/pub/vim/unix/vim-8.1.tar.bz2 -O - | sudo tar -xj
{{</highlight>}}

    list archive content (--list, -t)

{{<highlight zsh>}}
    tar -tvf file.tar.bz2
{{</highlight>}}

    compress path

{{<highlight zsh>}}
    tar -cjvf file.tar.bz2 path1 path2
{{</highlight>}}

## GNU/Linux

<hr>

*References*:

{{< ref 
"https://www.cyberciti.biz/faq/linux-howto-unzip-files-in-root-directory/"
"https://www.hostingmanual.net/zipping-unzipping-files-unix/"
"https://linuxize.com/post/how-to-create-and-extract-archives-using-the-tar-command-in-linux/"
"https://linuxize.com/post/how-to-extract-unzip-tar-bz2-file"
"https://www.pendrivelinux.com/how-to-open-a-tar-file-in-unix-or-linux/"
"https://www.howtogeek.com/248780/how-to-compress-and-extract-files-using-the-tar-command-on-linux/"
"https://unix.stackexchange.com/questions/25311/create-target-directory-when-extracting-tarball"
\>}}

