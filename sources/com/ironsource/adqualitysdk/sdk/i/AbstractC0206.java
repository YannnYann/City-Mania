package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ϝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0206 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final Set f1368;

    static {
        StringFog.decrypt("Wkg0/VZ6wipkTinNXQ==\n", "OyxFoj8Uq14=\n");
        StringFog.decrypt("gTq1BZ35Nj6HMr4Ynf48JpE1\n", "9FvRdsKKU00=\n");
        StringFog.decrypt("SvagoqKoT/dR9JGkvqRk2ED+oKu5qg==\n", "I5HOzdDNEIc=\n");
        f1368 = Collections.unmodifiableSet(new HashSet(Arrays.asList(StringFog.decrypt("NPxjOgDAkq8K+n4KCw==\n", "VZgSZWmu+9s=\n"), StringFog.decrypt("SvTQE2KDgtFM/NsOYoSIyVr7\n", "P5W0YD3w56I=\n"))));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1184(AbstractMap abstractMap, String str) {
        if (abstractMap.containsKey(str)) {
            return false;
        }
        int size = abstractMap.size();
        Iterator it = f1368.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (abstractMap.containsKey((String) it.next())) {
                i++;
            }
        }
        return size >= i + 5;
    }
}
