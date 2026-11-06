package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Os;
import com.badlogic.gdx.utils.SharedLibraryLoader;

/* JADX INFO: loaded from: classes.dex */
public final class UIUtils {
    public static boolean isAndroid;
    public static boolean isIos;
    public static boolean isLinux;
    public static boolean isMac;
    public static boolean isWindows;

    static {
        isAndroid = SharedLibraryLoader.os == Os.Android;
        isMac = SharedLibraryLoader.os == Os.MacOsX;
        isWindows = SharedLibraryLoader.os == Os.Windows;
        isLinux = SharedLibraryLoader.os == Os.Linux;
        isIos = SharedLibraryLoader.os == Os.IOS;
    }

    public static boolean shift() {
        return Gdx.input.isKeyPressed(59) || Gdx.input.isKeyPressed(60);
    }
}
