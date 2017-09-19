qemu_bare_metal
===============

QEMU 向けベアメタルプログラミングを行った記録。

Requirements:
-------------

下記環境で動作確認を行っています。
それ以外の環境の方は、Makefile の修正など行う必要があります。

- OS: Windows 10
- 実行環境: QEMU 2.10
- debian on docker on windows な状態
    - [mikoto2000/aarch64](https://hub.docker.com/r/mikoto2000/aarch64/)

実行
----

それぞれのプログラムは、下記コマンドで実行できます。

- uart_output
    - `docker-compose run uart_output make run`


License:
--------

Copyright (C) 2017 mikoto2000

This software is released under the MIT License, see LICENSE

このソフトウェアは MIT ライセンスの下で公開されています。 LICENSE を参照してください。


Author:
-------

mikoto2000 <mikoto2000@gmail.com>

