package ads_mobile_sdk;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class s8 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt__ComparisonsKt.compareValues(obj != null ? obj.toString() : null, obj2 != null ? obj2.toString() : null);
    }
}
