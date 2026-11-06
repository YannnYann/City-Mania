package com.google.firebase.datastorage;

import androidx.datastore.preferences.core.Preferences;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JavaDataStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class JavaDataStorageKt {
    public static final <T> T getOrDefault(Preferences preferences, Preferences.Key<T> key, T t) {
        Intrinsics.checkNotNullParameter(preferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        T t2 = (T) preferences.get(key);
        return t2 == null ? t : t2;
    }
}
