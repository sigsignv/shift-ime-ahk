# shift-ime-ahk

## Overview

左 Shift キーに `無変換` を、右 Shift キーに `変換` を割り当てる AutoHotkey スクリプトです。

ただし、次の条件を満たす必要があります。

- Shift キーを単独で押したとき
- Shift キーを 200 ミリ秒未満で離したとき

次のケースでは割り当てが行われません。

- Shift キーと他のキーを同時に押したとき
- Shift キーを離すまでに 200 ミリ秒以上経過したとき

ほとんどのケースでは通常通り Shift キーとして機能させつつ、必要なときだけ `無変換` と `変換` を入力できるようになります。

## Requirements

- AutoHotkey v2.0+

## Author

- Sigsign <<sig@signote.cc>>

## License

Apache-2.0
