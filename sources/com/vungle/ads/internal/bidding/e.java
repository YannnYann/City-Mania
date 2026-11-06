package com.vungle.ads.internal.bidding;

import android.content.Context;
import com.iab.omid.library.vungle.internal.l;
import com.vungle.ads.GzipEncodeError;
import com.vungle.ads.JsonEncodeError;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.model.m3;
import com.vungle.ads.internal.model.p3;
import com.vungle.ads.internal.model.u1;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.f0;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.r;
import com.vungle.ads.internal.util.t;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public final Context a;
    public j2 b;
    public int c;
    public final Json d;
    public long e;

    public e(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = new j2(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUESTED);
        this.d = JsonKt.Json$default(null, d.a, 1, null);
        com.vungle.ads.internal.util.d dVar = com.vungle.ads.internal.util.d.f;
        com.vungle.ads.internal.util.a.a(new a(this));
    }

    public final String a() {
        VungleApiClient vungleApiClient = (VungleApiClient) LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new c(this.a)).getValue();
        ConfigManager.INSTANCE.getClass();
        u1 u1VarA = vungleApiClient.a(!ConfigManager.t(), ConfigManager.d());
        p3 p3Var = new p3(u1VarA.a(), u1VarA.d(), u1VarA.b(), new m3(f0.d()), this.c);
        Json json = this.d;
        KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(p3.class));
        Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return json.encodeToString(kSerializerSerializer, p3Var);
    }

    public final b b() throws Throwable {
        this.c++;
        AnalyticsClient.a(AnalyticsClient.INSTANCE, this.b, (t) null, 6);
        try {
            String strA = a();
            boolean z = v.a;
            u.a("BidTokenEncoder", "BidToken: " + strA);
            try {
                String str = "6:" + r.a(strA);
                u.a("BidTokenEncoder", "After conversion: " + str);
                return new b(str, "");
            } catch (Throwable th) {
                StringBuilder sbA = l.a("Fail to gzip token data. ");
                sbA.append(th.getLocalizedMessage());
                String string = sbA.toString();
                new GzipEncodeError(string).logErrorNoReturnValue$vungle_ads_release();
                return new b("", string);
            }
        } catch (Throwable th2) {
            StringBuilder sbA2 = l.a("Failed to encode TokenParameters. ");
            sbA2.append(th2.getLocalizedMessage());
            String string2 = sbA2.toString();
            new JsonEncodeError(string2).logErrorNoReturnValue$vungle_ads_release();
            return new b("", string2);
        }
    }
}
