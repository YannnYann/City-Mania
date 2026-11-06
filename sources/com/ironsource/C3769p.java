package com.ironsource;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3769p {
    private final Boolean a;

    public C3769p(JSONObject adFormatAuctionSettings) {
        Intrinsics.checkNotNullParameter(adFormatAuctionSettings, "adFormatAuctionSettings");
        this.a = adFormatAuctionSettings.has(C3791q.a) ? Boolean.valueOf(adFormatAuctionSettings.optBoolean(C3791q.a)) : null;
    }

    public final Boolean a() {
        return this.a;
    }
}
