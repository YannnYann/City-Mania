package com.vungle.ads.internal.network;

import com.ironsource.G5;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.q1;
import com.vungle.ads.internal.model.u1;
import com.vungle.ads.internal.model.w2;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes4.dex */
public final class e0 {
    public static final Json c = JsonKt.Json$default(null, b0.a, 1, null);
    public static final Regex d = new Regex("[^\\t\\x20-\\x7E]");
    public final Call.Factory a;
    public final com.vungle.ads.internal.network.converters.b b;

    public e0(OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        this.a = okHttpClient;
        this.b = new com.vungle.ads.internal.network.converters.b();
    }

    public final m b(String ua, String path, u1 body) {
        Intrinsics.checkNotNullParameter(ua, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            Json json = c;
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(u1.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            try {
                return new m(this.a.newCall(a(this, ua, path, null, null, 12).post(RequestBody.Companion.create(json.encodeToString(kSerializerSerializer, body), (MediaType) null)).build()), new com.vungle.ads.internal.network.converters.d(Reflection.typeOf(w2.class)));
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
        }
    }

    public final m c(String ua, String path, u1 body) {
        Json json;
        KSerializer<Object> kSerializerSerializer;
        Intrinsics.checkNotNullParameter(ua, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            json = c;
            kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(u1.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        } catch (Exception unused) {
        }
        try {
            return new m(this.a.newCall(a(this, ua, path, null, null, 12).post(RequestBody.Companion.create(json.encodeToString(kSerializerSerializer, body), (MediaType) null)).build()), this.b);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Request.Builder a(e0 e0Var, String str, String str2, String str3, Map map, int i) {
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            map = null;
        }
        e0Var.getClass();
        Request.Builder builderAddHeader = new Request.Builder().url(str2).addHeader("User-Agent", c0.a(str)).addHeader("Vungle-Version", "7.1.0").addHeader("Content-Type", G5.M);
        if (map != null) {
            Headers.Builder builder = new Headers.Builder();
            for (Map.Entry entry : map.entrySet()) {
                try {
                    builder.add((String) entry.getKey(), c0.a((String) entry.getValue()));
                } catch (IllegalArgumentException unused) {
                    boolean z = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.a("VungleApiImpl", d0.a);
                }
            }
            builderAddHeader.headers(builder.build());
        }
        if (str3 != null) {
            builderAddHeader.addHeader("X-Vungle-Placement-Ref-Id", c0.a(str3));
        }
        String strC = f0.c();
        if (strC != null) {
            builderAddHeader.addHeader("X-VUNGLE-APP-VERSION", c0.a(strC));
        }
        String strB = f0.b();
        if (strB != null) {
            builderAddHeader.addHeader("X-Vungle-App-Id", c0.a(strB));
        }
        return builderAddHeader;
    }

    public final m b(String ua, String path, RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(ua, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        Request.Builder builderAddHeader = new Request.Builder().url(HttpUrl.Companion.get(path).newBuilder().build()).addHeader("User-Agent", c0.a(ua)).addHeader("Vungle-Version", "7.1.0").addHeader("Content-Type", CommonGatewayClient.HEADER_PROTOBUF);
        String strB = f0.b();
        if (strB != null) {
            builderAddHeader.addHeader("X-Vungle-App-Id", c0.a(strB));
        }
        String strC = f0.c();
        if (strC != null) {
            builderAddHeader.addHeader("X-VUNGLE-APP-VERSION", c0.a(strC));
        }
        return new m(this.a.newCall(builderAddHeader.post(requestBody).build()), this.b);
    }

    public final m a(String ua, String path, u1 body) {
        List listA;
        Intrinsics.checkNotNullParameter(ua, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            Json json = c;
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(u1.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            String strEncodeToString = json.encodeToString(kSerializerSerializer, body);
            q1 q1VarC = body.c();
            try {
                return new m(this.a.newCall(a(this, ua, path, (q1VarC == null || (listA = q1VarC.a()) == null) ? null : (String) CollectionsKt___CollectionsKt.firstOrNull(listA), null, 8).post(RequestBody.Companion.create(strEncodeToString, (MediaType) null)).build()), new com.vungle.ads.internal.network.converters.d(Reflection.typeOf(i0.class)));
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
        }
    }

    public final m a(String ua, String url, g requestType, Map map, RequestBody requestBody) {
        Request requestBuild;
        Intrinsics.checkNotNullParameter(ua, "ua");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Request.Builder builderA = a(this, ua, url, null, map, 4);
        int iOrdinal = requestType.ordinal();
        if (iOrdinal == 0) {
            requestBuild = builderA.get().build();
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            if (requestBody == null) {
                requestBody = RequestBody.Companion.create$default(RequestBody.Companion, new byte[0], (MediaType) null, 0, 0, 6, (Object) null);
            }
            requestBuild = builderA.post(requestBody).build();
        }
        return new m(this.a.newCall(requestBuild), this.b);
    }

    public final m a(String ua, String path, RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(ua, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        Request.Builder builderAddHeader = new Request.Builder().url(HttpUrl.Companion.get(path).newBuilder().build()).addHeader("User-Agent", c0.a(ua)).addHeader("Vungle-Version", "7.1.0").addHeader("Content-Type", CommonGatewayClient.HEADER_PROTOBUF);
        String strB = f0.b();
        if (strB != null) {
            builderAddHeader.addHeader("X-Vungle-App-Id", c0.a(strB));
        }
        String strC = f0.c();
        if (strC != null) {
            builderAddHeader.addHeader("X-VUNGLE-APP-VERSION", c0.a(strC));
        }
        return new m(this.a.newCall(builderAddHeader.post(requestBody).build()), this.b);
    }

    public final m a(RequestBody requestBody) {
        Intrinsics.checkNotNullParameter("https://events.ads.vungle.com/rtadebugging", "path");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        return new m(this.a.newCall(a(this, "debug", HttpUrl.Companion.get("https://events.ads.vungle.com/rtadebugging").newBuilder().build().toString(), null, null, 12).post(requestBody).build()), this.b);
    }
}
