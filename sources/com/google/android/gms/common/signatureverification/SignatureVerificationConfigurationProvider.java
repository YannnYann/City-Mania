package com.google.android.gms.common.signatureverification;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
@KeepForSdk
public class SignatureVerificationConfigurationProvider {
    public static final /* synthetic */ int zza = 0;
    private static final SignatureVerificationConfiguration zzb = zzd.zzc();

    private SignatureVerificationConfigurationProvider() {
    }

    public static SignatureVerificationConfiguration zza() {
        return zzb;
    }
}
