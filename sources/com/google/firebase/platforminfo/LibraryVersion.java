package com.google.firebase.platforminfo;

import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes3.dex */
@AutoValue
public abstract class LibraryVersion {
    public abstract String getLibraryName();

    public abstract String getVersion();

    public static LibraryVersion create(String str, String str2) {
        return new AutoValue_LibraryVersion(str, str2);
    }
}
