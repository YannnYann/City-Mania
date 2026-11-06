package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import com.ironsource.C3522b4;
import java.io.File;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzsb {
    private final Uri.Builder zza = new Uri.Builder().scheme(C3522b4.i.b).authority("").path("/");
    private final ImmutableList.Builder zzb = ImmutableList.builder();

    private zzsb() {
    }

    public final zzsb zza(File file) {
        this.zza.path(file.getAbsolutePath());
        return this;
    }

    public final Uri zzb() {
        return this.zza.encodedFragment(zzsp.zzb(this.zzb.build())).build();
    }

    public /* synthetic */ zzsb(byte[] bArr) {
    }
}
