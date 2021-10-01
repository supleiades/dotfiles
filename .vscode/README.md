# extensions
- ~/.vscode/extensions/
- 拡張機能
  - このディレクトリにはアンインストールした拡張機能や、過去のバージョンの拡張機能が残ってしまう
```sh
ls -la ~/.vscode/extensions/

rm -rf ~/.vscode/extensions/*

# 現在インストールされている拡張機能を確認後問題なければ
cp -r ./.vscode/extensions/* ~/.vscode/extensions/.
```

# argv.json
- 不明

# settings.json
- ~/Library/Application\ Support/Code/User/settings.json
```sh
cat ~/Library/Application\ Support/Code/User/settings.json

cp ./.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```