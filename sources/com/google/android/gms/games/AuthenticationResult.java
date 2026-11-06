package com.google.android.gms.games;

import com.google.android.gms.internal.games_v2.zzad;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@zzad
public final class AuthenticationResult {
    public static final AuthenticationResult zza = new AuthenticationResult(true);
    public static final AuthenticationResult zzb = new AuthenticationResult(false);
    public final boolean zzc;

    public AuthenticationResult(boolean z) {
        this.zzc = z;
    }

    @zzad
    public boolean isAuthenticated() {
        return this.zzc;
    }
}
