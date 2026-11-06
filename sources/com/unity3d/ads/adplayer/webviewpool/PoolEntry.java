package com.unity3d.ads.adplayer.webviewpool;

import android.webkit.WebView;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PoolEntry.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PoolEntry {
    private final AndroidWebViewClient client;
    private final WebView webView;

    public static /* synthetic */ PoolEntry copy$default(PoolEntry poolEntry, WebView webView, AndroidWebViewClient androidWebViewClient, int i, Object obj) {
        if ((i & 1) != 0) {
            webView = poolEntry.webView;
        }
        if ((i & 2) != 0) {
            androidWebViewClient = poolEntry.client;
        }
        return poolEntry.copy(webView, androidWebViewClient);
    }

    public final WebView component1() {
        return this.webView;
    }

    public final AndroidWebViewClient component2() {
        return this.client;
    }

    public final PoolEntry copy(WebView webView, AndroidWebViewClient client) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(client, "client");
        return new PoolEntry(webView, client);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PoolEntry)) {
            return false;
        }
        PoolEntry poolEntry = (PoolEntry) obj;
        return Intrinsics.areEqual(this.webView, poolEntry.webView) && Intrinsics.areEqual(this.client, poolEntry.client);
    }

    public int hashCode() {
        return (this.webView.hashCode() * 31) + this.client.hashCode();
    }

    public String toString() {
        return "PoolEntry(webView=" + this.webView + ", client=" + this.client + ')';
    }

    public PoolEntry(WebView webView, AndroidWebViewClient client) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(client, "client");
        this.webView = webView;
        this.client = client;
    }

    public final WebView getWebView() {
        return this.webView;
    }

    public final AndroidWebViewClient getClient() {
        return this.client;
    }
}
