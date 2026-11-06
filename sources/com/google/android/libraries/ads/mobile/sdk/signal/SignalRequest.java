package com.google.android.libraries.ads.mobile.sdk.signal;

import ads_mobile_sdk.x11;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SignalRequest extends BaseRequest {
    public final String m;
    public final x11 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SignalRequest(java.lang.String r17, java.lang.String r18, java.util.Set<java.lang.String> r19, java.lang.String r20, java.util.Map<java.lang.String, java.lang.String> r21, android.os.Bundle r22, java.util.Set<java.lang.String> r23, java.util.Set<java.lang.String> r24, java.util.Map<java.lang.String, android.os.Bundle> r25, java.lang.String r26, java.lang.String r27) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest.<init>(java.lang.String, java.lang.String, java.util.Set, java.lang.String, java.util.Map, android.os.Bundle, java.util.Set, java.util.Set, java.util.Map, java.lang.String, java.lang.String):void");
    }

    public final String getSignalType() {
        return this.m;
    }

    public final x11 a() {
        return this.n;
    }
}
