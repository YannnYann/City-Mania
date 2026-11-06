package com.badlogic.gdx;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Preferences {
    void clear();

    boolean contains(String str);

    void flush();

    Map<String, ?> get();

    boolean getBoolean(String str, boolean z);

    int getInteger(String str, int i);

    long getLong(String str, long j);

    String getString(String str, String str2);

    Preferences putBoolean(String str, boolean z);

    Preferences putInteger(String str, int i);

    Preferences putLong(String str, long j);

    Preferences putString(String str, String str2);
}
