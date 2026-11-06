package com.vungle.ads.internal.privacy;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes4.dex */
@Keep
public enum COPPA {
    COPPA_ENABLED(Boolean.TRUE),
    COPPA_DISABLED(Boolean.FALSE),
    COPPA_NOTSET(null);

    private final Boolean value;

    COPPA(Boolean bool) {
        this.value = bool;
    }

    public final Boolean getValue() {
        return this.value;
    }
}
