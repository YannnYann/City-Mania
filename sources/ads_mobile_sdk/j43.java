package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.Base64;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.vungle.ads.internal.protos.Sdk;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class j43 {
    public final ex0 a;
    public final g30 b;
    public final ur3 c;
    public final at d;
    public final Optional e;
    public final j40 f;
    public final jb3 g;
    public final int h;
    public final Context i;
    public String j;
    public boolean k;
    public boolean l;
    public boolean m;
    public final LinkedHashSet n;
    public final LinkedHashSet o;
    public final LinkedHashMap p;
    public Map q;
    public final LinkedHashMap r;
    public final Gson s;
    public Signals t;
    public JsonObject u;
    public final JsonObject v;
    public final LinkedHashMap w;

    public j43(ex0 flags, g30 consentManager, ur3 traceLogger, at blobEncrypter, Optional optionalNativeRequest, j40 correlatorProvider, jb3 sdkCoreJavascriptEngine, int i, Context context) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(blobEncrypter, "blobEncrypter");
        Intrinsics.checkNotNullParameter(optionalNativeRequest, "optionalNativeRequest");
        Intrinsics.checkNotNullParameter(correlatorProvider, "correlatorProvider");
        Intrinsics.checkNotNullParameter(sdkCoreJavascriptEngine, "sdkCoreJavascriptEngine");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = flags;
        this.b = consentManager;
        this.c = traceLogger;
        this.d = blobEncrypter;
        this.e = optionalNativeRequest;
        this.f = correlatorProvider;
        this.g = sdkCoreJavascriptEngine;
        this.h = i;
        this.i = context;
        this.j = "https://googleads.g.doubleclick.net/mads/gma";
        this.n = new LinkedHashSet();
        this.o = new LinkedHashSet();
        this.p = new LinkedHashMap();
        this.r = new LinkedHashMap();
        this.s = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).create();
        this.v = new JsonObject();
        this.w = new LinkedHashMap();
    }

    public final String b() {
        Uri.Builder builder = new Uri.Builder();
        for (String str : this.n) {
            String str2 = (String) this.p.get(str);
            if (str2 != null) {
                c43.a(builder, str, str2);
            }
        }
        String query = builder.build().getQuery();
        if (query == null) {
            query = "";
        }
        v01 v01VarA = this.d.a(query);
        q01 q01Var = v01VarA instanceof q01 ? (q01) v01VarA : null;
        if (q01Var != null) {
            return (String) q01Var.b;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.g43
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.g43 r0 = (ads_mobile_sdk.g43) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.g43 r0 = new ads_mobile_sdk.g43
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.String r1 = r0.d
            com.google.gson.JsonObject r2 = r0.c
            com.google.gson.JsonObject r3 = r0.b
            com.google.gson.JsonObject r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5f
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            com.google.gson.JsonObject r2 = r6.v
            com.google.gson.JsonObject r7 = new com.google.gson.JsonObject
            r7.<init>()
            ads_mobile_sdk.g30 r4 = r6.b
            r0.a = r7
            r0.b = r7
            r0.c = r2
            java.lang.String r5 = "sdk_core"
            r0.d = r5
            r0.g = r3
            r4.getClass()
            java.lang.Object r0 = ads_mobile_sdk.g30.h(r4, r0)
            if (r0 != r1) goto L5b
            return r1
        L5b:
            r3 = r7
            r1 = r5
            r7 = r0
            r0 = r3
        L5f:
            java.util.Map r7 = (java.util.Map) r7
            if (r7 != 0) goto L67
            java.util.Map r7 = kotlin.collections.MapsKt__MapsKt.emptyMap()
        L67:
            java.util.Set r7 = r7.entrySet()
            java.util.Iterator r7 = r7.iterator()
        L6f:
            boolean r4 = r7.hasNext()
            if (r4 == 0) goto L8b
            java.lang.Object r4 = r7.next()
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4
            java.lang.Object r5 = r4.getKey()
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r3.addProperty(r5, r4)
            goto L6f
        L8b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r2.add(r1, r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j43.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void f() {
        try {
            Signals signals = this.t;
            Signals signals2 = null;
            if (signals == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals = null;
            }
            Bundle bundle = signals.googleExtrasBundle;
            if (bundle == null) {
                bundle = new Bundle();
            }
            Gson gson = this.s;
            Signals signals3 = this.t;
            if (signals3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals3 = null;
            }
            String str = signals3.inspectorExtras;
            if (str == null) {
                str = "{}";
            }
            JsonObject jsonObject = (JsonObject) gson.fromJson(str, JsonObject.class);
            JsonObject jsonObjectA = ds1.a(jsonObject, "global_extras", (JsonObject) null);
            if (jsonObjectA != null) {
                Map<String, JsonElement> mapAsMap = jsonObjectA.asMap();
                Intrinsics.checkNotNullExpressionValue(mapAsMap, "asMap(...)");
                for (Map.Entry<String, JsonElement> entry : mapAsMap.entrySet()) {
                    bundle.putString(entry.getKey(), entry.getValue().toString());
                }
            }
            ds1 ds1Var = ds1.a;
            Signals signals4 = this.t;
            if (signals4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals4 = null;
            }
            String str2 = signals4.adUnitId;
            if (str2 == null) {
                str2 = "";
            }
            JsonObject jsonObjectA2 = ds1.a(jsonObject, str2, (JsonObject) null);
            if (jsonObjectA2 != null) {
                Map<String, JsonElement> mapAsMap2 = jsonObjectA2.asMap();
                Intrinsics.checkNotNullExpressionValue(mapAsMap2, "asMap(...)");
                for (Map.Entry<String, JsonElement> entry2 : mapAsMap2.entrySet()) {
                    bundle.putString(entry2.getKey(), entry2.getValue().toString());
                }
            }
            Signals signals5 = this.t;
            if (signals5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
            } else {
                signals2 = signals5;
            }
            signals2.googleExtrasBundle = bundle;
        } catch (Throwable unused) {
        }
    }

    public final Pair a(String str, Set set) {
        Uri uriBuild;
        Uri.Builder builderBuildUpon = Uri.parse(this.j).buildUpon();
        String encodedQuery = null;
        Uri.Builder builder = set != null ? new Uri.Builder() : null;
        for (Map.Entry entry : this.p.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            if (this.o.isEmpty() || this.o.contains(str2)) {
                if (!this.n.contains(str2)) {
                    Uri.Builder builder2 = (builder == null || (set != null && set.contains(str2))) ? builderBuildUpon : builder;
                    Intrinsics.checkNotNull(builder2);
                    c43.a(builder2, str2, str3);
                } else if (this.n.contains(str2) && au.a() == bu.c) {
                    String str4 = str2 + "l";
                    String strValueOf = String.valueOf(str3.length());
                    Uri.Builder builder3 = (builder == null || (set != null && set.contains(str4))) ? builderBuildUpon : builder;
                    Intrinsics.checkNotNull(builder3);
                    c43.a(builder3, str4, strValueOf);
                }
            }
        }
        if (str != null && str.length() > 0) {
            String strT = this.a.t();
            Uri.Builder builder4 = (builder == null || (set != null && set.contains(strT))) ? builderBuildUpon : builder;
            Intrinsics.checkNotNull(builder4);
            c43.a(builder4, strT, str);
        }
        Uri uriBuild2 = builderBuildUpon.build();
        if (builder != null && (uriBuild = builder.build()) != null) {
            encodedQuery = uriBuild.getEncodedQuery();
        }
        return new Pair(uriBuild2, encodedQuery);
    }

    public final void d() {
        ne3 ne3Var = (ne3) this.w.get(dt.NON_PERSONALIZED_AD.e());
        boolean zV = ne3Var != null ? ne3Var.v() : false;
        ne3 ne3Var2 = (ne3) this.w.get(dt.TAG_FOR_UNDER_AGE_OF_CONSENT.e());
        boolean zV2 = ne3Var2 != null ? ne3Var2.v() : false;
        Signals signals = this.t;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        boolean z = signals.sharedPreferenceSignals.getInt("IABTCF_CmpSdkID", 0) == 300;
        int i = zV2 ? 2 : 0;
        if (zV) {
            i |= 8;
        }
        if (z) {
            i |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        }
        this.v.addProperty(dt.GDPR_USER_CONSENT_INFO.e(), "0.0.0.0.0.0.0." + i);
    }

    public final void e() {
        int iIntValue;
        int iMin;
        String strZ;
        Signals signals = this.t;
        Signals signals2 = null;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        Integer num = signals.numberOfAdsRequested;
        if (num == null || (iIntValue = num.intValue()) <= 1) {
            return;
        }
        Signals signals3 = this.t;
        if (signals3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals3 = null;
        }
        Boolean bool = signals3.isIconAdRequest;
        if (bool != null && bool.booleanValue()) {
            iMin = Math.min(iIntValue, this.a.e0());
        } else {
            iMin = Math.min(iIntValue, 5);
        }
        Signals signals4 = this.t;
        if (signals4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
        } else {
            signals2 = signals4;
        }
        String str = signals2.adUnitId;
        if (str == null) {
            str = "";
        }
        if (str.length() == 0) {
            return;
        }
        ne3 ne3Var = (ne3) this.w.get("sra_regex");
        if (ne3Var != null && (strZ = ne3Var.z()) != null) {
            m21 m21Var = o21.f;
            String strB = m21.b(strZ, str);
            if (strB != null) {
                str = strB;
            }
        }
        String[] strArr = new String[iMin];
        for (int i = 0; i < iMin; i++) {
            strArr[i] = "slotname=" + str;
        }
        this.v.addProperty(dt.SRA_URLS.e(), ArraysKt___ArraysKt.joinToString$default(strArr, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
    }

    public final void c() {
        this.v.addProperty("a_url", this.h + ".android." + this.i.getPackageName() + "." + this.a.v());
    }

    public final void g() {
        Integer num;
        gt gtVarW = xt.w();
        Intrinsics.checkNotNullExpressionValue(gtVarW, "newBuilder(...)");
        cq3 cq3VarA = bq3.a(gtVarW);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Signals signals = this.t;
        Signals signals2 = null;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        List<m83> listA = signals.a();
        if (listA == null) {
            listA = CollectionsKt__CollectionsKt.emptyList();
        }
        for (m83 m83Var : listA) {
            lo0 lo0VarB = cq3VarA.b();
            rt rtVarV = wt.v();
            Intrinsics.checkNotNullExpressionValue(rtVarV, "newBuilder(...)");
            eq3 eq3VarA = dq3.a(rtVarV);
            String str = m83Var.a;
            if (str == null) {
                str = "";
            }
            eq3VarA.a(str);
            linkedHashSet.add(eq3VarA.b());
            eq3VarA.b(c43.a(m83Var.c));
            eq3VarA.a(c43.a(m83Var.b));
            eq3VarA.a(1);
            String str2 = m83Var.d;
            if (str2 != null && !StringsKt__StringsKt.isBlank(str2)) {
                String str3 = m83Var.d;
                eq3VarA.b(str3 != null ? str3 : "");
            }
            Long l = m83Var.g;
            eq3VarA.a(l != null ? l.longValue() : 0L);
            if (m83Var.e != null || ((num = m83Var.f) != null && num.intValue() != 0)) {
                st stVarV = tt.v();
                Intrinsics.checkNotNullExpressionValue(stVarV, "newBuilder(...)");
                gq3 gq3VarA = fq3.a(stVarV);
                Integer num2 = m83Var.f;
                jt jtVar = jt.ADAPTER_CREATION_FAILURE;
                int number = jtVar.getNumber();
                if (num2 == null || num2.intValue() != number) {
                    jtVar = jt.SIGNAL_COLLECTION_FAILURE;
                    int number2 = jtVar.getNumber();
                    if (num2 == null || num2.intValue() != number2) {
                        jtVar = jt.SIGNAL_COLLECTION_TIMEOUT;
                        int number3 = jtVar.getNumber();
                        if (num2 == null || num2.intValue() != number3) {
                            jtVar = jt.UNKNOWN_ERROR;
                        }
                    }
                }
                gq3VarA.a(jtVar);
                String str4 = m83Var.e;
                if (str4 == null) {
                    str4 = "An undefined error occurred. Error code = " + m83Var.f;
                }
                gq3VarA.a(str4);
                eq3VarA.a(gq3VarA.a());
            }
            cq3VarA.a(lo0VarB, eq3VarA.a());
        }
        Signals signals3 = this.t;
        if (signals3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals3 = null;
        }
        for (Map.Entry<String, AdapterVersionData> entry : signals3.adapterVersionData.entrySet()) {
            String key = entry.getKey();
            AdapterVersionData value = entry.getValue();
            if (!linkedHashSet.contains(key)) {
                linkedHashSet.add(key);
                lo0 lo0VarB2 = cq3VarA.b();
                rt rtVarV2 = wt.v();
                Intrinsics.checkNotNullExpressionValue(rtVarV2, "newBuilder(...)");
                eq3 eq3VarA2 = dq3.a(rtVarV2);
                eq3VarA2.a(key);
                eq3VarA2.a(0);
                eq3VarA2.b(c43.a(value.sdkVersion));
                eq3VarA2.a(c43.a(value.adapterVersion));
                cq3VarA.a(lo0VarB2, eq3VarA2.a());
            }
        }
        Signals signals4 = this.t;
        if (signals4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals4 = null;
        }
        Bundle bundle = signals4.googleExtrasBundle;
        if (bundle == null) {
            bundle = new Bundle();
        }
        String string = bundle.getString("a3p_cs");
        Signals signals5 = this.t;
        if (signals5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals5 = null;
        }
        String str5 = signals5.packageName;
        if (string != null && string.length() != 0 && str5.length() != 0) {
            lo0 lo0VarB3 = cq3VarA.b();
            rt rtVarV3 = wt.v();
            Intrinsics.checkNotNullExpressionValue(rtVarV3, "newBuilder(...)");
            eq3 eq3VarA3 = dq3.a(rtVarV3);
            Signals signals6 = this.t;
            if (signals6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
            } else {
                signals2 = signals6;
            }
            eq3VarA3.a(signals2.packageName);
            eq3VarA3.b(string);
            eq3VarA3.a(1);
            cq3VarA.a(lo0VarB3, eq3VarA3.a());
        }
        xt xtVarA = cq3VarA.a();
        if (xtVarA.v().size() > 0) {
            byte[] bArrEncode = Base64.encode(xtVarA.c(), 10);
            Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
            a("a3p", StringsKt__StringsJVMKt.replace$default(new String(bArrEncode, Charsets.UTF_8), C3522b4.j.b, ".", false, 4, (Object) null), "third_party_params");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final ads_mobile_sdk.v01 b(ads_mobile_sdk.ej2 r4) {
        /*
            r3 = this;
            boolean r0 = r4.O()
            java.lang.String r1 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            if (r0 == 0) goto L43
            ads_mobile_sdk.zt1 r0 = r4.H()
            java.lang.String r2 = "getPattern(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            boolean r0 = r3.a(r0)
            if (r0 == 0) goto L18
            goto L43
        L18:
            ads_mobile_sdk.yh1$f r4 = r4.C()
            java.util.Iterator r4 = r4.iterator()
        L20:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L7e
            java.lang.Object r0 = r4.next()
            ads_mobile_sdk.ej2 r0 = (ads_mobile_sdk.ej2) r0
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            ads_mobile_sdk.v01 r0 = r3.b(r0)
            boolean r2 = r0 instanceof ads_mobile_sdk.i01
            if (r2 == 0) goto L3a
            ads_mobile_sdk.i01 r0 = (ads_mobile_sdk.i01) r0
            return r0
        L3a:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            ads_mobile_sdk.q01 r0 = (ads_mobile_sdk.q01) r0
            r0.getClass()
            goto L20
        L43:
            ads_mobile_sdk.v01 r0 = r3.a(r4)
            boolean r2 = r0 instanceof ads_mobile_sdk.i01
            if (r2 == 0) goto L4e
            ads_mobile_sdk.i01 r0 = (ads_mobile_sdk.i01) r0
            return r0
        L4e:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            ads_mobile_sdk.q01 r0 = (ads_mobile_sdk.q01) r0
            ads_mobile_sdk.yh1$f r4 = r4.y()
            java.util.Iterator r4 = r4.iterator()
        L5b:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L7e
            java.lang.Object r0 = r4.next()
            ads_mobile_sdk.ej2 r0 = (ads_mobile_sdk.ej2) r0
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            ads_mobile_sdk.v01 r0 = r3.b(r0)
            boolean r2 = r0 instanceof ads_mobile_sdk.i01
            if (r2 == 0) goto L75
            ads_mobile_sdk.i01 r0 = (ads_mobile_sdk.i01) r0
            return r0
        L75:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            ads_mobile_sdk.q01 r0 = (ads_mobile_sdk.q01) r0
            r0.getClass()
            goto L5b
        L7e:
            ads_mobile_sdk.q01 r4 = new ads_mobile_sdk.q01
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r4.<init>(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j43.b(ads_mobile_sdk.ej2):ads_mobile_sdk.v01");
    }

    public final Uri a() {
        Uri.Builder builderBuildUpon = Uri.parse(this.j).buildUpon();
        for (Map.Entry entry : this.p.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (this.o.isEmpty() || this.o.contains(str)) {
                Intrinsics.checkNotNull(builderBuildUpon);
                c43.a(builderBuildUpon, str, str2);
            }
        }
        return builderBuildUpon.build();
    }

    public final Object a(Signals signals, yp2 yp2Var, hj2 hj2Var, Map map, ContinuationImpl continuationImpl) {
        return a(this, signals, yp2Var, hj2Var, map, continuationImpl);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02f4 A[Catch: all -> 0x02a4, TryCatch #2 {all -> 0x02a4, blocks: (B:63:0x016e, B:64:0x0193, B:66:0x0199, B:68:0x01aa, B:74:0x01c6, B:75:0x01d1, B:76:0x01de, B:78:0x01e4, B:80:0x01fe, B:82:0x0206, B:83:0x0215, B:85:0x0219, B:87:0x0221, B:88:0x0225, B:90:0x0235, B:106:0x02f4, B:108:0x02fa, B:114:0x031d, B:116:0x0327, B:129:0x035a, B:118:0x0330, B:120:0x0334, B:126:0x034c, B:127:0x0351, B:128:0x0352, B:93:0x0241, B:97:0x0268, B:99:0x026e, B:102:0x02a7, B:104:0x02d5), top: B:171:0x016e }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0352 A[Catch: all -> 0x02a4, TryCatch #2 {all -> 0x02a4, blocks: (B:63:0x016e, B:64:0x0193, B:66:0x0199, B:68:0x01aa, B:74:0x01c6, B:75:0x01d1, B:76:0x01de, B:78:0x01e4, B:80:0x01fe, B:82:0x0206, B:83:0x0215, B:85:0x0219, B:87:0x0221, B:88:0x0225, B:90:0x0235, B:106:0x02f4, B:108:0x02fa, B:114:0x031d, B:116:0x0327, B:129:0x035a, B:118:0x0330, B:120:0x0334, B:126:0x034c, B:127:0x0351, B:128:0x0352, B:93:0x0241, B:97:0x0268, B:99:0x026e, B:102:0x02a7, B:104:0x02d5), top: B:171:0x016e }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0392 A[Catch: all -> 0x004c, TRY_LEAVE, TryCatch #5 {all -> 0x004c, blocks: (B:16:0x0047, B:133:0x038c, B:134:0x038e, B:136:0x0392, B:23:0x0061, B:124:0x0349, B:26:0x0070, B:112:0x0319, B:29:0x007f, B:72:0x01c2), top: B:176:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03a7 A[Catch: all -> 0x03b3, TryCatch #1 {all -> 0x03b3, blocks: (B:141:0x03a0, B:143:0x03a7, B:145:0x03ab, B:147:0x03af, B:150:0x03b6, B:152:0x03ba, B:154:0x03be, B:156:0x03c2, B:157:0x03c3, B:158:0x03c8, B:159:0x03c9, B:160:0x03d0, B:161:0x03d1, B:162:0x03d8, B:163:0x03d9), top: B:170:0x03a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03d9 A[Catch: all -> 0x03b3, TRY_LEAVE, TryCatch #1 {all -> 0x03b3, blocks: (B:141:0x03a0, B:143:0x03a7, B:145:0x03ab, B:147:0x03af, B:150:0x03b6, B:152:0x03ba, B:154:0x03be, B:156:0x03c2, B:157:0x03c3, B:158:0x03c8, B:159:0x03c9, B:160:0x03d0, B:161:0x03d1, B:162:0x03d8, B:163:0x03d9), top: B:170:0x03a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.google.gson.Gson] */
    /* JADX WARN: Type inference failed for: r8v22, types: [com.google.gson.Gson] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.j43 r26, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals r27, ads_mobile_sdk.yp2 r28, ads_mobile_sdk.hj2 r29, java.util.Map r30, kotlin.coroutines.Continuation r31) {
        /*
            Method dump skipped, instruction units count: 992
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j43.a(ads_mobile_sdk.j43, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, ads_mobile_sdk.yp2, ads_mobile_sdk.hj2, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 921
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j43.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(yp2 yp2Var) {
        for (vp2 vp2Var : yp2Var.x()) {
            if (vp2Var.x()) {
                zt1 zt1VarW = vp2Var.w();
                Intrinsics.checkNotNullExpressionValue(zt1VarW, "getPattern(...)");
                if (a(zt1VarW)) {
                }
            }
            Map mapV = vp2Var.v();
            Intrinsics.checkNotNullExpressionValue(mapV, "getIncludeSignalsMap(...)");
            for (Map.Entry entry : mapV.entrySet()) {
                String str = (String) entry.getKey();
                ne3 ne3Var = (ne3) entry.getValue();
                LinkedHashMap linkedHashMap = this.w;
                Intrinsics.checkNotNull(str);
                Intrinsics.checkNotNull(ne3Var);
                linkedHashMap.put(str, ne3Var);
            }
        }
    }

    public final String a(String str, String str2) {
        Iterable iterable;
        String strJoinToString$default;
        Signals signals = this.t;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        Bundle bundle = signals.googleExtrasBundle;
        if (bundle == null || (stringArrayList = bundle.getIntegerArrayList(str)) == null) {
            Signals signals2 = this.t;
            if (signals2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals2 = null;
            }
            Bundle bundle2 = signals2.googleExtrasBundle;
            if (bundle2 != null) {
                Iterable stringArrayList = bundle2.getStringArrayList(str);
                iterable = stringArrayList;
            } else {
                iterable = null;
            }
        } else {
            iterable = stringArrayList;
        }
        if (iterable != null && (strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(iterable, "|", null, null, 0, null, null, 62, null)) != null) {
            String str3 = str2 + C3522b4.j.b + strJoinToString$default;
            if (new Regex(this.a.N0()).matches(str3)) {
                return str3;
            }
        }
        return null;
    }

    public final void a(ej2 ej2Var, ia1 ia1Var) {
        String strD;
        JsonObject jsonObject = this.u;
        Unit unit = null;
        if (jsonObject == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signalJson");
            jsonObject = null;
        }
        yh1.f fVarG = ia1Var.G();
        Intrinsics.checkNotNullExpressionValue(fVarG, "getPathList(...)");
        JsonElement jsonElementB = c43.b(jsonObject, fVarG);
        if (jsonElementB == null) {
            return;
        }
        int iOrdinal = ia1Var.I().ordinal();
        if (iOrdinal == 0) {
            strD = null;
        } else if (iOrdinal == 1) {
            strD = c43.d(jsonElementB, ia1Var);
        } else if (iOrdinal == 2) {
            strD = c43.a(jsonElementB, ia1Var);
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new NoWhenBranchMatchedException();
            }
            strD = null;
        } else {
            strD = c43.b(jsonElementB, ia1Var);
        }
        if (strD == null) {
            return;
        }
        if (ia1Var.L()) {
            String strX = ia1Var.x();
            Intrinsics.checkNotNullExpressionValue(strX, "getCaptureGroup(...)");
            if (strX.length() > 0) {
                m21 m21Var = o21.f;
                String strX2 = ia1Var.x();
                Intrinsics.checkNotNullExpressionValue(strX2, "getCaptureGroup(...)");
                String strB = m21.b(strX2, strD);
                if (strB != null) {
                    unit = Unit.INSTANCE;
                    strD = strB;
                }
                if (unit == null) {
                    return;
                }
            }
        }
        if (!ia1Var.M() || strD.length() <= ia1Var.D()) {
            String strJ = ia1Var.J();
            if (strJ == null || StringsKt__StringsKt.isBlank(strJ)) {
                yh1.f fVarG2 = ia1Var.G();
                Intrinsics.checkNotNullExpressionValue(fVarG2, "getPathList(...)");
                strJ = (String) CollectionsKt___CollectionsKt.lastOrNull(fVarG2);
            }
            if (strJ != null && !StringsKt__StringsKt.isBlank(strJ)) {
                String strI = ej2Var.I();
                Intrinsics.checkNotNullExpressionValue(strI, "getRuleLabel(...)");
                a(strJ, strD, strI);
                return;
            }
            String str = "Rule " + ej2Var.I() + " attempted to include a signal with no URL key or path.";
            ((as3) this.c).a(str, (Throwable) new Exception(str));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0033 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(int r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r0 = r6.j
            int r0 = r0.length()
            r1 = 1
            int r0 = r0 + r1
            if (r0 < r7) goto Lb
            return r1
        Lb:
            if (r8 == 0) goto L29
            int r2 = r8.length()
            if (r2 != 0) goto L14
            goto L29
        L14:
            ads_mobile_sdk.ex0 r2 = r6.a
            java.lang.String r2 = r2.t()
            int r2 = r2.length()
            int r8 = r8.length()
            int r8 = r8 + r2
            int r8 = r8 + 2
            int r0 = r0 + r8
            if (r0 < r7) goto L29
            return r1
        L29:
            java.util.LinkedHashMap r8 = r6.p
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
        L33:
            boolean r2 = r8.hasNext()
            if (r2 == 0) goto L92
            java.lang.Object r2 = r8.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r2 = r2.getValue()
            java.lang.String r2 = (java.lang.String) r2
            java.util.LinkedHashSet r4 = r6.o
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L5b
            java.util.LinkedHashSet r4 = r6.o
            boolean r4 = r4.contains(r3)
            if (r4 == 0) goto L33
        L5b:
            java.util.LinkedHashSet r4 = r6.n
            boolean r4 = r4.contains(r3)
            if (r4 != 0) goto L77
            int r4 = r2.length()
            if (r4 <= 0) goto L8f
            int r3 = r3.length()
            int r2 = r2.length()
        L71:
            int r2 = r2 + r3
            int r2 = r2 + 2
            int r2 = r2 + r0
            r0 = r2
            goto L8f
        L77:
            ads_mobile_sdk.bu r4 = ads_mobile_sdk.au.a
            ads_mobile_sdk.bu r5 = ads_mobile_sdk.bu.c
            if (r4 != r5) goto L8f
            int r3 = r3.length()
            int r3 = r3 + r1
            int r2 = r2.length()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            goto L71
        L8f:
            if (r0 < r7) goto L33
            return r1
        L92:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j43.a(int, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0077 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0151 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.v01 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 376
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j43.a(ads_mobile_sdk.v01, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean a(zt1 zt1Var) {
        if (zt1Var.v().size() > 0) {
            yh1.f<zt1> fVarV = zt1Var.v();
            Intrinsics.checkNotNullExpressionValue(fVarV, "getAndNodesList(...)");
            if (fVarV != null && fVarV.isEmpty()) {
                return true;
            }
            for (zt1 zt1Var2 : fVarV) {
                Intrinsics.checkNotNull(zt1Var2);
                if (!a(zt1Var2)) {
                    return false;
                }
            }
            return true;
        }
        if (zt1Var.z().size() > 0) {
            yh1.f<zt1> fVarZ = zt1Var.z();
            Intrinsics.checkNotNullExpressionValue(fVarZ, "getOrNodesList(...)");
            if (fVarZ != null && fVarZ.isEmpty()) {
                return false;
            }
            for (zt1 zt1Var3 : fVarZ) {
                Intrinsics.checkNotNull(zt1Var3);
                if (a(zt1Var3)) {
                    return true;
                }
            }
            return false;
        }
        if (zt1Var.B()) {
            zt1 zt1VarY = zt1Var.y();
            Intrinsics.checkNotNullExpressionValue(zt1VarY, "getNotNode(...)");
            return !a(zt1VarY);
        }
        if (!zt1Var.A()) {
            return true;
        }
        JsonObject jsonObject = this.u;
        if (jsonObject == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signalJson");
            jsonObject = null;
        }
        qu1 qu1VarX = zt1Var.x();
        Intrinsics.checkNotNullExpressionValue(qu1VarX, "getMatchNode(...)");
        return c43.a(jsonObject, qu1VarX);
    }

    public final v01 a(ej2 ej2Var) {
        kk1 kk1Var;
        Map mapF = ej2Var.F();
        Intrinsics.checkNotNullExpressionValue(mapF, "getIncludeMap(...)");
        for (Map.Entry entry : mapF.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            Intrinsics.checkNotNull(str);
            Intrinsics.checkNotNull(str2);
            String strI = ej2Var.I();
            Intrinsics.checkNotNullExpressionValue(strI, "getRuleLabel(...)");
            a(str, str2, strI);
        }
        for (ia1 ia1Var : ej2Var.G()) {
            Intrinsics.checkNotNull(ia1Var);
            a(ej2Var, ia1Var);
        }
        for (String str3 : ej2Var.A()) {
            LinkedHashSet linkedHashSet = this.n;
            Intrinsics.checkNotNull(str3);
            linkedHashSet.add(str3);
        }
        for (String str4 : ej2Var.B()) {
            Splitter splitter = f01.a;
            Intrinsics.checkNotNull(str4);
            f01.b(str4, null);
        }
        for (String str5 : ej2Var.x()) {
            LinkedHashSet linkedHashSet2 = this.o;
            Intrinsics.checkNotNull(str5);
            linkedHashSet2.add(str5);
        }
        if (ej2Var.K()) {
            this.l = ej2Var.w();
        }
        if (ej2Var.J()) {
            this.m = ej2Var.v();
        }
        if (ej2Var.N()) {
            if (ej2Var.M()) {
                switch (ej2Var.D()) {
                    case 0:
                        kk1Var = kk1.a;
                        break;
                    case 1:
                        kk1Var = kk1.b;
                        break;
                    case 2:
                        kk1Var = kk1.e;
                        break;
                    case 3:
                        kk1Var = kk1.c;
                        break;
                    case 4:
                        kk1Var = kk1.j;
                        break;
                    case 5:
                        kk1Var = kk1.k;
                        break;
                    case 6:
                    case 7:
                    case 9:
                    default:
                        kk1Var = kk1.a;
                        break;
                    case 8:
                        kk1Var = kk1.d;
                        break;
                    case 10:
                        kk1Var = kk1.i;
                        break;
                    case 11:
                        kk1Var = kk1.h;
                        break;
                    case 12:
                        kk1Var = kk1.f;
                        break;
                }
            } else {
                kk1Var = kk1.a;
            }
            String strE = ej2Var.E();
            Intrinsics.checkNotNullExpressionValue(strE, "getErrorString(...)");
            return new m01(strE, kk1Var);
        }
        if (ej2Var.L()) {
            if (this.k) {
                String str6 = "Rule " + ej2Var.I() + " attempted to modify the base URL after it has been set.";
                ((as3) this.c).a(str6, (Throwable) new Exception(str6));
            } else {
                String strZ = ej2Var.z();
                Intrinsics.checkNotNullExpressionValue(strZ, "getBaseUrl(...)");
                this.j = strZ;
                this.k = true;
            }
        }
        return new q01(Unit.INSTANCE);
    }

    public final void a(String str, String str2, String str3) {
        if (StringsKt__StringsKt.isBlank(str)) {
            String str4 = "Rule " + str3 + " attempted to set a blank URL parameter.";
            ((as3) this.c).a(str4, (Throwable) new Exception(str4));
            return;
        }
        if (this.p.containsKey(str)) {
            String str5 = "URL parameter " + str + " was attempted to be overwritten by rule " + str3 + ".";
            ((as3) this.c).a(str5, (Throwable) new Exception(str5));
            return;
        }
        Map map = this.q;
        Map map2 = null;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("concatenatedSignalsRules");
            map = null;
        }
        if (map.containsKey(str)) {
            Map map3 = this.q;
            if (map3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("concatenatedSignalsRules");
            } else {
                map2 = map3;
            }
            Object obj = map2.get(str);
            Intrinsics.checkNotNull(obj);
            String str6 = (String) obj;
            StringBuilder sb = (StringBuilder) this.r.get(str);
            if (sb == null) {
                sb = new StringBuilder();
            }
            if (sb.length() > 0) {
                sb.append(str6);
            }
            sb.append(str2);
            this.r.put(str, sb);
            return;
        }
        this.p.put(str, str2);
    }
}
