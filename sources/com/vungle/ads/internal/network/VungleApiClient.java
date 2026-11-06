package com.vungle.ads.internal.network;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.URLUtil;
import androidx.annotation.Keep;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleAds;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.k2;
import com.vungle.ads.internal.model.a1;
import com.vungle.ads.internal.model.b3;
import com.vungle.ads.internal.model.c3;
import com.vungle.ads.internal.model.d1;
import com.vungle.ads.internal.model.d3;
import com.vungle.ads.internal.model.h1;
import com.vungle.ads.internal.model.j0;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.model.k1;
import com.vungle.ads.internal.model.m0;
import com.vungle.ads.internal.model.n1;
import com.vungle.ads.internal.model.q1;
import com.vungle.ads.internal.model.t1;
import com.vungle.ads.internal.model.u0;
import com.vungle.ads.internal.model.u1;
import com.vungle.ads.internal.model.x0;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.privacy.COPPA;
import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;

/* JADX INFO: loaded from: classes4.dex */
public final class VungleApiClient {

    @Keep
    private static final String BASE_URL = "https://config.ads.vungle.com/";

    @Keep
    private static final boolean interceptorEnabled = false;
    public final Context a;
    public final com.vungle.ads.internal.platform.f b;
    public final FilePreferences c;
    public e0 d;
    public e0 e;
    public c3 f;
    public j0 g;
    public m0 h;
    public String i;
    public Boolean j;
    public final Lazy k;
    public ConcurrentHashMap l;
    public Interceptor m;

    @Keep
    private static final Set<Interceptor> networkInterceptors = new HashSet();

    @Keep
    private static final Set<Interceptor> logInterceptors = new HashSet();
    public static final Json n = JsonKt.Json$default(null, s.a, 1, null);

    public VungleApiClient(Context applicationContext, com.vungle.ads.internal.platform.f platform, FilePreferences filePreferences) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(filePreferences, "filePreferences");
        this.a = applicationContext;
        this.b = platform;
        this.c = filePreferences;
        this.i = System.getProperty("http.agent");
        this.k = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new a0(applicationContext));
        this.l = new ConcurrentHashMap();
        this.m = new Interceptor() { // from class: com.vungle.ads.internal.network.VungleApiClient$$ExternalSyntheticLambda0
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                return VungleApiClient.a(this.f$0, chain);
            }
        };
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder builderProxySelector = builder.readTimeout(60L, timeUnit).connectTimeout(60L, timeUnit).addInterceptor(this.m).proxySelector(new v());
        if (interceptorEnabled) {
            Iterator<Interceptor> it = logInterceptors.iterator();
            while (it.hasNext()) {
                builderProxySelector.addInterceptor(it.next());
            }
            Iterator<Interceptor> it2 = networkInterceptors.iterator();
            while (it2.hasNext()) {
                builderProxySelector.addNetworkInterceptor(it2.next());
            }
        }
        OkHttpClient okHttpClientBuild = builderProxySelector.build();
        OkHttpClient okHttpClientBuild2 = builderProxySelector.addInterceptor(new u()).build();
        this.e = new e0(okHttpClientBuild);
        this.d = new e0(okHttpClientBuild2);
    }

    public static final Response a(VungleApiClient this$0, Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        try {
            try {
                Response responseProceed = chain.proceed(request);
                String str = responseProceed.headers().get(CommonGatewayClient.HEADER_RETRY_AFTER);
                if (str == null || str.length() == 0) {
                    return responseProceed;
                }
                try {
                    long j = Long.parseLong(str);
                    if (j <= 0) {
                        return responseProceed;
                    }
                    String strEncodedPath = request.url().encodedPath();
                    long jCurrentTimeMillis = (j * ((long) 1000)) + System.currentTimeMillis();
                    if (!StringsKt__StringsJVMKt.endsWith$default(strEncodedPath, "ads", false, 2, null)) {
                        return responseProceed;
                    }
                    RequestBody requestBodyBody = request.body();
                    this$0.getClass();
                    String strA = a(requestBodyBody);
                    if (strA.length() <= 0) {
                        return responseProceed;
                    }
                    this$0.l.put(strA, Long.valueOf(jCurrentTimeMillis));
                    return responseProceed;
                } catch (Exception unused) {
                    boolean z = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.a("VungleApiClient", "Retry-After value is not an valid value");
                    return responseProceed;
                }
            } catch (OutOfMemoryError unused2) {
                boolean z2 = com.vungle.ads.internal.util.v.a;
                StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("OOM for ");
                sbA.append(request.url());
                com.vungle.ads.internal.util.u.b("VungleApiClient", sbA.toString());
                this$0.getClass();
                return new Response.Builder().request(request).code(500).protocol(Protocol.HTTP_1_1).message("OOM").body(ResponseBody.Companion.create(new byte[0], (MediaType) null)).build();
            }
        } catch (Exception e) {
            boolean z3 = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("Exception: ");
            sbA2.append(e.getMessage());
            sbA2.append(" for ");
            sbA2.append(request.url());
            com.vungle.ads.internal.util.u.b("VungleApiClient", sbA2.toString());
            this$0.getClass();
            return new Response.Builder().request(request).code(500).protocol(Protocol.HTTP_1_1).message("Server is busy").body(ResponseBody.Companion.create("{\"Error\":\"Server is busy\"}", MediaType.Companion.parse(G5.M))).build();
        }
    }

    public final long b(String placementID) {
        Intrinsics.checkNotNullParameter(placementID, "placementID");
        Long l = (Long) this.l.get(placementID);
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    public final synchronized void c(String appId) {
        PackageInfo packageInfo;
        try {
            Intrinsics.checkNotNullParameter(appId, "appId");
            f0.a(appId);
            String str = "1.0";
            try {
                if (Build.VERSION.SDK_INT >= 33) {
                    packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
                    Intrinsics.checkNotNullExpressionValue(packageInfo, "{\n                    ap…      )\n                }");
                } else {
                    packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0);
                    Intrinsics.checkNotNullExpressionValue(packageInfo, "{\n                    ap…      )\n                }");
                }
                String str2 = packageInfo.versionName;
                Intrinsics.checkNotNullExpressionValue(str2, "packageInfo.versionName");
                str = str2;
            } catch (Exception unused) {
            }
            f0.b(str);
            this.f = a(this.a);
            String packageName = this.a.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "applicationContext.packageName");
            this.h = new m0(packageName, str, appId);
            this.j = d();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void d(String adMarkup) {
        Intrinsics.checkNotNullParameter(adMarkup, "adMarkup");
        Intrinsics.checkNotNullParameter("https://events.ads.vungle.com/rtadebugging", G5.r);
        this.e.a(RequestBody.Companion.create(adMarkup, MediaType.Companion.parse(G5.M))).a(new z());
    }

    public final n1 b(boolean z) {
        String strA;
        String configExtension = ConfigManager.INSTANCE.getConfigExtension();
        if (configExtension != null && configExtension.length() == 0) {
            configExtension = this.c.getString("config_extension");
        }
        if (z) {
            try {
                strA = ((com.vungle.ads.internal.signals.j) this.k.getValue()).a();
            } catch (Exception e) {
                boolean z2 = com.vungle.ads.internal.util.v.a;
                StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Couldn't convert signals for sending. Error: ");
                sbA.append(e.getMessage());
                com.vungle.ads.internal.util.u.b("VungleApiClient", sbA.toString());
                strA = null;
            }
        } else {
            strA = null;
        }
        if ((configExtension == null || configExtension.length() == 0) && (strA == null || strA.length() == 0)) {
            return null;
        }
        ConfigManager.INSTANCE.getClass();
        return new n1(configExtension, strA, Long.valueOf(ConfigManager.b()));
    }

    public final Boolean d() {
        Boolean boolValueOf;
        boolean z;
        try {
            try {
                GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
                Intrinsics.checkNotNullExpressionValue(googleApiAvailabilityLight, "getInstance()");
                z = googleApiAvailabilityLight.isGooglePlayServicesAvailable(this.a) == 0;
                boolValueOf = Boolean.valueOf(z);
            } catch (NoClassDefFoundError unused) {
                boolean z2 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.c("VungleApiClient", "Play services Not available");
                boolValueOf = Boolean.FALSE;
                try {
                    this.c.a(false, "isPlaySvcAvailable").b();
                } catch (Exception unused2) {
                    boolean z3 = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.c("VungleApiClient", "Failure to write GPS availability to DB");
                }
                return boolValueOf;
            }
            try {
                this.c.a(z, "isPlaySvcAvailable").b();
                return boolValueOf;
            } catch (Exception unused3) {
                boolean z4 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.c("VungleApiClient", "Unexpected exception from Play services lib.");
                return boolValueOf;
            }
        } catch (Exception unused4) {
            boolValueOf = null;
        }
    }

    public static t1 c(boolean z) {
        String value;
        t1 t1Var = new t1(null, null, null, null, null);
        PrivacyManager.INSTANCE.getClass();
        String strB = PrivacyManager.b();
        String str = PrivacyManager.e;
        if (str == null) {
            str = "no_interaction";
        }
        String str2 = str;
        String str3 = PrivacyManager.f;
        String str4 = str3 == null ? "" : str3;
        Long l = PrivacyManager.g;
        t1Var.a = new h1(l != null ? l.longValue() : 0L, strB, str2, str4);
        PrivacyConsent privacyConsent = PrivacyManager.h;
        if (privacyConsent == null || (value = privacyConsent.getValue()) == null) {
            value = PrivacyConsent.UNKNOWN.getValue();
        }
        t1Var.b = new x0(value);
        if (PrivacyManager.c() != COPPA.COPPA_NOTSET) {
            t1Var.c = new a1(PrivacyManager.c().getValue());
        }
        if (PrivacyManager.f()) {
            SharedPreferences sharedPreferences = PrivacyManager.j;
            String string = sharedPreferences != null ? sharedPreferences.getString(AndroidTcfDataSource.TCF_TCSTRING_KEY, "") : null;
            t1Var.e = new k1(string != null ? string : "");
        }
        if (z) {
            t1Var.d = VungleAds.firstPartyData;
        }
        return t1Var;
    }

    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public final java.lang.String c() {
        /*
            r3 = this;
            android.content.Context r0 = r3.a
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            int r0 = androidx.core.content.ContextCompat.checkSelfPermission(r0, r1)
            if (r0 != 0) goto L5b
            android.content.Context r0 = r3.a
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            java.lang.String r1 = "null cannot be cast to non-null type android.net.ConnectivityManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            java.lang.String r1 = "unknown"
            if (r0 == 0) goto L5a
            int r0 = r0.getSubtype()
            r2 = 1
            if (r0 == r2) goto L57
            r2 = 2
            if (r0 == r2) goto L54
            r2 = 20
            if (r0 == r2) goto L51
            switch(r0) {
                case 4: goto L4e;
                case 5: goto L4b;
                case 6: goto L48;
                case 7: goto L45;
                case 8: goto L42;
                case 9: goto L3f;
                default: goto L32;
            }
        L32:
            switch(r0) {
                case 12: goto L3c;
                case 13: goto L39;
                case 14: goto L36;
                default: goto L35;
            }
        L35:
            return r1
        L36:
            java.lang.String r0 = "hrpd"
            return r0
        L39:
            java.lang.String r0 = "lte"
            return r0
        L3c:
            java.lang.String r0 = "cdma_evdo_b"
            return r0
        L3f:
            java.lang.String r0 = "hsupa"
            return r0
        L42:
            java.lang.String r0 = "hsdpa"
            return r0
        L45:
            java.lang.String r0 = "cdma_1xrtt"
            return r0
        L48:
            java.lang.String r0 = "cdma_evdo_a"
            return r0
        L4b:
            java.lang.String r0 = "cdma_evdo_0"
            return r0
        L4e:
            java.lang.String r0 = "wcdma"
            return r0
        L51:
            java.lang.String r0 = "5g"
            return r0
        L54:
            java.lang.String r0 = "edge"
            return r0
        L57:
            java.lang.String r0 = "gprs"
            return r0
        L5a:
            return r1
        L5b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.VungleApiClient.c():java.lang.String");
    }

    public static String a(RequestBody requestBody) {
        String utf8;
        List listA;
        Buffer buffer;
        try {
            Json json = n;
            try {
                buffer = new Buffer();
            } catch (Exception unused) {
            }
            if (requestBody != null) {
                requestBody.writeTo(buffer);
                utf8 = buffer.readUtf8();
            } else {
                utf8 = "";
            }
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(u1.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            q1 q1VarC = ((u1) json.decodeFromString(kSerializerSerializer, utf8)).c();
            if (q1VarC == null || (listA = q1VarC.a()) == null) {
                return "";
            }
            String str = (String) listA.get(0);
            return str == null ? "" : str;
        } catch (Exception unused2) {
            return "";
        }
    }

    public final boolean a(String placementID) {
        Intrinsics.checkNotNullParameter(placementID, "placementID");
        Long l = (Long) this.l.get(placementID);
        if ((l != null ? l.longValue() : 0L) > System.currentTimeMillis()) {
            return true;
        }
        this.l.remove(placementID);
        return false;
    }

    public final m a() {
        m0 m0Var = this.h;
        if (m0Var == null) {
            return null;
        }
        u1 u1Var = new u1(a(true), m0Var, c(false));
        n1 n1VarB = b(false);
        if (n1VarB != null) {
            u1Var.a(n1VarB);
        }
        com.vungle.ads.internal.util.n nVar = com.vungle.ads.internal.util.o.a;
        String str = BASE_URL;
        if (!com.vungle.ads.internal.util.o.a(str)) {
            str = "https://config.ads.vungle.com/";
        }
        if (!StringsKt__StringsJVMKt.endsWith$default(str, "/", false, 2, null)) {
            str = str + '/';
        }
        return this.e.b(f0.d(), str + "config", u1Var);
    }

    public final m a(String placement, VungleAdSize vungleAdSize, String str) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        String adsEndpoint = ConfigManager.INSTANCE.getAdsEndpoint();
        u1 u1VarA = a(!ConfigManager.t(), ConfigManager.d());
        q1 q1Var = new q1(CollectionsKt__CollectionsJVMKt.listOf(placement), str, (Long) null, (String) null, (String) null, (String) null, (d1) null, 250);
        if (vungleAdSize != null) {
            q1Var.a(new u0(vungleAdSize.getWidth(), vungleAdSize.getHeight()));
        }
        u1VarA.a(q1Var);
        return this.d.a(f0.d(), adsEndpoint, u1VarA);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.vungle.ads.internal.network.m a(java.lang.String r17, com.vungle.ads.VungleAdSize r18, com.vungle.ads.VungleCSBData r19, java.lang.String r20) {
        /*
            r16 = this;
            r0 = r16
            java.lang.String r1 = "placement"
            r2 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            com.vungle.ads.internal.ConfigManager r1 = com.vungle.ads.internal.ConfigManager.INSTANCE
            r1.getClass()
            java.lang.String r1 = com.vungle.ads.internal.ConfigManager.e()
            boolean r3 = com.vungle.ads.internal.ConfigManager.t()
            r3 = r3 ^ 1
            boolean r4 = com.vungle.ads.internal.ConfigManager.d()
            com.vungle.ads.internal.model.u1 r3 = r0.a(r3, r4)
            r4 = 0
            if (r19 == 0) goto L8c
            java.util.Map r5 = r19.getExtras()
            if (r5 == 0) goto L65
            boolean r6 = r5.isEmpty()
            if (r6 != 0) goto L30
            goto L31
        L30:
            r5 = r4
        L31:
            if (r5 == 0) goto L65
            kotlinx.serialization.json.JsonObjectBuilder r6 = new kotlinx.serialization.json.JsonObjectBuilder
            r6.<init>()
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L40:
            boolean r7 = r5.hasNext()
            if (r7 == 0) goto L60
            java.lang.Object r7 = r5.next()
            java.util.Map$Entry r7 = (java.util.Map.Entry) r7
            java.lang.Object r8 = r7.getKey()
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r7 = r7.getValue()
            java.lang.String r7 = (java.lang.String) r7
            kotlinx.serialization.json.JsonPrimitive r7 = kotlinx.serialization.json.JsonElementKt.JsonPrimitive(r7)
            r6.put(r8, r7)
            goto L40
        L60:
            kotlinx.serialization.json.JsonObject r5 = r6.build()
            goto L66
        L65:
            r5 = r4
        L66:
            com.vungle.ads.internal.model.d1 r6 = new com.vungle.ads.internal.model.d1
            double r7 = r19.getBidFloor()
            int r9 = r19.getPhase()
            boolean r10 = r19.isVXWinner()
            java.lang.String r11 = r19.getAuctionId()
            java.lang.String r12 = r19.getCreativeId()
            java.lang.String r13 = r19.getAdUnitId()
            if (r5 == 0) goto L86
            java.lang.String r4 = r5.toString()
        L86:
            r14 = r4
            r6.<init>(r7, r9, r10, r11, r12, r13, r14)
            r14 = r6
            goto L8d
        L8c:
            r14 = r4
        L8d:
            java.util.List r8 = kotlin.collections.CollectionsKt__CollectionsJVMKt.listOf(r2)
            com.vungle.ads.internal.model.q1 r7 = new com.vungle.ads.internal.model.q1
            r13 = 0
            r15 = 122(0x7a, float:1.71E-43)
            r10 = 0
            r11 = 0
            r12 = 0
            r9 = r20
            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15)
            if (r18 == 0) goto Lb0
            com.vungle.ads.internal.model.u0 r2 = new com.vungle.ads.internal.model.u0
            int r4 = r18.getWidth()
            int r5 = r18.getHeight()
            r2.<init>(r4, r5)
            r7.a(r2)
        Lb0:
            r3.a(r7)
            com.vungle.ads.internal.network.e0 r2 = r0.d
            java.lang.String r4 = com.vungle.ads.internal.network.f0.d()
            com.vungle.ads.internal.network.m r1 = r2.a(r4, r1, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.VungleApiClient.a(java.lang.String, com.vungle.ads.VungleAdSize, com.vungle.ads.VungleCSBData, java.lang.String):com.vungle.ads.internal.network.m");
    }

    public final String b() {
        if (ContextCompat.checkSelfPermission(this.a, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return null;
        }
        Object systemService = this.a.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            int type = activeNetworkInfo.getType();
            if (type == 0) {
                return "MOBILE";
            }
            if (type == 1 || type == 6) {
                return "WIFI";
            }
            if (type == 7) {
                return "BLUETOOTH";
            }
            if (type != 9) {
                return "UNKNOWN";
            }
            return "ETHERNET";
        }
        return "NONE";
    }

    public final m a(q1 request) {
        m0 m0Var;
        Intrinsics.checkNotNullParameter(request, "request");
        ConfigManager.INSTANCE.getClass();
        String strO = ConfigManager.o();
        if (strO == null || strO.length() == 0 || (m0Var = this.h) == null) {
            return null;
        }
        u1 u1Var = new u1(a(false), m0Var, c(false));
        u1Var.a(request);
        n1 n1VarB = b(false);
        if (n1VarB != null) {
            u1Var.a(n1VarB);
        }
        return this.e.c(f0.d(), strO, u1Var);
    }

    public final d3 a(String url, Map map, String str, g requestType, com.vungle.ads.internal.util.t tVar) {
        Response responseE;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        if (!com.vungle.ads.internal.util.o.a(url)) {
            return new d3("Invalid URL", true, false, 4);
        }
        try {
            if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(new URL(url).getHost()) && URLUtil.isHttpUrl(url)) {
                return new d3("Clear Text Traffic is blocked", false, false, 6);
            }
            try {
                String str2 = this.i;
                if (str2 == null) {
                    str2 = "";
                }
                o oVarA = this.e.a(str2, url, requestType, map, str != null ? RequestBody.Companion.create(str, MediaType.Companion.parse(G5.M)) : null).a();
                if (oVarA != null && oVarA.c()) {
                    return null;
                }
                Integer numValueOf = (oVarA == null || (responseE = oVarA.e()) == null) ? null : Integer.valueOf(responseE.code());
                if (CollectionsKt___CollectionsKt.contains(CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{301, 302, Integer.valueOf(Sdk.SDKError.Reason.AD_EXPIRED_ON_PLAY_VALUE), Integer.valueOf(Sdk.SDKError.Reason.AD_WIN_NOTIFICATION_ERROR_VALUE)}), numValueOf)) {
                    AnalyticsClient.a(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.NOTIFICATION_REDIRECT, 0L, tVar, url, 2);
                    return null;
                }
                boolean z = numValueOf != null && new IntRange(500, CommonGatewayClient.CODE_599).contains(numValueOf.intValue());
                StringBuilder sb = new StringBuilder();
                sb.append("unsuccessful response, error code: ");
                sb.append(numValueOf);
                sb.append(", message: ");
                sb.append(oVarA != null ? oVarA.d() : null);
                return new d3(sb.toString(), false, z, 2);
            } catch (Throwable th) {
                String localizedMessage = th.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "IOException";
                }
                return new d3(localizedMessage, false, true, 2);
            }
        } catch (MalformedURLException e) {
            String localizedMessage2 = e.getLocalizedMessage();
            if (localizedMessage2 == null) {
                localizedMessage2 = "MalformedURLException";
            }
            return new d3(localizedMessage2, true, false, 4);
        }
    }

    public final void a(LinkedBlockingQueue metrics, com.vungle.ads.internal.x requestListener) {
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        ConfigManager.INSTANCE.getClass();
        String strN = ConfigManager.n();
        if (strN.length() == 0) {
            requestListener.a();
            return;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Iterator it = metrics.iterator();
        while (it.hasNext()) {
            Sdk.SDKMetric.Builder builder = (Sdk.SDKMetric.Builder) it.next();
            builder.setSessionId(((com.vungle.ads.internal.signals.j) this.k.getValue()).d());
            ConfigManager configManager = ConfigManager.INSTANCE;
            String placementReferenceId = builder.getPlacementReferenceId();
            configManager.getClass();
            j3 j3VarA = ConfigManager.a(placementReferenceId);
            if (j3VarA != null) {
                String strC = j3VarA.c();
                if (strC == null) {
                    strC = "";
                }
                builder.setPlacementType(strC);
            }
            String strB = b();
            if (strB != null) {
                builder.setConnectionType(strB);
            }
            String strC2 = c();
            if (strC2 != null) {
                builder.setConnectionTypeDetail(strC2);
            }
            Sdk.SDKMetric sDKMetricBuild = builder.build();
            boolean z = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Sending Metric: ");
            sbA.append(sDKMetricBuild.getType());
            com.vungle.ads.internal.util.u.b("VungleApiClient", sbA.toString());
            linkedBlockingQueue.add(sDKMetricBuild);
        }
        Sdk.MetricBatch metricBatchBuild = Sdk.MetricBatch.newBuilder().addAllMetrics(linkedBlockingQueue).build();
        RequestBody.Companion companion = RequestBody.Companion;
        MediaType mediaType = MediaType.Companion.parse(CommonGatewayClient.HEADER_PROTOBUF);
        byte[] byteArray = metricBatchBuild.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "batch.toByteArray()");
        this.e.b(f0.d(), strN, RequestBody.Companion.create$default(companion, mediaType, byteArray, 0, 0, 12, (Object) null)).a(new y(requestListener));
    }

    public final void a(LinkedBlockingQueue errors, com.vungle.ads.internal.w requestListener) {
        Intrinsics.checkNotNullParameter(errors, "errors");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        ConfigManager.INSTANCE.getClass();
        String strH = ConfigManager.h();
        if (strH.length() == 0) {
            requestListener.a();
            return;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Iterator it = errors.iterator();
        while (it.hasNext()) {
            Sdk.SDKError.Builder builder = (Sdk.SDKError.Builder) it.next();
            builder.setSessionId(((com.vungle.ads.internal.signals.j) this.k.getValue()).d());
            ConfigManager configManager = ConfigManager.INSTANCE;
            String placementReferenceId = builder.getPlacementReferenceId();
            configManager.getClass();
            j3 j3VarA = ConfigManager.a(placementReferenceId);
            if (j3VarA != null) {
                String strC = j3VarA.c();
                if (strC == null) {
                    strC = "";
                }
                builder.setPlacementType(strC);
            }
            String strB = b();
            if (strB != null) {
                builder.setConnectionType(strB);
            }
            String strC2 = c();
            if (strC2 != null) {
                builder.setConnectionTypeDetail(strC2);
            }
            Sdk.SDKError sDKErrorBuild = builder.build();
            boolean z = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Sending Error: ");
            sbA.append(sDKErrorBuild.getReason());
            com.vungle.ads.internal.util.u.b("VungleApiClient", sbA.toString());
            linkedBlockingQueue.add(sDKErrorBuild);
        }
        Sdk.SDKErrorBatch sDKErrorBatchBuild = Sdk.SDKErrorBatch.newBuilder().addAllErrors(linkedBlockingQueue).build();
        RequestBody.Companion companion = RequestBody.Companion;
        byte[] byteArray = sDKErrorBatchBuild.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "batch.toByteArray()");
        this.e.a(f0.d(), strH, companion.create(byteArray, MediaType.Companion.parse(CommonGatewayClient.HEADER_PROTOBUF), 0, sDKErrorBatchBuild.toByteArray().length)).a(new x(requestListener));
    }

    public final c3 a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        c3 c3Var = new c3(MANUFACTURER, MODEL, RELEASE, com.vungle.ads.internal.platform.a.a(context), Intrinsics.areEqual("Amazon", MANUFACTURER) ? "amazon" : "android", displayMetrics.widthPixels, displayMetrics.heightPixels, this.i);
        try {
            String strJ = ((com.vungle.ads.internal.platform.c) this.b).j();
            this.i = strJ;
            c3Var.b(strJ);
            k2 k2Var = new k2(Sdk.SDKMetric.SDKMetricType.USER_AGENT_LOAD_DURATION_MS);
            k2Var.e();
            ((com.vungle.ads.internal.platform.c) this.b).a(new w(this, k2Var));
            j0 j0VarA = this.g;
            if (j0VarA == null) {
                j0VarA = ((com.vungle.ads.internal.platform.c) this.b).a();
            }
            this.g = j0VarA;
            return c3Var;
        } catch (Exception e) {
            boolean z = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Cannot Get UserAgent. Setting Default Device UserAgent.");
            sbA.append(e.getLocalizedMessage());
            com.vungle.ads.internal.util.u.b("VungleApiClient", sbA.toString());
            return c3Var;
        }
    }

    public final u1 a(boolean z, boolean z2) {
        u1 u1Var = new u1(a(false), this.h, c(z2), null, null);
        n1 n1VarB = b(z);
        if (n1VarB != null) {
            u1Var.d = n1VarB;
        }
        return u1Var;
    }

    public final synchronized c3 a(boolean z) {
        c3 c3VarA;
        String str;
        try {
            c3 c3VarA2 = this.f;
            if (c3VarA2 == null) {
                c3VarA2 = a(this.a);
                this.f = c3VarA2;
            }
            c3VarA = c3.a(c3VarA2);
            b3 b3Var = new b3();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Object systemService = this.a.getSystemService("window");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getMetrics(displayMetrics);
            }
            c3VarA.a(displayMetrics.heightPixels);
            c3VarA.b(displayMetrics.widthPixels);
            j0 j0VarA = this.g;
            if (j0VarA == null) {
                j0VarA = ((com.vungle.ads.internal.platform.c) this.b).a();
            }
            this.g = j0VarA;
            String strA = j0VarA.a();
            j0 j0Var = this.g;
            Boolean boolValueOf = j0Var != null ? Boolean.valueOf(j0Var.b()) : null;
            PrivacyManager.INSTANCE.getClass();
            if (PrivacyManager.e()) {
                if (strA != null) {
                    if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
                        b3Var.a(strA);
                    } else {
                        b3Var.f(strA);
                    }
                    c3VarA.a(strA);
                } else {
                    c3VarA.a("");
                }
            }
            if (z || !PrivacyManager.e()) {
                c3VarA.a((String) null);
                b3Var.f(null);
                b3Var.a((String) null);
            }
            boolean zHasSystemFeature = false;
            c3VarA.a(Intrinsics.areEqual(boolValueOf, Boolean.TRUE) ? 1 : 0);
            if (this.j == null) {
                this.j = this.c.a("isPlaySvcAvailable");
            }
            if (this.j == null) {
                this.j = d();
            }
            Boolean bool = this.j;
            b3Var.a(bool != null ? bool.booleanValue() : false);
            if (PrivacyManager.a() != 2) {
                String strB = ((com.vungle.ads.internal.platform.c) this.b).b();
                if (strB != null) {
                    b3Var.b(strB);
                }
                Integer numC = ((com.vungle.ads.internal.platform.c) this.b).c();
                if (numC != null) {
                    b3Var.a(Integer.valueOf(numC.intValue()));
                }
            }
            Intent intentRegisterReceiver = this.a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                int intExtra = intentRegisterReceiver.getIntExtra("level", -1);
                int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
                if (intExtra > 0 && intExtra2 > 0) {
                    b3Var.a(intExtra / intExtra2);
                }
                int intExtra3 = intentRegisterReceiver.getIntExtra("status", -1);
                if (intExtra3 == -1) {
                    str = "UNKNOWN";
                } else if (intExtra3 != 2 && intExtra3 != 5) {
                    str = "NOT_CHARGING";
                } else {
                    int intExtra4 = intentRegisterReceiver.getIntExtra("plugged", -1);
                    if (intExtra4 == 1) {
                        str = "BATTERY_PLUGGED_AC";
                    } else if (intExtra4 == 2) {
                        str = "BATTERY_PLUGGED_USB";
                    } else if (intExtra4 != 4) {
                        str = "BATTERY_PLUGGED_OTHERS";
                    } else {
                        str = "BATTERY_PLUGGED_WIRELESS";
                    }
                }
            } else {
                str = "UNKNOWN";
            }
            b3Var.c(str);
            b3Var.a(((com.vungle.ads.internal.platform.c) this.b).l() ? 1 : 0);
            String strB2 = b();
            if (strB2 != null) {
                b3Var.d(strB2);
            }
            String strC = c();
            if (strC != null) {
                b3Var.e(strC);
            }
            b3Var.i(Locale.getDefault().toString());
            b3Var.h(Locale.getDefault().getLanguage());
            b3Var.j(TimeZone.getDefault().getID());
            b3Var.b(((com.vungle.ads.internal.platform.c) this.b).k());
            b3Var.c(((com.vungle.ads.internal.platform.c) this.b).o() ? 1 : 0);
            if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
                zHasSystemFeature = this.a.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
            } else {
                Object systemService2 = this.a.getSystemService("uimode");
                Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.app.UiModeManager");
                if (((UiModeManager) systemService2).getCurrentModeType() == 4) {
                    zHasSystemFeature = true;
                }
            }
            b3Var.b(zHasSystemFeature);
            this.b.getClass();
            b3Var.a();
            b3Var.b(((com.vungle.ads.internal.platform.c) this.b).m() ? 1 : 0);
            ConfigManager.INSTANCE.getClass();
            if (ConfigManager.r()) {
                b3Var.d(Long.valueOf(((com.vungle.ads.internal.platform.c) this.b).i()));
                b3Var.b(Long.valueOf(((com.vungle.ads.internal.platform.c) this.b).h()));
                b3Var.c(Long.valueOf(((com.vungle.ads.internal.platform.c) this.b).g()));
                b3Var.a(Long.valueOf(((com.vungle.ads.internal.platform.c) this.b).d()));
            }
            b3Var.g(((com.vungle.ads.internal.platform.c) this.b).f());
            c3VarA.b(this.i);
            c3VarA.a(b3Var);
        } catch (Throwable th) {
            throw th;
        }
        return c3VarA;
    }
}
