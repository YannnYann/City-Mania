package com.google.android.gms.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzg;

/* JADX INFO: compiled from: com.google.android.gms:play-services-location@@18.0.0 */
/* JADX INFO: loaded from: classes3.dex */
public class ActivityRecognition {
    public static final Api<Api.ApiOptions.NoOptions> API;

    @Deprecated
    public static final ActivityRecognitionApi ActivityRecognitionApi;
    public static final Api.ClientKey<com.google.android.gms.internal.location.zzaz> zza;
    public static final Api.AbstractClientBuilder<com.google.android.gms.internal.location.zzaz, Api.ApiOptions.NoOptions> zzb;

    static {
        Api.ClientKey<com.google.android.gms.internal.location.zzaz> clientKey = new Api.ClientKey<>();
        zza = clientKey;
        zza zzaVar = new zza();
        zzb = zzaVar;
        API = new Api<>("ActivityRecognition.API", zzaVar, clientKey);
        ActivityRecognitionApi = new zzg();
    }

    private ActivityRecognition() {
    }
}
