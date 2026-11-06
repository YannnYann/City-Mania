package io.bidmachine.rendering.model;

import com.unity3d.services.UnityAdsConstants;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class Padding {
    public static final Companion Companion = new Companion(null);
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Padding parse(String str) {
            List listSplit$default = str != null ? StringsKt__StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null) : null;
            if (listSplit$default != null && listSplit$default.size() >= 4) {
                try {
                    return new Padding(Float.parseFloat(StringsKt__StringsKt.trim((String) listSplit$default.get(0)).toString()), Float.parseFloat(StringsKt__StringsKt.trim((String) listSplit$default.get(1)).toString()), Float.parseFloat(StringsKt__StringsKt.trim((String) listSplit$default.get(2)).toString()), Float.parseFloat(StringsKt__StringsKt.trim((String) listSplit$default.get(3)).toString()));
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        public Companion() {
        }
    }

    public Padding(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public final float getBottomDp() {
        return this.d;
    }

    public final float getLeftDp() {
        return this.a;
    }

    public final float getRightDp() {
        return this.c;
    }

    public final float getTopDp() {
        return this.b;
    }

    public final boolean isZero() {
        return this.a == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && this.b == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && this.c == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && this.d == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }
}
