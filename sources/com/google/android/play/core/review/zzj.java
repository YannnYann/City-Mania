package com.google.android.play.core.review;

import io.bidmachine.Framework;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:review@@2.0.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzj {
    public static final Map zza;

    static {
        new HashSet(Arrays.asList("native", Framework.UNITY));
        zza = new HashMap();
        new com.google.android.play.core.review.internal.zzi("PlayCoreVersion");
    }

    public static synchronized Map zza() {
        Map map;
        map = zza;
        map.put("java", 20002);
        return map;
    }
}
