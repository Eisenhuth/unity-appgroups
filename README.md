# unity-appgroups

App Groups allow your iOS apps to share files locally - they behave like any other local paths that you are working with, as long as your App has the App Groups Entitlement.
You can read more about App Groups Entitlements in [Apple's official documentation](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_application-groups)

# Installation

1. Open the Unity Package Manager and add a package from git URL

<img width="289" alt="image" src="https://github.com/Eisenhuth/unity-appgroups/assets/47415874/bfb95aa3-dc06-435b-8154-4448eaa64092">


2. Paste this Repository's git URL
```
https://github.com/Eisenhuth/unity-appgroups.git
```

# Usage in Unity

```cs
var appGroupPath = Plugins.iOS.AppGroupPlugin.GetAppGroupPath("YOUR.GROUP.IDENTIFIER");
```
# in Xcode

Add the App Group Entitlement to the Xcode Project that Unity generates.

Editor -> Add Capability -> App Groups

You might have to add the capability to your App's identifier [through the developer portal](https://developer.apple.com/account/resources/identifiers/list). 


