# Software, tools, etc.

This course requires a number of free services and tools available on Unix/Mac systems. If you're on Windows, see [below](#windows) for options.

> See the [Technical FAQ page](tech_faq.md) if you run into snags and/or [report an issue](/issues).

- [Services and platforms](#services-and-platforms)
- [Windows](#windows)
- [Text Editor](#text-editor)
- [Shell terminal](#shell-terminal)
- [Version control](#version-control)
- [Python](#python)
- [Configure via script](#configure)
- [DataKit](#datakit)

## Services and Platforms

* Slack: Join the **comm-177p-progj** channel in the [StanfordJournalism][] workspace.
* Sign up for [GitHub](https://github.com/).

## Windows

Windows users will need to gain access to a Linux system.

### Data Journalism VM

We offer a Linux virtual machine with a graphical Desktop environment, pre-configured with most of the software you'll need for
the course. To use it:

* Download and [install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Download the [data journalism virtual machine](https://www.dropbox.com/s/c5gfwrm3ofmejk5/stanford-dj-vm.ova?dl=0)
* Follow the instructions in [this video](https://youtu.be/p2Ngy7smS78)
* Inside the Ubuntu VM:
  * Open the Terminal Emulator by double-clicking
  * Type `python setup/configure_system.py` in the shell and hit `return`/`enter`
  * Answer the questions when prompted

> You're done! You can skip all remaining steps below.

### VSCode and Windows Subsystem for Linux

For users on more modern versions of Windows, you can use the Windows Subsystem for Linux. This provides a ready-made Linux shell environment (without a graphical Desktop) that integrates nicely with the Visual Studio Code Editor. 

Follow the instructions [here](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) to get up and running.

> With this option, you *will* need to perform the additional Linux setup steps described below.

## Text Editor

You'll need a text editor designed for working with code. For beginners, we recommend [VSCode][] or [Atom][], although you're free to use other tools of your own choosing.

## Shell Terminal

Mac and Linux both come with terminal programs, which provide a text-based interface to your operating system and related command-line tools. 

On Mac, use `Command + spacebar` to perform a Spotlight search for "Terminal".

For a more pleasant shell experience, we strongly recommend installing [iTerm2](https://iterm2.com/).

## Version control

[Git][] is a [version control][] system we use to save and submit code and data for class assignments and projects.

[version control]: https://en.wikipedia.org/wiki/Version_control

### Mac

Install [Homebrew][], a software package manager used on the command line. Then use Homebrew to install git.

Open a Terminal shell (see [above](#shell-terminal)) and run the below commands. Along the way, you'll be prompted to agree to Apple licensing terms and to provide your laptop password.

```
xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update
brew install git
```

> The commands above are based on Steps 1-3 of [How to Install Xcode, Homebrew, Git etc.](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/#laptop-script) See the blog post for more details.

### Linux

Open a terminal shell and run: 

```
sudo apt install git-all
```

## Python

**Python 3.5 - 3.8**

Before installing Python, first open a shell and run: `python --version`.

If you have a version between Python 3.5 and 3.8, you're all set.

If you have an older Python version (e.g. 2.7), follow the below instructions.

### Mac

Follow [these steps][] but skip the installation of Homebrew, which should have been installed earlier when we set up [git](#version-control) (see above).

[install instructions]: https://docs.python-guide.org/starting/installation/
[these steps]: https://docs.python-guide.org/starting/install3/osx/#install3-osx


[Atom]: https://atom.io/
[Homebrew]: https://brew.sh/
[git]: https://git-scm.com/
[StanfordJournalism]: https://stanford-r8xo.slack.com/home
[VSCode]: https://code.visualstudio.com/

### Linux

Use [pyenv](https://github.com/pyenv/pyenv), a tool that allows you to install and manage multiple versions of Python. Run these commands from a shell:

```
# Clone pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Add pyenv vars to bash config
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

# Reinitialize shell
exec "$SHELL"

# Install build dependencies
sudo apt-get update
sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install python version 3.7.6
pyenv install 3.7.6
pyenv global 3.7.6
```

## Configure

Open a Terminal/shell. 

Download and run our configuration script. You'll need to answer a few questions along the way.

```
cd ~

curl -O https://raw.githubusercontent.com/stanfordjournalism/stanford-dj-vm/master/configure_system.py

python configure_system.py
```

## DataKit

[DataKit][] is a command-line tool we'll use to manage code and data for class assignments. It provides a standardized structure for projects and allows us to easily submit code to GitHub.

Run the following command to install DataKit:

```
curl -s https://raw.githubusercontent.com/stanfordjournalism/cookiecutter-stanford-progj/master/requirements.txt | xargs pip install
```

Follow [these instructions](datakit.md#first-project) to complete the DataKit setup.

[DataKit]: https://datakit.ap.org/