package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public interface InternalClientFlags {

    @KeepForSdk
    public static final InternalClientFlags DEFAULT = new zzah();
    public static final InternalClientFlags zza = new zzai();

    @KeepForSdk
    boolean catchNetworkCallbackTooManyRequestsException();

    @KeepForSdk
    boolean checkComponentForMutableActivityPendingIntents();

    @KeepForSdk
    boolean enableGoogleSignatureVerifierUidShortCircuit();

    @KeepForSdk
    boolean fillIntentPackageForMutableActivityPendingIntents();

    @KeepForSdk
    boolean isPhoneRefinedFoldableAndTabletLogic();

    @KeepForSdk
    boolean providerinstallerDynamiteLoadingDisabled();

    @KeepForSdk
    boolean skipClientThrottlingDryrun();

    @KeepForSdk
    boolean useApiExceptionOnMissingFeature();

    boolean zza();
}
