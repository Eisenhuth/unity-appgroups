#import <Foundation/Foundation.h>

char* MakeCStringCopy(const char* cString) {
  if (cString == NULL) {
    return NULL;
  }
  size_t length = strlen(cString);
  char* copy = (char*)malloc(length + 1);
  if (copy != NULL) {
    strcpy(copy, cString);
  }
  return copy;
}

NSString* _GetAppGroupPathInternal(NSString* groupIdentifier) {
  NSURL* containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:groupIdentifier];
  if (containerURL == nil) {
    NSLog(@"Failed to get container URL for group identifier: %@", groupIdentifier);
    return nil;
  }
  return [containerURL path];
}

const char* _GetAppGroupPath(const char* groupIdentifierCString) {
  NSString* groupIdentifier = [NSString stringWithUTF8String:groupIdentifierCString];
  NSString* appGroupPath = _GetAppGroupPathInternal(groupIdentifier);
  return MakeCStringCopy([appGroupPath UTF8String]);
}
