package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzms extends InputStream {
    final /* synthetic */ zzacv zza;

    public zzms(zzmu zzmuVar, zzacv zzacvVar) {
        this.zza = zzacvVar;
        Objects.requireNonNull(zzmuVar);
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        if (this.zza.zzK(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        int i = j > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : (int) j;
        this.zza.zzL(i);
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return this.zza.zzK(bArr, i, i2);
    }
}
