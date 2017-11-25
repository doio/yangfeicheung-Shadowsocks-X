# Shadowsocks-X

Current version is 2.3

It's based on the old Shadowsocks software developed by clowindy,written in objc.

## Requirements

### Running

- macOS X 10.8+ (Mountain Lion and later versions)

### Building

- Xcode 9.0.1+

### Download

From   [ssx-mac-v13.zip](http://www.sednax.com/data/ssx-mac-v13.zip)

Or     [https://github.com/yangfeicheung/Shadowsocks-X/releases/](https://github.com/yangfeicheung/Shadowsocks-X/releases/)
  
### How to use
1. Download the zip file and unzip,put the ShadowsocksX.app under Applications folder.
2. Choose one server,if there's none,add one or buy one.
3. Choose Auto Mode and you can acess prohibited sites like google.com now, for Oversea students(not in mainland China),you can use Oversea Mode,and choose a server in china,then you can access chinese sites without restriction of ip.

## Modes Introduction
There are total four modes in this app:
 - Auto Mode: all sites in GFW List would be accessed via ss server,while the rest accessed directly.You can also add customed sites to Custom Rules so they can be accessed via ss server as well.
 - Global Mode: all sites are accessed via ss server.
 - Oversea Mode: if you are oversea(outside China mainland) and want to access sites within China,use this mode together with a server located in China,all chinese ip would be access via ss server(which as we mentioned,a server located in china),thus you can access services like QQ Music,Youku etc without any restriction.
 - Blacklist Mode: all sites are accessed via ss server, except those in Custom Rules, this rule file is a different one from Auto Mode.

## Features

- Supports Socks5.
- Supports Ping Servers Service.
- Supports Http Proxy(polipo),it's integrated into this app,you don't have to install anything,no command line needed.
- Block AD function lets you block those annoying ads when surfing online.
- Could update GFW List by download GFW List from GitHub.
- Shows QRCode for current active server.
- Scans QRCode from screen.
- Supports Launch At Login.
- Users can customize their own rules.
- Support for [AEAD Ciphers](https://shadowsocks.org/en/spec/AEAD-Ciphers.html)
- Supports KCP [kcptun](https://github.com/xtaci/kcptun). 
- Supports two more modes: Oversea Mode & Blacklist Mode

## Difference from original Shadowsocks-X
- Block AD function is added
- Two more Modes: Oversea Modes &  Blacklist Modes
- Supports Kcptun
- Embedded with a http proxy
- Ping Servers Service
- Bypass proxy settings for customized hosts & domains under Preferences Panel

## License

The project is released under the terms of the GPLv3.


