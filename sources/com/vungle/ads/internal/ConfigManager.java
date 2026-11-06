package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.privacy.PrivacyManager;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
public final class ConfigManager {
    public static volatile com.vungle.ads.internal.model.w2 a;
    public static volatile Map b;
    public static volatile com.vungle.ads.internal.model.i2 c;
    public static volatile List d;
    public static volatile String e;
    public static Map f;
    public static String h;
    public static final ConfigManager INSTANCE = new ConfigManager();
    public static final Lazy g = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, t0.a);

    private ConfigManager() {
    }

    public static void b(String applicationId) {
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        h = applicationId;
    }

    public static void c() {
        ServiceLocator serviceLocator;
        final Map map = b;
        if (map == null || map.isEmpty() || (serviceLocator = ServiceLocator.INSTANCE) == null) {
            return;
        }
        final com.vungle.ads.internal.downloader.u uVar = (com.vungle.ads.internal.downloader.u) serviceLocator.getService(com.vungle.ads.internal.downloader.u.class);
        ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) serviceLocator.getService(com.vungle.ads.internal.executor.a.class))).a.execute(new Runnable() { // from class: com.vungle.ads.internal.ConfigManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ConfigManager.a(map, uVar);
            }
        });
    }

    public static boolean d() {
        Boolean bool;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (bool = w2Var.n) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public static String e() {
        com.vungle.ads.internal.model.i2 i2Var = c;
        String str = null;
        String str2 = i2Var != null ? i2Var.e : null;
        if (str2 != null && str2.length() != 0) {
            str = str2;
        }
        return str == null ? Constants.a : str;
    }

    public static int f() {
        com.vungle.ads.internal.model.b2 b2Var;
        Integer num;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (b2Var = w2Var.a) == null || (num = b2Var.b) == null) {
            return 3;
        }
        return num.intValue();
    }

    public static long g() {
        com.vungle.ads.internal.model.b2 b2Var;
        Long l;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (b2Var = w2Var.a) == null || (l = b2Var.a) == null) {
            return 1048576000L;
        }
        long j = 1024;
        return l.longValue() * j * j;
    }

    public static String h() {
        com.vungle.ads.internal.model.i2 i2Var = c;
        String str = null;
        String str2 = i2Var != null ? i2Var.c : null;
        if (str2 != null && str2.length() != 0) {
            str = str2;
        }
        return str == null ? Constants.b : str;
    }

    public static String i() {
        com.vungle.ads.internal.model.v2 v2Var;
        com.vungle.ads.internal.model.l2 l2Var;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (v2Var = w2Var.f) == null || (l2Var = v2Var.a) == null) {
            return null;
        }
        return l2Var.e;
    }

    public static String j() {
        com.vungle.ads.internal.model.v2 v2Var;
        com.vungle.ads.internal.model.l2 l2Var;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (v2Var = w2Var.f) == null || (l2Var = v2Var.a) == null) {
            return null;
        }
        return l2Var.f;
    }

    public static String k() {
        com.vungle.ads.internal.model.v2 v2Var;
        com.vungle.ads.internal.model.l2 l2Var;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (v2Var = w2Var.f) == null || (l2Var = v2Var.a) == null) {
            return null;
        }
        return l2Var.c;
    }

    public static String l() {
        com.vungle.ads.internal.model.v2 v2Var;
        com.vungle.ads.internal.model.l2 l2Var;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (v2Var = w2Var.f) == null || (l2Var = v2Var.a) == null) {
            return null;
        }
        return l2Var.b;
    }

    public static boolean m() {
        com.vungle.ads.internal.model.v2 v2Var;
        com.vungle.ads.internal.model.l2 l2Var;
        Boolean bool;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (v2Var = w2Var.f) == null || (l2Var = v2Var.a) == null || (bool = l2Var.a) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static String n() {
        com.vungle.ads.internal.model.i2 i2Var = c;
        String str = null;
        String str2 = i2Var != null ? i2Var.d : null;
        if (str2 != null && str2.length() != 0) {
            str = str2;
        }
        return str == null ? Constants.c : str;
    }

    public static String o() {
        com.vungle.ads.internal.model.i2 i2Var = c;
        if (i2Var != null) {
            return i2Var.b;
        }
        return null;
    }

    public static com.vungle.ads.internal.model.o2 p() {
        com.vungle.ads.internal.model.v2 v2Var;
        com.vungle.ads.internal.model.p2 p2Var;
        LinkedHashMap linkedHashMap = com.vungle.ads.internal.model.o2.b;
        com.vungle.ads.internal.model.w2 w2Var = a;
        return (com.vungle.ads.internal.model.o2) com.vungle.ads.internal.model.o2.b.get((w2Var == null || (v2Var = w2Var.f) == null || (p2Var = v2Var.b) == null) ? null : p2Var.a);
    }

    public static boolean q() {
        Boolean bool;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (bool = w2Var.s) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static boolean r() {
        Boolean bool;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (bool = w2Var.r) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public static boolean s() {
        Boolean bool;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (bool = w2Var.o) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static boolean t() {
        Boolean bool;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (bool = w2Var.m) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final String getAdsEndpoint() {
        com.vungle.ads.internal.model.i2 i2Var = c;
        String str = null;
        String str2 = i2Var != null ? i2Var.a : null;
        if (str2 != null && str2.length() != 0) {
            str = str2;
        }
        return str == null ? Constants.DEFAULT_ADS_ENDPOINT : str;
    }

    public final String getConfigExtension() {
        String str = e;
        return str == null ? "" : str;
    }

    public static long b() {
        Long l;
        com.vungle.ads.internal.model.w2 w2Var = a;
        if (w2Var == null || (l = w2Var.p) == null) {
            return -1L;
        }
        return l.longValue();
    }

    public final void a(Context context, com.vungle.ads.internal.model.w2 w2Var, p0 source, j2 j2Var) {
        Long l;
        char c2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(source, "source");
        try {
            synchronized (this) {
                try {
                    ServiceLocator serviceLocatorA = r1.a();
                    if (serviceLocatorA == null) {
                        return;
                    }
                    FilePreferences filePreferences = (FilePreferences) serviceLocatorA.getService(FilePreferences.class);
                    INSTANCE.getClass();
                    if (w2Var == null || (l = w2Var.p) == null || l.longValue() == -1) {
                        c2 = 0;
                    } else {
                        c2 = w2Var.c == null ? (char) 1 : (char) 2;
                    }
                    if (c2 == 0) {
                        boolean z = com.vungle.ads.internal.util.v.a;
                        com.vungle.ads.internal.util.u.b("ConfigManager", "Config is not available.");
                        return;
                    }
                    if (c2 != 1) {
                        Map mapA = a(context, w2Var, source, j2Var, serviceLocatorA, filePreferences);
                        Unit unit = Unit.INSTANCE;
                        if (mapA != null) {
                            a(mapA);
                            return;
                        }
                        return;
                    }
                    if (source != p0.INIT_CACHED && w2Var != null) {
                        Long l2 = w2Var.p;
                        long jLongValue = l2 != null ? l2.longValue() : -1L;
                        com.vungle.ads.internal.model.w2 w2Var2 = a;
                        if (w2Var2 != null) {
                            w2Var2.p = Long.valueOf(jLongValue);
                        }
                        com.vungle.ads.internal.model.w2 w2Var3 = a;
                        if (w2Var3 != null) {
                            a(w2Var3, filePreferences);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            boolean z2 = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Error while validating config: ");
            sbA.append(e2.getMessage());
            com.vungle.ads.internal.util.u.b("ConfigManager", sbA.toString());
        }
    }

    public static void a(final Map map) {
        ServiceLocator serviceLocator = ServiceLocator.INSTANCE;
        if (serviceLocator == null) {
            return;
        }
        final com.vungle.ads.internal.downloader.u uVar = (com.vungle.ads.internal.downloader.u) serviceLocator.getService(com.vungle.ads.internal.downloader.u.class);
        ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) serviceLocator.getService(com.vungle.ads.internal.executor.a.class))).a.execute(new Runnable() { // from class: com.vungle.ads.internal.ConfigManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ConfigManager.a(uVar, map);
            }
        });
    }

    public static Map a(Context context, com.vungle.ads.internal.model.w2 w2Var, p0 p0Var, j2 j2Var, ServiceLocator serviceLocator, FilePreferences filePreferences) throws Throwable {
        Boolean bool;
        FilePreferences filePreferences2;
        com.vungle.ads.internal.model.s2 s2Var;
        Boolean bool2;
        com.vungle.ads.internal.model.s2 s2Var2;
        Integer num;
        a = w2Var;
        if (p0Var != p0.AD_RESPONSE) {
            b = w2Var != null ? w2Var.e() : null;
        }
        c = w2Var != null ? w2Var.c() : null;
        d = w2Var != null ? w2Var.d() : null;
        VungleApiClient vungleApiClient = (VungleApiClient) serviceLocator.getService(VungleApiClient.class);
        com.vungle.ads.internal.executor.a aVar = (com.vungle.ads.internal.executor.a) serviceLocator.getService(com.vungle.ads.internal.executor.a.class);
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        com.vungle.ads.internal.executor.j jVarE = ((com.vungle.ads.internal.executor.d) aVar).e();
        com.vungle.ads.internal.model.w2 w2Var2 = a;
        boolean zBooleanValue = true;
        int iIntValue = (w2Var2 == null || (s2Var2 = w2Var2.d) == null || (num = s2Var2.a) == null) ? 1 : num.intValue();
        com.vungle.ads.internal.model.w2 w2Var3 = a;
        analyticsClient.a(vungleApiClient, jVarE, iIntValue, (w2Var3 == null || (s2Var = w2Var3.d) == null || (bool2 = s2Var.b) == null) ? false : bool2.booleanValue());
        if (p0Var != p0.INIT_CACHED && w2Var != null) {
            a(w2Var, filePreferences);
            String ext = w2Var.a();
            if (ext != null) {
                ConfigManager configManager = INSTANCE;
                configManager.getClass();
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(ext, "ext");
                synchronized (configManager) {
                    e = ext;
                    Unit unit = Unit.INSTANCE;
                }
                ServiceLocator serviceLocatorA = r1.a();
                if (serviceLocatorA != null && (filePreferences2 = (FilePreferences) serviceLocatorA.getService(FilePreferences.class)) != null) {
                    filePreferences2.a("config_extension", ext).b();
                }
            }
        }
        if (j2Var != null) {
            AnalyticsClient.a(analyticsClient, j2Var, (com.vungle.ads.internal.util.t) null, 6);
        }
        PrivacyManager privacyManager = PrivacyManager.INSTANCE;
        com.vungle.ads.internal.model.w2 w2Var4 = a;
        if (w2Var4 != null && (bool = w2Var4.h) != null) {
            zBooleanValue = bool.booleanValue();
        }
        privacyManager.getClass();
        PrivacyManager.a(zBooleanValue);
        Map mapE = w2Var != null ? w2Var.e() : null;
        if (mapE == null || mapE.isEmpty() || Intrinsics.areEqual(mapE, f)) {
            return null;
        }
        f = mapE;
        return mapE;
    }

    public static final void a(Map map, com.vungle.ads.internal.downloader.u capturedTdm) {
        Intrinsics.checkNotNullParameter(capturedTdm, "$capturedTdm");
        Set<String> setKeySet = map.keySet();
        ArrayList arrayList = new ArrayList();
        for (String str : setKeySet) {
            capturedTdm.getClass();
            String strA = com.vungle.ads.internal.downloader.u.a(str);
            if (strA != null) {
                arrayList.add(strA);
            }
        }
        capturedTdm.a(CollectionsKt___CollectionsKt.toSet(arrayList));
        capturedTdm.a(map);
    }

    public static final void a(com.vungle.ads.internal.downloader.u capturedTdm, Map templates) {
        Intrinsics.checkNotNullParameter(capturedTdm, "$capturedTdm");
        Intrinsics.checkNotNullParameter(templates, "$templates");
        capturedTdm.b(templates);
    }

    public static j3 a(String str) {
        List list = d;
        Object obj = null;
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((j3) next).b(), str)) {
                obj = next;
                break;
            }
        }
        return (j3) obj;
    }

    public static com.vungle.ads.internal.model.w2 a(FilePreferences filePreferences, String appId) {
        Long lA;
        Intrinsics.checkNotNullParameter(filePreferences, "filePreferences");
        Intrinsics.checkNotNullParameter(appId, "appId");
        try {
            String string = filePreferences.getString("config_app_id");
            if (string != null && string.length() != 0 && StringsKt__StringsJVMKt.equals(string, appId, true)) {
                String string2 = filePreferences.getString("config_response");
                if (string2 == null) {
                    return null;
                }
                long jA = filePreferences.a("config_update_time", 0L);
                INSTANCE.getClass();
                Json json = (Json) g.getValue();
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(com.vungle.ads.internal.model.w2.class));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                com.vungle.ads.internal.model.w2 w2Var = (com.vungle.ads.internal.model.w2) json.decodeFromString(kSerializerSerializer, string2);
                com.vungle.ads.internal.model.f2 f2VarB = w2Var.b();
                if (((f2VarB == null || (lA = f2VarB.a()) == null) ? -1L : lA.longValue()) + jA < System.currentTimeMillis()) {
                    boolean z = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.c("ConfigManager", "cache config expired. re-config");
                    return null;
                }
                boolean z2 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.c("ConfigManager", "use cache config.");
                return w2Var;
            }
            boolean z3 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.c("ConfigManager", "app id mismatch, re-config");
            return null;
        } catch (Exception e2) {
            boolean z4 = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Error while parsing cached config: ");
            sbA.append(e2.getMessage());
            com.vungle.ads.internal.util.u.b("ConfigManager", sbA.toString());
            return null;
        }
    }

    public static void a(com.vungle.ads.internal.model.w2 config, FilePreferences filePreferences) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(filePreferences, "filePreferences");
        try {
            String str = h;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("applicationId");
                str = null;
            }
            filePreferences.a("config_app_id", str);
            filePreferences.b("config_update_time", System.currentTimeMillis());
            Json json = (Json) g.getValue();
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(com.vungle.ads.internal.model.w2.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            filePreferences.a("config_response", json.encodeToString(kSerializerSerializer, config));
            filePreferences.b();
        } catch (Exception e2) {
            boolean z = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Exception: ");
            sbA.append(e2.getMessage());
            sbA.append(" for updating cached config");
            com.vungle.ads.internal.util.u.b("ConfigManager", sbA.toString());
        }
    }

    public final void a() {
        synchronized (this) {
            c = null;
            d = null;
            a = null;
            b = null;
            e = null;
            f = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    public static void a(Context context, o2 onComplete) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        try {
            com.vungle.ads.internal.network.m mVarA = ((VungleApiClient) LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new q0(context)).getValue()).a();
            if (mVarA != null) {
                mVarA.a(new r0(context, onComplete));
            }
        } catch (Throwable th) {
            if (th instanceof UnknownHostException ? true : th instanceof SecurityException) {
                StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Config unknown: ");
                sbA.append(th.getMessage());
                new NetworkUnreachable(sbA.toString()).logErrorNoReturnValue$vungle_ads_release();
            } else {
                StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("Config: ");
                sbA2.append(th.getMessage());
                new NetworkUnreachable(sbA2.toString()).logErrorNoReturnValue$vungle_ads_release();
            }
            onComplete.invoke(Boolean.FALSE);
        }
    }
}
