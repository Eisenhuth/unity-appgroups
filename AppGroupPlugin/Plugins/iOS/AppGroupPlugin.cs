#if UNITY_IOS
using System.Runtime.InteropServices;
#endif
using UnityEngine;
using System.IO;

// ReSharper disable once CheckNamespace
namespace Plugins.iOS
{
    public static class AppGroupPlugin
    {
#if UNITY_EDITOR
        private static string _GetAppGroupPath(string groupIdentifier)
        {
            var path = Path.Combine(Application.persistentDataPath, groupIdentifier);
        
            if(!Directory.Exists(path))
                Directory.CreateDirectory(path);

            return path;
        }

#elif UNITY_IOS
        [DllImport("__Internal")]
        private static extern string _GetAppGroupPath(string groupIdentifier);
#endif
        
        public static string GetAppGroupPath(string groupIdentifier)
        {
            return _GetAppGroupPath(groupIdentifier);
        }
    }
}
