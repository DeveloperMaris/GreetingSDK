# GreetingSDK

## Overview

This repository is a part of 3 repository project, that demonstrates how [CocoaPods](https://cocoapods.org) can be used to provide both (a *release* and a *pre-release*) versions of an SDK without any hacks or code replacements.

Repositories:
* [GreetingSDK](https://github.com/DeveloperMaris/GreetingSDK)
* [GreetingProject](https://github.com/DeveloperMaris/GreetingProject)
* [GreetingCocoaPodsSpecs](https://github.com/DeveloperMaris/GreetingCocoaPodsSpecs)

## About

This is a demo SDK, which have tagged versions:
* 1.1.0
* 1.2.0-beta

## Installation

All versions are available through [CocoaPods](https://cocoapods.org).

1. Specify source repository in  `Podfile`:
```
source 'https://github.com/DeveloperMaris/GreetingCocoaPodsSpecs'
```

2. Add SDK pod to `Podfile`:
```
pod 'GreetingSDK'
```

By just specifying `pod 'GreetingSDK'` without a specific version, it will automatically install the last available stable version, which is `1.1.0`, not the `1.2.0-beta`, because *it's beta*:

![pod install](./Screenshots/pod_install.png)

Also, if there would be an update available for the SDK (**1.1.0**), and also a new *beta* release too (**1.2.0-beta**), end-user would be informed that a *beta* version is available, but it would automatically update **only to the latest stable version**.

For the outdated versions user can check using `pod outdated`:

![pod outdated](./Screenshots/pod_outdated_1.png)
*(Screenshot does not show that the versions 1.0.1 and 1.1.0 are colored in blue)*

Or in case if a user is already on the latest stable version, it would still inform the user about a newer version, but not install it:

![pod outdated](./Screenshots/pod_outdated_2.png)
*(Screenshot does not show that the versions 1.1.0 and 1.1.0 are colored in red)*

## Install a specific version

You can install a specific SDK version (including the *beta*) by specifying the pod version in the `Podfile`:
```
pod 'GreetingSDK'                   # Will install latest available stable version (1.1.0)
pod 'GreetingSDK', '~> 1.1.0'       # Will install specifically version 1.1 and any other available patch version (1.1.0)
pod 'GreetingSDK', '~> 1.2.0-beta'  # Will install latest available 1.2.0 beta version (1.2.0-beta)
```
## Version naming

[CocoaPods](https://cocoapods.org) framework follows the [Semantic Versioning guidelines](https://semver.org), for example:
```
1.0.0 < 1.1.0 < 1.2.0-beta < 1.2.0-beta.2 < 1.2.0-rc.1 < 1.2.0
```
