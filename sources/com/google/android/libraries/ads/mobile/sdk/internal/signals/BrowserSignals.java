package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BrowserSignals {

    @SerializedName("is_browser_custom_tabs_capable")
    public Boolean isDefaultBrowserCustomTabsCapable;

    public BrowserSignals() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BrowserSignals) && Intrinsics.areEqual(this.isDefaultBrowserCustomTabsCapable, ((BrowserSignals) obj).isDefaultBrowserCustomTabsCapable);
    }

    public final int hashCode() {
        Boolean bool = this.isDefaultBrowserCustomTabsCapable;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public final String toString() {
        return "BrowserSignals(isDefaultBrowserCustomTabsCapable=" + this.isDefaultBrowserCustomTabsCapable + ")";
    }

    public BrowserSignals(Boolean bool) {
        this.isDefaultBrowserCustomTabsCapable = bool;
    }

    public /* synthetic */ BrowserSignals(int i) {
        this((Boolean) null);
    }
}
