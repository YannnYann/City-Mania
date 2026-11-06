package com.ironsource;

import com.ironsource.C3522b4;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class C8 {
    public static final C8 a = new C8();

    private C8() {
    }

    public static final String a() {
        Object objOpt;
        JSONObject jSONObjectOptJSONObject = SDKUtils.getControllerConfigAsJSONObject().optJSONObject(C3522b4.a.c);
        if (jSONObjectOptJSONObject == null || (objOpt = jSONObjectOptJSONObject.opt(G5.K)) == null || !(objOpt instanceof JSONArray)) {
            return null;
        }
        JSONArray jSONArray = (JSONArray) objOpt;
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, jSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            Object objOpt2 = jSONArray.opt(((IntIterator) it).nextInt());
            if (objOpt2 != null) {
                arrayList.add(objOpt2);
            }
        }
        return CollectionsKt___CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
    }
}
