package ads_mobile_sdk;

import android.content.Context;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i04 {
    public final ViewGroup.LayoutParams a;
    public final int b;
    public final ViewGroup c;
    public final Context d;

    public i04(ViewGroup.LayoutParams layoutParams, int i, ViewGroup parent, Context originalContext) {
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(originalContext, "originalContext");
        this.a = layoutParams;
        this.b = i;
        this.c = parent;
        this.d = originalContext;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i04)) {
            return false;
        }
        i04 i04Var = (i04) obj;
        return Intrinsics.areEqual(this.a, i04Var.a) && this.b == i04Var.b && Intrinsics.areEqual(this.c, i04Var.c) && Intrinsics.areEqual(this.d, i04Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + y1.a(this.b, this.a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        return "WebViewParentLayoutInfo(layoutParams=" + this.a + ", index=" + this.b + ", parent=" + this.c + ", originalContext=" + this.d + ")";
    }
}
