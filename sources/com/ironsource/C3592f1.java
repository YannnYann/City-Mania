package com.ironsource;

import com.ironsource.environment.StringUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3592f1 {
    public static final a a = new a(null);

    /* JADX INFO: renamed from: com.ironsource.f1$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Map<String, Map<String, String>> a() {
            return a(C3946y9.a.a());
        }

        private a() {
        }

        public final Map<String, Map<String, String>> a(List<String> adapterNames) {
            Intrinsics.checkNotNullParameter(adapterNames, "adapterNames");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : adapterNames) {
                String strA = a(str);
                if (strA != null && strA.length() != 0) {
                    linkedHashMap.put(str, MapsKt__MapsJVMKt.mapOf(TuplesKt.to(R6.G1, strA)));
                }
            }
            return linkedHashMap;
        }

        private final String a(String str) {
            try {
                Object objInvoke = Class.forName("com.ironsource.adapters." + StringUtils.toLowerCase(str) + "." + str + "Adapter").getMethod("networkAdapterVersion", null).invoke(null, null);
                if (objInvoke instanceof String) {
                    return (String) objInvoke;
                }
            } catch (ReflectiveOperationException unused) {
            } catch (Throwable th) {
                C3813r4.d().a(th);
                IronLog.INTERNAL.error("AdapterVersionScanner: failed to get version for " + str + ": " + th);
            }
            return null;
        }
    }

    public static final Map<String, Map<String, String>> a() {
        return a.a();
    }

    public static final Map<String, Map<String, String>> a(List<String> list) {
        return a.a(list);
    }
}
