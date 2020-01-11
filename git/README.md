# Git configurations

My git dotfiles. Global config files live at `$HOME`.

## Git aliases
**Core commands**

| **alias** | **command** |
| ----- | ------- |
| `br` | `branch` |
| `cm` | `commit` |
| `co` | `checkout` |
| `st` | `status` |

**More aliases**

| **alias** | **command** | **what it does** |
| ---- | ------- | ------ |
| `cmm` | `commit -m` | Write the commit message in the terminal |
| `cfix` | `commit --amend --reuse-message=HEAD` | Fix, i.e. replace, the last commit by creating a new commit and reusing the tip's commit message. |
| `last` | `log -1 HEAD` | Show the most recent commit |
| `log` | `log --graph --pretty=format:'%Cmagenta%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold cyan)<%an>%Creset' --abbrev-commit` | Make log messages 🌈 pretty ✨ |
| `undo` | `reset --soft HEAD^` | Undo the changes of the last commit |
| `revert` | `reset --hard HEAD^` | Undo and discard the changes of the last commit |