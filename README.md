# Libssh2Prebuild
## Libssh2 with OpenSSL crypto prebuilt library backend for Apple platforms. Apple Silicon supported.


### Supported platforms and architectures
| Platform          |  Architectures     |
|-------------------|--------------------|
| macOS             | x86_64 arm64       |
| iOS               | arm64              |
| iOS Simulator     | x86_64 arm64       |
| watchOS           | armv7k arm64_32    |
| watchOS Simulator | x86_64 arm64       |
| tvOS              | arm64              |
| tvOS Simulator    | x86_64 arm64       |
| mac Catalyst      | x86_64 arm64       |

### Current source pins

- libssh2: `xibbon/libssh2` branch `xibbon-2026-05-baseline`
- OpenSSL: `openssl-3.5.6`

### Usage

Add line to your `Package.swift` dependencies:

```
.package(name: "CSSH", url: "https://github.com/DimaRU/Libssh2Prebuild.git", from: "1.9.0")

```

The build script writes a binary-target `Package.swift` with the release URL and checksum for the generated archive.

### Xcode 12 bug note!

Xcode 12 now has a bug that causes static library .a files to be copied into the app bundle. Add `Run Script` to your Xcode project with this commands:

```
# Remove static libs
ls -1 ${CODESIGNING_FOLDER_PATH}/Contents/Frameworks/*.a
rm -f ${CODESIGNING_FOLDER_PATH}/Contents/Frameworks/*.a

```

### Build your own repo from source

Required current Xcode, autotools (`autoconf`, `automake`, `libtool`/`glibtoolize`), and [github cli](https://github.com/cli/cli). Intended to use with GitHub.

1. Install gh: `brew install gh`
2. Authorize gh: `gh auth`
2. Fork and clone this repo
3. Run `./script/build-xcframework.sh commit`

### Credits:
* Andrew Madsen for building OpenSSL for ARM/Apple silicon Macs [https://blog.andrewmadsen.com/2020/06/22/building-openssl-for.html](https://blog.andrewmadsen.com/2020/06/22/building-openssl-for.html)
*  Tommaso Madonia for build script sample. [https://github.com/Frugghi/iSSH2](https://github.com/Frugghi/iSSH2)
