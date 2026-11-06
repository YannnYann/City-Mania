package com.unity3d.ads.core.domain.adload;

import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.adplayer.model.LoadEvent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreloadedWebView.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PreloadedWebView {
    private final AdPlayer adPlayer;
    private final WebViewBridge bridge;
    private final LoadEvent loadEvent;

    public static /* synthetic */ PreloadedWebView copy$default(PreloadedWebView preloadedWebView, AdPlayer adPlayer, WebViewBridge webViewBridge, LoadEvent loadEvent, int i, Object obj) {
        if ((i & 1) != 0) {
            adPlayer = preloadedWebView.adPlayer;
        }
        if ((i & 2) != 0) {
            webViewBridge = preloadedWebView.bridge;
        }
        if ((i & 4) != 0) {
            loadEvent = preloadedWebView.loadEvent;
        }
        return preloadedWebView.copy(adPlayer, webViewBridge, loadEvent);
    }

    public final AdPlayer component1() {
        return this.adPlayer;
    }

    public final WebViewBridge component2() {
        return this.bridge;
    }

    public final LoadEvent component3() {
        return this.loadEvent;
    }

    public final PreloadedWebView copy(AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
        Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
        Intrinsics.checkNotNullParameter(bridge, "bridge");
        Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
        return new PreloadedWebView(adPlayer, bridge, loadEvent);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreloadedWebView)) {
            return false;
        }
        PreloadedWebView preloadedWebView = (PreloadedWebView) obj;
        return Intrinsics.areEqual(this.adPlayer, preloadedWebView.adPlayer) && Intrinsics.areEqual(this.bridge, preloadedWebView.bridge) && Intrinsics.areEqual(this.loadEvent, preloadedWebView.loadEvent);
    }

    public int hashCode() {
        return (((this.adPlayer.hashCode() * 31) + this.bridge.hashCode()) * 31) + this.loadEvent.hashCode();
    }

    public String toString() {
        return "PreloadedWebView(adPlayer=" + this.adPlayer + ", bridge=" + this.bridge + ", loadEvent=" + this.loadEvent + ')';
    }

    public PreloadedWebView(AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
        Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
        Intrinsics.checkNotNullParameter(bridge, "bridge");
        Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
        this.adPlayer = adPlayer;
        this.bridge = bridge;
        this.loadEvent = loadEvent;
    }

    public final AdPlayer getAdPlayer() {
        return this.adPlayer;
    }

    public final WebViewBridge getBridge() {
        return this.bridge;
    }

    public final LoadEvent getLoadEvent() {
        return this.loadEvent;
    }
}
