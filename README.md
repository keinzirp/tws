# tws

A session-oriented wrapper around [timewarrior](https://timewarrior.net). Adds structured session notes inside neovim.

## Workflow

**Starting a session**
```
tws start work
```
- Creates a new session file with a template.
- Opens neovim with the previous session on the left (read-only) and the new one on the right.
- A live timer runs in a split at the bottom.
- Quitting neovim (`ZZ`) annotates the timewarrior interval with your notes and stops the timer.

**Continuing after a break**
```
tws continue          # picks up the most recent session (any tag)
tws continue work     # picks up the most recent session for a specific tag
```
**Emergency stop** (if neovim exited without cleaning up)
```
tws stop
```
- Annotates the current interval and stops the timer without opening neovim.

## Session files

Sessions are stored at:
```
~/.timewarrior/sessions/<tag>/YYYY-MM-DDTHH-MM-SS.md
```

## Dependencies

- [timewarrior](https://timewarrior.net) (`brew install timewarrior`)
- [neovim](https://neovim.io) (`brew install neovim`)
- [watch](https://linux.die.net/man/1/watch) (`brew install watch`)

## Install

```bash
git clone https://github.com/yourname/tws
chmod +x tws/tws
ln -s "$PWD/tws/tws" /usr/local/bin/tws
```
