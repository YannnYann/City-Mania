package com.vungle.ads;

import com.iab.omid.library.vungle.d;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class AdNotLoadedCantPlay extends VungleError {
    /* JADX WARN: Multi-variable type inference failed */
    public AdNotLoadedCantPlay() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ AdNotLoadedCantPlay(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public AdNotLoadedCantPlay(String str) {
        super(Sdk.SDKError.Reason.AD_NOT_LOADED, d.a("Failed to retrieve the ad object: ", str), null);
    }
}
