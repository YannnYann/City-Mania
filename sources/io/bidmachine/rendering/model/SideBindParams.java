package io.bidmachine.rendering.model;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class SideBindParams {
    public final SideType a;
    public final String b;

    public SideBindParams(SideType targetSideType, String targetName) {
        Intrinsics.checkNotNullParameter(targetSideType, "targetSideType");
        Intrinsics.checkNotNullParameter(targetName, "targetName");
        this.a = targetSideType;
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = targetName.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.b = lowerCase;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(SideBindParams.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.bidmachine.rendering.model.SideBindParams");
        SideBindParams sideBindParams = (SideBindParams) obj;
        return this.a == sideBindParams.a && Intrinsics.areEqual(this.b, sideBindParams.b);
    }

    public final String getTargetName() {
        return this.b;
    }

    public final SideType getTargetSideType() {
        return this.a;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }
}
