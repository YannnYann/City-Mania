package io.bidmachine.utils;

/* JADX INFO: loaded from: classes5.dex */
public final class IabUtilsKt {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final io.bidmachine.utils.BMError toBMError(io.bidmachine.iab.IabError r3) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            int r0 = r3.getCode()
            r1 = 1
            if (r0 == r1) goto L38
            r1 = 3
            if (r0 == r1) goto L30
            r1 = 5
            if (r0 == r1) goto L28
            r1 = 6
            if (r0 == r1) goto L20
            r1 = 7
            if (r0 == r1) goto L30
            io.bidmachine.utils.BMError r1 = io.bidmachine.utils.BMError.InternalUnknownError
            java.lang.String r2 = "{\n            BMError.In…nalUnknownError\n        }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            goto L3f
        L20:
            io.bidmachine.utils.BMError r1 = io.bidmachine.utils.BMError.Expired
            java.lang.String r2 = "{\n            BMError.Expired\n        }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            goto L3f
        L28:
            io.bidmachine.utils.BMError r1 = io.bidmachine.utils.BMError.PlaceholderTimeout
            java.lang.String r2 = "{\n            BMError.PlaceholderTimeout\n        }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            goto L3f
        L30:
            io.bidmachine.utils.BMError r1 = io.bidmachine.utils.BMError.NoFill
            java.lang.String r2 = "{\n            BMError.NoFill\n        }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            goto L3f
        L38:
            io.bidmachine.utils.BMError r1 = io.bidmachine.utils.BMError.NoConnection
            java.lang.String r2 = "{\n            BMError.NoConnection\n        }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
        L3f:
            io.bidmachine.utils.BMError r2 = new io.bidmachine.utils.BMError
            java.lang.String r3 = r3.getMessage()
            r2.<init>(r1, r0, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.utils.IabUtilsKt.toBMError(io.bidmachine.iab.IabError):io.bidmachine.utils.BMError");
    }
}
