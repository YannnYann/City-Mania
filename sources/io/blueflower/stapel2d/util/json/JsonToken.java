package io.blueflower.stapel2d.util.json;

import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes5.dex */
public final class JsonToken {
    public static boolean isNumber(int i) {
        return i == 8 || i == 9 || i == 7 || i == 10 || i == 14 || i == 15 || i == 16 || (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0;
    }
}
