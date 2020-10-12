# Opinionated emacs config

The main idea of this config is that it recursively loads the files
from `config` directory following the rules:

* check if `config.el`file is present in the provided directory
  * if yes, load only `config.el`
  * otherwise, load every file in the directory. Repeat for every nested directory.


## Install

You can preserve my settings

```
git clone https://github.com/qezz/emacs-config .emacs.d
```

or just start from scratch by wiping the `config` directory

```
git clone https://github.com/qezz/emacs-config .emacs.d
cd .emacs.d && rm -r ./config/
```


## License

MIT

Sergey Mishin
