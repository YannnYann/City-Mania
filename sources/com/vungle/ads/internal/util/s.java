package com.vungle.ads.internal.util;

import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class s {
    public static String a(String key, JsonObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return JsonElementKt.getJsonPrimitive((JsonElement) MapsKt__MapsKt.getValue(json, key)).getContent();
        } catch (Exception unused) {
            return null;
        }
    }
}
