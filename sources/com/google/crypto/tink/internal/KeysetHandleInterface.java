package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyStatus;

/* JADX INFO: loaded from: classes3.dex */
public interface KeysetHandleInterface {

    public interface Entry {
        int getId();

        Key getKey();

        KeyStatus getStatus();
    }

    Entry getAt(int i);

    Entry getPrimary();

    int size();
}
