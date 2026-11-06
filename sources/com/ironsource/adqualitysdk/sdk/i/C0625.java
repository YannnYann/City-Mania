package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᙇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0625 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List f2642;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int f2643;

    public C0625(C0646 c0646) {
        this.f2643 = c0646.f2673;
        Collections.unmodifiableList(new ArrayList(c0646.f2672));
        Collections.unmodifiableList(new ArrayList(c0646.f2671));
        Collections.unmodifiableMap(new HashMap(c0646.f2670));
        this.f2642 = Collections.unmodifiableList(new ArrayList(c0646.f2669));
        Collections.unmodifiableList(new ArrayList(c0646.f2668));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1407() {
        String string;
        List<Integer> list = this.f2642;
        if (list.isEmpty()) {
            string = StringFog.decrypt("Y5StTg==\n", "DfvDKyTqmWg=\n");
        } else {
            TreeSet<Integer> treeSet = new TreeSet();
            for (Integer num : list) {
                if (num != null) {
                    treeSet.add(num);
                }
            }
            if (treeSet.isEmpty()) {
                string = StringFog.decrypt("w75bLw==\n", "rdE1Sis+HN0=\n");
            } else {
                StringBuilder sb = new StringBuilder();
                boolean z = true;
                for (Integer num2 : treeSet) {
                    if (!z) {
                        sb.append(',');
                    }
                    sb.append(num2);
                    z = false;
                }
                string = sb.toString();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(StringFog.decrypt("4JCtjnVW9Pis\n", "lqKW/RY5hp0=\n"));
        sb2.append(this.f2643);
        sb2.append(StringFog.decrypt("2w==\n", "9MxBugYagPE=\n"));
        sb2.append(13);
        return AbstractC0202.m1159("qZRFakwiHJKo\n", "kucsDSJDcOE=\n", sb2, string);
    }
}
