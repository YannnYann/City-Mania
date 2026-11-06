package ads_mobile_sdk;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class uz implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((String) obj2).length()), Integer.valueOf(((String) obj).length()));
    }
}
