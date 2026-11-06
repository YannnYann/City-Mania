package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dc implements rh3 {
    public final Set a;

    public dc(Set requestTypes) {
        Intrinsics.checkNotNullParameter(requestTypes, "requestTypes");
        this.a = requestTypes;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AD_TYPE;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        Set set = this.a;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((j53) it.next()).a);
        }
        return new q01(new cc(arrayList));
    }
}
