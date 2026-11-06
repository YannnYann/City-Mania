package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import java.io.File;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzsc {
    public static final File zza(Uri uri) throws zzsi {
        if (!uri.getScheme().equals(C3522b4.i.b)) {
            throw new zzsi("Scheme must be 'file'");
        }
        if (!TextUtils.isEmpty(uri.getQuery())) {
            throw new zzsi("Did not expect uri to have query");
        }
        if (TextUtils.isEmpty(uri.getAuthority())) {
            return new File(uri.getPath());
        }
        throw new zzsi("Did not expect uri to have authority");
    }
}
