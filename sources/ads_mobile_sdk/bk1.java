package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class bk1 {
    public static final AdChoicesInfo a(ak1 ak1Var) {
        Intrinsics.checkNotNullParameter(ak1Var, "<this>");
        String str = ak1Var.a;
        List list = ak1Var.b;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((km1) it.next()).a());
        }
        return new AdChoicesInfo(str, arrayList);
    }
}
