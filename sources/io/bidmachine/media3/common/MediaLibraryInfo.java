package io.bidmachine.media3.common;

import java.util.HashSet;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaLibraryInfo {
    public static final HashSet<String> registeredModules = new HashSet<>();
    public static String registeredModulesString = "media3.common";

    public static synchronized String registeredModules() {
        return registeredModulesString;
    }

    public static synchronized void registerModule(String str) {
        if (registeredModules.add(str)) {
            registeredModulesString += ", " + str;
        }
    }
}
