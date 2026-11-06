package com.google.android.ump;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.consent_sdk.zzct;
import com.google.android.gms.internal.consent_sdk.zzdb;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
/* JADX INFO: loaded from: classes3.dex */
public class ConsentDebugSettings {
    public final boolean zza;
    public final int zzb;

    /* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
    public static class Builder {
        public final Context zzb;
        public boolean zzd;
        public final List zza = new ArrayList();
        public int zzc = 0;

        public Builder(@RecentlyNonNull Context context) {
            this.zzb = context.getApplicationContext();
        }

        @RecentlyNonNull
        public ConsentDebugSettings build() {
            boolean z = true;
            if (!zzdb.zza(true) && !this.zza.contains(zzct.zza(this.zzb)) && !this.zzd) {
                z = false;
            }
            return new ConsentDebugSettings(z, this, null);
        }
    }

    public /* synthetic */ ConsentDebugSettings(boolean z, Builder builder, zza zzaVar) {
        this.zza = z;
        this.zzb = builder.zzc;
    }

    public int getDebugGeography() {
        return this.zzb;
    }

    public boolean isTestDevice() {
        return this.zza;
    }
}
