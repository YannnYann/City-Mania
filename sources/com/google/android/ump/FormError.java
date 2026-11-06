package com.google.android.ump;

import androidx.annotation.RecentlyNonNull;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
/* JADX INFO: loaded from: classes3.dex */
public class FormError {
    public final int zza;
    public final String zzb;

    public FormError(int i, @RecentlyNonNull String str) {
        this.zza = i;
        this.zzb = str;
    }

    @RecentlyNonNull
    public String getMessage() {
        return this.zzb;
    }
}
