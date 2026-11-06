package com.unity3d.ads.adplayer.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class OnDownloadProgressEvent implements WebViewEvent {
    private final String category;
    private final String name;
    private final Object[] parameters;

    public OnDownloadProgressEvent(String downloadId, Integer num, long j, Long l, boolean z, String str, String source) {
        Intrinsics.checkNotNullParameter(downloadId, "downloadId");
        Intrinsics.checkNotNullParameter(source, "source");
        this.category = "ADVIEWER";
        this.name = "ON_DOWNLOAD_PROGRESS";
        this.parameters = new Object[]{downloadId, num, Long.valueOf(j), l, Boolean.valueOf(z), str, source};
    }

    @Override // com.unity3d.ads.adplayer.model.WebViewEvent
    public String getCategory() {
        return this.category;
    }

    @Override // com.unity3d.ads.adplayer.model.WebViewEvent
    public String getName() {
        return this.name;
    }

    @Override // com.unity3d.ads.adplayer.model.WebViewEvent
    public Object[] getParameters() {
        return this.parameters;
    }
}
