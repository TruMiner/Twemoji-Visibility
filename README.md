# Twemoji Visibility
![Shows the difference between Minecraft and Twemoji Visibility emojis in the Minecraft chat GUI.](https://cdn.modrinth.com/data/WdYcUVh8/images/527aac1cceddf18631799439edd4804915324d2c.png)
-

Twemoji Visibility is a resource pack that replaces the standard Minecraft emojis with [Twemoji](https://github.com/jdecked/twemoji) emojis, the same ones that Twitter/X and Discord use.

## 📝 Notes 
- There are multiple ways to paste in emojis.
	- On Windows: you can use Windows + . to open the emoji menu.
	- On MacOS: you can use Control + Command + Space to open the emoji menu.
	- You can also use mods such as [Symbol Type](https://modrinth.com/mod/symbol-chat) which feature their own emoji menu and other features.
- Sequence emojis are not supported by Minecraft, and by extension, this resource pack.
	- This means that some emojis will come out as multiple parts when attempted to type in.
	- Flags, skin tones, families, and some other emojis (such as 😶‍🌫️ and 🐦‍⬛) do not work properly.
- Force Unicode Font must be disabled for emojis to be visible. 
	- Game Menu (Escape) > Options... > Language... > Font Settings... > Force Unicode Font (set to OFF).
- If you are using the DiscordSRV plugin on a server, set `EmojiBehavior` to `show` in the config.yml file to force all emojis sent in chat to display as their emoji and not the name.
	- You must be the host of the server, as you need access to the server itself to change this.
- The Beta version supports emojis on text that isn't white.
	- It is considered Beta because emojis may not render correctly in certain places. Please see the release notes to see what is broken.

## ⚖️ License and Credits
- The emoji images in this resource pack are used from Twitter's [Twemoji](https://twemoji.twitter.com/) and jdecked's forked [Twemoji](https://github.com/jdecked/twemoji), which are both licensed by [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
- This resource pack was based on [AndrosDiscordEmojis](https://github.com/Androkai/AndrosDiscordEmojis) and both resource packs are also licensed by [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Feel free to use and adapt in your own resource pack but give appropriate credit and provde a link to the license.
- [Androkai](https://github.com/Androkai) (the creator of [AndrosDiscordEmojis](https://github.com/Androkai/AndrosDiscordEmojis)) gave me permission to make this pack in [this GitHub issue](https://github.com/Androkai/AndrosDiscordEmojis/issues/4).
- The custom shader that allows emojis to keep their color on Signs and Books in the Beta build was created by [AlphaLeoli](https://modrinth.com/user/AlphaLeoli). 
