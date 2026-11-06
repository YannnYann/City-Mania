package com.ironsource;

import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface D2 {
    static /* synthetic */ void a(D2 d2, List list, Map map, String str, C3939y2 c3939y2, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2, A a, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAuctionSuccess");
        }
        d2.a(list, map, str, c3939y2, jSONObject, jSONObject2, i, j, i2, str2, (i3 & 1024) != 0 ? null : a);
    }

    void a(int i, String str);

    void a(int i, String str, int i2, String str2, long j, A a);

    void a(List<C3939y2> list, Map<String, H> map, String str, C3939y2 c3939y2, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2, A a);

    static /* synthetic */ void a(D2 d2, int i, String str, int i2, String str2, long j, A a, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAuctionFailed");
        }
        d2.a(i, str, i2, str2, j, (i3 & 32) != 0 ? null : a);
    }
}
