# Motivate me!

## Requirements

* macOS with iTerm2
* imgcat (downloaded from [https://iterm2.com/utilities/imgcat](https://iterm2.com/utilities/imgcat))
* GFX files in PNG/JPG/JPEG format in one folder

## How to install

```
mkdir -p ~/bin && curl -o ~/bin/motivate.sh https://raw.githubusercontent.com/grzegorzblaszczyk/motivate_me/refs/heads/main/motivate.sh && chmod +x ~/bin/motivate.sh
```

## How to start

1. Prepare a folder `~/inspiring_gfx` for inspiring graphic files

```
mkdir -p ~/inspiring_gfx
```

2. Run the script

```
~/bin/motivate.sh
```

or with any other folder

```
~/bin/motivate.sh /path/to/your/inspiring/files
```

## License

MIT License