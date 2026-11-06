package ads_mobile_sdk;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ml2 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((d9) obj).w()), Long.valueOf(((d9) obj2).w()));
    }
}
