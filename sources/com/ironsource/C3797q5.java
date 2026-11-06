package com.ironsource;

import com.ironsource.mediationsdk.d;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.q5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3797q5 implements Ob<String, d.a> {
    @Override // com.ironsource.Ob
    public d.a a(String input) throws JSONException {
        Intrinsics.checkNotNullParameter(input, "input");
        d.a aVarA = com.ironsource.mediationsdk.d.b().a(new JSONObject(input));
        Intrinsics.checkNotNullExpressionValue(aVarA, "getAuctionDataFromResponse(...)");
        return aVarA;
    }
}
