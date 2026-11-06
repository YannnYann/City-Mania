package com.badlogic.gdx.utils;

/* JADX INFO: loaded from: classes.dex */
public class GdxNativesLoader {
    public static boolean disableNativesLoading = false;
    public static boolean nativesLoaded;

    public static synchronized void load() {
        if (nativesLoaded) {
            return;
        }
        if (disableNativesLoading) {
            return;
        }
        new SharedLibraryLoader().load("gdx");
        nativesLoaded = true;
    }
}
