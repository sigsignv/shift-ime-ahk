# shift-ime-ahk

## Overview

左 Shift キーに `無変換` を、右 Shift キーに `変換` を割り当てる AutoHotkey スクリプトです。

次の条件を満たす場合のみ割り当てが行われます。

- Shift キーを単独で押したとき
- Shift キーを 300 ミリ秒未満で離したとき

言い換えると、次のケースでは割り当てが行われません。

- Shift キーと他のキーを同時に押したとき（例: `Shift + 1`）
- Shift キーを離すまでに 300 ミリ秒以上経過したとき

ほとんどのケースでは通常通り Shift キーとして機能しつつ、必要なときだけ `無変換` と `変換` を割り当てられます。

## Requirements

- AutoHotkey v2.0+

## Author

- Sigsign <<sig@signote.cc>>

## License

Apache-2.0
