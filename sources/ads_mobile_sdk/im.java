package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class im extends vz0.a implements uw1 {
    public final void a(ArrayList arrayList) {
        d();
        jm jmVar = (jm) this.b;
        yh1.e eVar = jmVar.loggingOnlyExperimentIds_;
        if (!eVar.b()) {
            jmVar.loggingOnlyExperimentIds_ = vz0.a(eVar);
        }
        f.a(arrayList, jmVar.loggingOnlyExperimentIds_);
    }

    public final void b(LinkedHashMap linkedHashMap) {
        d();
        jm jmVar = (jm) this.b;
        if (!jmVar.adUnitAndFormatToMediationConfigs_.d()) {
            jmVar.adUnitAndFormatToMediationConfigs_ = jmVar.adUnitAndFormatToMediationConfigs_.f();
        }
        jmVar.adUnitAndFormatToMediationConfigs_.putAll(linkedHashMap);
    }

    public final void c(LinkedHashMap linkedHashMap) {
        d();
        jm jmVar = (jm) this.b;
        if (!jmVar.adUnitAndFormatToRequestSignals_.d()) {
            jmVar.adUnitAndFormatToRequestSignals_ = jmVar.adUnitAndFormatToRequestSignals_.f();
        }
        jmVar.adUnitAndFormatToRequestSignals_.putAll(linkedHashMap);
    }

    public final void d(LinkedHashMap linkedHashMap) {
        d();
        jm jmVar = (jm) this.b;
        if (!jmVar.adUnitPatterns_.d()) {
            jmVar.adUnitPatterns_ = jmVar.adUnitPatterns_.f();
        }
        jmVar.adUnitPatterns_.putAll(linkedHashMap);
    }

    public final void e(LinkedHashMap linkedHashMap) {
        d();
        jm jmVar = (jm) this.b;
        if (!jmVar.adapterInitializationConfigs_.d()) {
            jmVar.adapterInitializationConfigs_ = jmVar.adapterInitializationConfigs_.f();
        }
        jmVar.adapterInitializationConfigs_.putAll(linkedHashMap);
    }

    public final void f(LinkedHashMap linkedHashMap) {
        d();
        jm jmVar = (jm) this.b;
        if (!jmVar.admobSignalAdapterConfigs_.d()) {
            jmVar.admobSignalAdapterConfigs_ = jmVar.admobSignalAdapterConfigs_.f();
        }
        jmVar.admobSignalAdapterConfigs_.putAll(linkedHashMap);
    }

    public final void g(LinkedHashMap linkedHashMap) {
        d();
        jm jmVar = (jm) this.b;
        if (!jmVar.signalAdapterConfigs_.d()) {
            jmVar.signalAdapterConfigs_ = jmVar.signalAdapterConfigs_.f();
        }
        jmVar.signalAdapterConfigs_.putAll(linkedHashMap);
    }

    public final void p() {
        d();
        jm jmVar = (jm) this.b;
        jmVar.bitField0_ |= 1;
        jmVar.appSettingsVersion_ = 2;
    }

    public final void a(LinkedHashMap linkedHashMap) {
        d();
        jm jmVar = (jm) this.b;
        if (!jmVar.adManagerSignalAdapterConfigs_.d()) {
            jmVar.adManagerSignalAdapterConfigs_ = jmVar.adManagerSignalAdapterConfigs_.f();
        }
        jmVar.adManagerSignalAdapterConfigs_.putAll(linkedHashMap);
    }

    public final void b(String str) {
        d();
        ((jm) this.b).c(str);
    }

    public final void b(long j) {
        d();
        jm jmVar = (jm) this.b;
        jmVar.bitField0_ |= 8;
        jmVar.serverCacheTtlSecs_ = j;
    }

    public final void a(String str) {
        d();
        ((jm) this.b).b(str);
    }

    public final void a(long j) {
        d();
        jm jmVar = (jm) this.b;
        jmVar.bitField0_ |= 4;
        jmVar.lastUpdateTimeMs_ = j;
    }

    public im() {
        super(jm.DEFAULT_INSTANCE);
    }

    public final List n() {
        return Collections.unmodifiableList(((jm) this.b).loggingOnlyExperimentIds_);
    }

    public final Map i() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((jm) this.b).adUnitAndFormatToMediationConfigs_));
    }

    public final Map j() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((jm) this.b).adUnitAndFormatToRequestSignals_));
    }

    public final Map l() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((jm) this.b).adapterInitializationConfigs_));
    }

    public final Map k() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((jm) this.b).adUnitPatterns_));
    }

    public final Map o() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((jm) this.b).signalAdapterConfigs_));
    }

    public final Map m() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((jm) this.b).admobSignalAdapterConfigs_));
    }

    public final Map h() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((jm) this.b).adManagerSignalAdapterConfigs_));
    }
}
