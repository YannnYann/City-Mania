package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
@KeepForSdk
public class AppMeasurementSdk {
    public final zzez zza;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@23.2.0 */
    @KeepForSdk
    public static final class ConditionalUserProperty {
        private ConditionalUserProperty() {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@23.2.0 */
    @ShowFirstParty
    @KeepForSdk
    public interface EventInterceptor extends zzjp {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@23.2.0 */
    @ShowFirstParty
    @KeepForSdk
    public interface OnEventListener extends zzjq {
    }

    public AppMeasurementSdk(zzez zzezVar) {
        this.zza = zzezVar;
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public static AppMeasurementSdk getInstance(Context context) {
        return zzez.zza(context, null).zzb();
    }

    @Keep
    @KeepForSdk
    public void beginAdUnitExposure(String str) {
        this.zza.zzu(str);
    }

    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zza.zzm(str, str2, bundle);
    }

    @Keep
    @KeepForSdk
    public void endAdUnitExposure(String str) {
        this.zza.zzv(str);
    }

    @Keep
    @KeepForSdk
    public long generateEventId() {
        return this.zza.zzz();
    }

    @KeepForSdk
    public String getAppIdOrigin() {
        return this.zza.zzI();
    }

    @Keep
    @KeepForSdk
    public String getAppInstanceId() {
        return this.zza.zzy();
    }

    @KeepForSdk
    public List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.zza.zzn(str, str2);
    }

    @KeepForSdk
    public String getCurrentScreenClass() {
        return this.zza.zzB();
    }

    @KeepForSdk
    public String getCurrentScreenName() {
        return this.zza.zzA();
    }

    @Keep
    @KeepForSdk
    public String getGmpAppId() {
        return this.zza.zzx();
    }

    @KeepForSdk
    public int getMaxUserProperties(String str) {
        return this.zza.zzF(str);
    }

    @KeepForSdk
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zza.zzC(str, str2, z);
    }

    @Keep
    @KeepForSdk
    public void logEvent(String str, String str2, Bundle bundle) {
        this.zza.zzi(str, str2, bundle);
    }

    @KeepForSdk
    public void logEventNoInterceptor(String str, String str2, Bundle bundle, long j) {
        this.zza.zzj(str, str2, bundle, j, 0L);
    }

    @KeepForSdk
    public void performAction(Bundle bundle) {
        this.zza.zzE(bundle, false);
    }

    @KeepForSdk
    public Bundle performActionWithResponse(Bundle bundle) {
        return this.zza.zzE(bundle, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zza.zzf(onEventListener);
    }

    @KeepForSdk
    public void setConditionalUserProperty(Bundle bundle) {
        this.zza.zzl(bundle);
    }

    @KeepForSdk
    @Deprecated
    public void setConsent(Bundle bundle) {
    }

    @KeepForSdk
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.zza.zzp(zzdd.zza(activity), str, str2);
    }

    @ShowFirstParty
    @KeepForSdk
    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        this.zza.zzd(eventInterceptor);
    }

    @KeepForSdk
    @Deprecated
    public void setMeasurementEnabled(Boolean bool) {
    }

    @KeepForSdk
    @Deprecated
    public void setMeasurementEnabled(boolean z) {
    }

    @KeepForSdk
    public void setUserProperty(String str, String str2, Object obj) {
        this.zza.zzk(str, str2, obj, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zza.zzg(onEventListener);
    }

    public final void zza(boolean z) {
        this.zza.zzK(z);
    }

    @KeepForSdk
    @Deprecated
    public static AppMeasurementSdk getInstance(Context context, String str, String str2, String str3, Bundle bundle) {
        return zzez.zza(context, bundle).zzb();
    }
}
