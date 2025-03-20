# Mac Setup Playbook
---

## Installation
---
1. Install Apple's command line tools (`xcode-select --install`).
2. Install Homebrew.
  1. `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  2. Set `PATH`
    a. `echo >> ~/.zprofile`
    b. `echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile`
    c. `eval "$(/opt/homebrew/bin/brew shellenv)"`
3. Install Ansible.
  1. `brew install ansible`

