package com.vungle.ads.internal.task;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static e a(String str, List staleAdDirs, int i) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            staleAdDirs = CollectionsKt__CollectionsKt.emptyList();
        }
        Intrinsics.checkNotNullParameter(staleAdDirs, "staleAdDirs");
        e eVarH = new e("CleanupJob").h();
        Bundle bundle = new Bundle();
        if (str != null) {
            bundle.putString("AD_ID_KEY", str);
        }
        if (str == null) {
            bundle.putStringArrayList("STALE_DIRS_KEY", new ArrayList<>(staleAdDirs));
        }
        return eVarH.a(bundle).a(str == null);
    }
}
