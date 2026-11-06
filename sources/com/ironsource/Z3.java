package com.ironsource;

import android.text.TextUtils;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseWrapper;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Z3 {
    private final C3528ba a;
    private Boolean b;
    private ConcurrentHashMap<String, Boolean> c;
    private final B7 d;

    /* JADX WARN: Multi-variable type inference failed */
    public Z3() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final Boolean c(NetworkSettings networkSettings) {
        ConcurrentHashMap<String, Boolean> concurrentHashMap;
        String providerTypeForReflection = networkSettings != null ? networkSettings.getProviderTypeForReflection() : null;
        if (providerTypeForReflection == null || providerTypeForReflection.length() == 0 || (concurrentHashMap = this.c) == null) {
            return null;
        }
        return concurrentHashMap.get(providerTypeForReflection);
    }

    private final void d() {
        this.c = null;
        this.a.b();
    }

    public final Boolean a() {
        return this.b;
    }

    public final B7 b() {
        return this.d;
    }

    public Z3(C3528ba globalDataWriter) {
        Intrinsics.checkNotNullParameter(globalDataWriter, "globalDataWriter");
        this.a = globalDataWriter;
        this.d = Pb.w.d().a();
    }

    private final Boolean b(NetworkSettings networkSettings) {
        if (networkSettings == null || networkSettings.isCustomNetwork() || !networkSettings.getApplicationSettings().has(C3461a4.a)) {
            return null;
        }
        return Boolean.valueOf(networkSettings.getApplicationSettings().optBoolean(C3461a4.a));
    }

    public final void a(boolean z) {
        d();
        this.b = Boolean.valueOf(z);
    }

    private final void a(Map<String, Boolean> map) {
        c();
        this.c = new ConcurrentHashMap<>(map);
    }

    private final void c() {
        this.b = null;
        this.a.a();
    }

    public final void a(Map<String, ? extends AbstractAdapter> adapters, Map<String, ? extends AdapterBaseWrapper> networkAdapters) {
        Intrinsics.checkNotNullParameter(adapters, "adapters");
        Intrinsics.checkNotNullParameter(networkAdapters, "networkAdapters");
        Iterator<? extends AbstractAdapter> it = adapters.values().iterator();
        while (it.hasNext()) {
            a(it.next(), (NetworkSettings) null);
        }
        for (AdapterBaseWrapper adapterBaseWrapper : networkAdapters.values()) {
            AdapterBaseInterface adapterBaseInterface = adapterBaseWrapper.getAdapterBaseInterface();
            if (adapterBaseInterface != null) {
                a(adapterBaseInterface, adapterBaseWrapper.getSettings());
            } else {
                IronLog.INTERNAL.error("adapter is null");
            }
        }
    }

    public final void b(Map<String, ? extends AdapterBaseWrapper> networkAdapters) {
        Intrinsics.checkNotNullParameter(networkAdapters, "networkAdapters");
        final ConcurrentHashMap<String, Boolean> concurrentHashMap = this.c;
        if (concurrentHashMap == null) {
            return;
        }
        if (networkAdapters.isEmpty()) {
            this.a.b();
        } else {
            this.a.a(CollectionsKt___CollectionsKt.toList(SequencesKt___SequencesKt.toSet(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.mapNotNull(CollectionsKt___CollectionsKt.asSequence(networkAdapters.values()), new Function1() { // from class: com.ironsource.Z3$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Z3.a((AdapterBaseWrapper) obj);
                }
            }), new Function1() { // from class: com.ironsource.Z3$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(Z3.a(concurrentHashMap, (String) obj));
                }
            }))));
        }
    }

    public /* synthetic */ Z3(C3528ba c3528ba, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new C3528ba() : c3528ba);
    }

    public final void a(AdapterBaseInterface adapter, NetworkSettings networkSettings) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        try {
            Boolean boolA = a(networkSettings);
            if (boolA == null || !(adapter instanceof AdapterConsentInterface)) {
                return;
            }
            ((AdapterConsentInterface) adapter).setConsent(boolA.booleanValue());
        } catch (Throwable th) {
            C3813r4.d().a(th);
            String providerName = networkSettings != null ? networkSettings.getProviderName() : null;
            String str = "error while setting consent of " + providerName + ": " + th.getLocalizedMessage();
            a(str);
            IronLog.INTERNAL.error(str);
        }
    }

    public final void a(AbstractAdapter adapter, NetworkSettings networkSettings) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        try {
            Boolean boolA = a(networkSettings);
            if (boolA != null) {
                adapter.setNewConsent(boolA.booleanValue());
            }
        } catch (Throwable th) {
            C3813r4.d().a(th);
            String str = "error while setting consent of " + adapter.getProviderName() + ": " + th.getLocalizedMessage();
            a(str);
            IronLog.INTERNAL.error(str);
        }
    }

    private final Boolean a(NetworkSettings networkSettings) {
        Boolean boolB = b(networkSettings);
        if (boolB != null) {
            return boolB;
        }
        Boolean boolC = c(networkSettings);
        return boolC == null ? this.b : boolC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String a(AdapterBaseWrapper it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getSettings().getProviderTypeForReflection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(ConcurrentHashMap concurrentHashMap, String provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        return Intrinsics.areEqual(concurrentHashMap.get(provider), Boolean.TRUE);
    }

    public final void a(Map<String, Boolean> networkConsents, Map<String, ? extends AbstractAdapter> adapters, Map<String, ? extends AdapterBaseWrapper> networkAdapters) {
        Intrinsics.checkNotNullParameter(networkConsents, "networkConsents");
        Intrinsics.checkNotNullParameter(adapters, "adapters");
        Intrinsics.checkNotNullParameter(networkAdapters, "networkAdapters");
        a(networkConsents);
        a(adapters, networkAdapters);
        b(networkAdapters);
    }

    public final void a(boolean z, Map<String, ? extends AbstractAdapter> adapters, Map<String, ? extends AdapterBaseWrapper> networkAdapters) {
        Intrinsics.checkNotNullParameter(adapters, "adapters");
        Intrinsics.checkNotNullParameter(networkAdapters, "networkAdapters");
        a(z);
        a(adapters, networkAdapters);
        this.a.a(z);
    }

    private final void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("reason", str);
            }
            N9.i().a(new C5(D5.T6, jSONObject));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public final void a(int i) {
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        try {
            jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, i + ";" + this.d.G(ContextProvider.getInstance().getApplicationContext()));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(ExceptionsKt__ExceptionsKt.stackTraceToString(e));
        }
        Pb.w.d().q().a(new C5(D5.e, jSONObjectB));
    }

    public final void a(int i, Map<String, ? extends NetworkSettings> providerSettings) {
        JSONObject applicationSettings;
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        String strG = this.d.G(ContextProvider.getInstance().getApplicationContext());
        IronLog ironLog = IronLog.API;
        ironLog.general("TCF Additional Consent: " + strG);
        ironLog.general("CMP ID: " + i);
        ironLog.general("Network Consent Reporting:");
        ironLog.general("----------------------------");
        Collection<? extends NetworkSettings> collectionValues = providerSettings.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            NetworkSettings networkSettings = (NetworkSettings) obj;
            if (networkSettings.getProviderDefaultInstance() != null && !Intrinsics.areEqual(networkSettings.getProviderDefaultInstance(), IronSourceConstants.SUPERSONIC_CONFIG_NAME) && (applicationSettings = networkSettings.getApplicationSettings()) != null && applicationSettings.has(C3461a4.a)) {
                arrayList.add(obj);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList<NetworkSettings> arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (hashSet.add(((NetworkSettings) obj2).getProviderDefaultInstance())) {
                arrayList2.add(obj2);
            }
        }
        for (NetworkSettings networkSettings2 : arrayList2) {
            IronLog ironLog2 = IronLog.API;
            String providerDefaultInstance = networkSettings2.getProviderDefaultInstance();
            JSONObject applicationSettings2 = networkSettings2.getApplicationSettings();
            ironLog2.general(providerDefaultInstance + ": " + (applicationSettings2 != null ? Boolean.valueOf(applicationSettings2.optBoolean(C3461a4.a)) : null));
        }
    }
}
