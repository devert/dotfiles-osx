# macOS User Preferences

Printing all the domains via defaults domains is a very helpful way to check what actually can be changed. Domains are objects that contain settings for a particular system component, installed application or a configuration `.plist` file located in `/Library/Preferences/`.

```sh
defaults domains | tr ',' '\n'
```

## More Information About Changing Preferences via Command Line

- <https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/>
- <https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh>
- <https://wilsonmar.github.io/dotfiles/>
