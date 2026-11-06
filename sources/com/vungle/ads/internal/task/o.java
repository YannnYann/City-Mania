package com.vungle.ads.internal.task;

import android.content.Context;
import com.vungle.ads.internal.util.PathProvider;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class o implements d {
    public final Context a;
    public final PathProvider b;

    public o(Context context, PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.a = context;
        this.b = pathProvider;
    }

    public final c a(String tag) throws n {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (tag.length() == 0) {
            throw new n("Job tag is null");
        }
        if (Intrinsics.areEqual(tag, "CleanupJob")) {
            return new b(this.a, this.b);
        }
        if (Intrinsics.areEqual(tag, "ResendTpatJob")) {
            return new l(this.a, this.b);
        }
        throw new n(com.iab.omid.library.vungle.d.a("Unknown Job Type ", tag));
    }
}
