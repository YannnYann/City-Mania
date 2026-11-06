package com.google.android.ump;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
/* JADX INFO: loaded from: classes3.dex */
public class ConsentRequestParameters {
    public final boolean zza;
    public final String zzb;
    public final ConsentDebugSettings zzc;
    public final String zzd;

    /* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
    public static final class Builder {
        public boolean zza;
        public String zzb;
        public ConsentDebugSettings zzc;
        public String zzd;

        @RecentlyNonNull
        public ConsentRequestParameters build() {
            return new ConsentRequestParameters(this, null);
        }
    }

    public /* synthetic */ ConsentRequestParameters(Builder builder, zzb zzbVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
    }

    @RecentlyNullable
    public ConsentDebugSettings getConsentDebugSettings() {
        return this.zzc;
    }

    @RecentlyNullable
    public String getConsentSyncId() {
        return this.zzd;
    }

    public boolean isTagForUnderAgeOfConsent() {
        return this.zza;
    }

    @RecentlyNullable
    public final String zza() {
        return this.zzb;
    }
}
