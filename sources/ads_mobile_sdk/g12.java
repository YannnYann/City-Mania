package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ironsource.C3522b4;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g12 {
    public final Context a;
    public final CoroutineContext b;
    public final v42 c;
    public final g52 d;
    public final NativeRequest e;
    public final ex0 f;
    public final ur3 g;

    public g12(Context context, CoroutineContext backgroundContext, v42 nativeAssetsLoader, g52 nativeCustomAssetsLoader, NativeRequest nativeRequest, ex0 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(nativeAssetsLoader, "nativeAssetsLoader");
        Intrinsics.checkNotNullParameter(nativeCustomAssetsLoader, "nativeCustomAssetsLoader");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = context;
        this.b = backgroundContext;
        this.c = nativeAssetsLoader;
        this.d = nativeCustomAssetsLoader;
        this.e = nativeRequest;
        this.f = flags;
        this.g = traceLogger;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(ads_mobile_sdk.i2 r11, com.google.gson.JsonObject r12, ads_mobile_sdk.eo2 r13, kotlin.coroutines.Continuation r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof ads_mobile_sdk.u02
            if (r0 == 0) goto L13
            r0 = r14
            ads_mobile_sdk.u02 r0 = (ads_mobile_sdk.u02) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.u02 r0 = new ads_mobile_sdk.u02
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            ads_mobile_sdk.s02 r11 = r0.a
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: ads_mobile_sdk.w01 -> L2b
            goto L67
        L2b:
            r0 = move-exception
            r11 = r0
            goto L6d
        L2e:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L36:
            kotlin.ResultKt.throwOnFailure(r14)
            ads_mobile_sdk.s02 r6 = new ads_mobile_sdk.s02
            r6.<init>()
            android.content.Context r14 = r10.a
            ads_mobile_sdk.v01 r11 = r10.a(r14, r6, r11, r12)
            boolean r14 = r11 instanceof ads_mobile_sdk.i01
            if (r14 == 0) goto L4b
            ads_mobile_sdk.i01 r11 = (ads_mobile_sdk.i01) r11
            return r11
        L4b:
            java.lang.String r14 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r11, r14)
            ads_mobile_sdk.q01 r11 = (ads_mobile_sdk.q01) r11
            ads_mobile_sdk.d12 r4 = new ads_mobile_sdk.d12     // Catch: ads_mobile_sdk.w01 -> L2b
            r9 = 0
            r7 = r10
            r8 = r12
            r5 = r13
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: ads_mobile_sdk.w01 -> L2b
            r0.a = r6     // Catch: ads_mobile_sdk.w01 -> L2b
            r0.d = r3     // Catch: ads_mobile_sdk.w01 -> L2b
            java.lang.Object r11 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r4, r0)     // Catch: ads_mobile_sdk.w01 -> L2b
            if (r11 != r1) goto L66
            return r1
        L66:
            r11 = r6
        L67:
            ads_mobile_sdk.q01 r12 = new ads_mobile_sdk.q01
            r12.<init>(r11)
            return r12
        L6d:
            ads_mobile_sdk.i01 r11 = r11.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g12.b(ads_mobile_sdk.i2, com.google.gson.JsonObject, ads_mobile_sdk.eo2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.g12 r7, ads_mobile_sdk.s02 r8, ads_mobile_sdk.r31 r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g12.a(ads_mobile_sdk.g12, ads_mobile_sdk.s02, ads_mobile_sdk.r31, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0074 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:40:0x0082, B:42:0x0086, B:44:0x008a, B:46:0x008e, B:47:0x008f, B:48:0x0094, B:49:0x0095, B:50:0x009c, B:51:0x009d, B:52:0x00a4, B:53:0x00a5), top: B:58:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a5 A[Catch: all -> 0x0080, TRY_LEAVE, TryCatch #0 {all -> 0x0080, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:40:0x0082, B:42:0x0086, B:44:0x008a, B:46:0x008e, B:47:0x008f, B:48:0x0094, B:49:0x0095, B:50:0x009c, B:51:0x009d, B:52:0x00a4, B:53:0x00a5), top: B:58:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.i2 r5, com.google.gson.JsonObject r6, ads_mobile_sdk.eo2 r7, kotlin.coroutines.Continuation r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.t02
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.t02 r0 = (ads_mobile_sdk.t02) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.t02 r0 = new ads_mobile_sdk.t02
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            ads_mobile_sdk.rr3 r5 = r0.b
            ads_mobile_sdk.rr3 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2d
            goto L56
        L2d:
            r7 = move-exception
            goto L68
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.s11 r8 = ads_mobile_sdk.s11.CUI_NAME_LOAD_NATIVE_ASSETS
            java.util.WeakHashMap r2 = ads_mobile_sdk.hs3.a
            java.util.List r2 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            ads_mobile_sdk.rr3 r8 = ads_mobile_sdk.hs3.a(r8, r2, r3)
            r0.a = r8     // Catch: java.lang.Throwable -> L6a
            r0.b = r8     // Catch: java.lang.Throwable -> L6a
            r0.e = r3     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r5 = r4.b(r5, r6, r7, r0)     // Catch: java.lang.Throwable -> L6a
            if (r5 != r1) goto L53
            return r1
        L53:
            r6 = r8
            r8 = r5
            r5 = r6
        L56:
            ads_mobile_sdk.v01 r8 = (ads_mobile_sdk.v01) r8     // Catch: java.lang.Throwable -> L2d
            boolean r7 = r8 instanceof ads_mobile_sdk.i01     // Catch: java.lang.Throwable -> L2d
            if (r7 == 0) goto L63
            r7 = r8
            ads_mobile_sdk.i01 r7 = (ads_mobile_sdk.i01) r7     // Catch: java.lang.Throwable -> L2d
            r0 = 0
            ads_mobile_sdk.xs3.a(r7, r0)     // Catch: java.lang.Throwable -> L2d
        L63:
            r6 = 0
            kotlin.io.CloseableKt.closeFinally(r5, r6)
            return r8
        L68:
            r8 = r6
            goto L6d
        L6a:
            r5 = move-exception
            r7 = r5
            r5 = r8
        L6d:
            r8.b(r7)     // Catch: java.lang.Throwable -> L80
            boolean r6 = r7 instanceof ads_mobile_sdk.v24     // Catch: java.lang.Throwable -> L80
            if (r6 != 0) goto La5
            boolean r6 = r7 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L80
            if (r6 != 0) goto L82
            boolean r6 = r7 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L80
            if (r6 != 0) goto L82
            r8.a(r7)     // Catch: java.lang.Throwable -> L80
            goto L82
        L80:
            r6 = move-exception
            goto La6
        L82:
            boolean r6 = r7 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L80
            if (r6 != 0) goto L9d
            boolean r6 = r7 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L80
            if (r6 != 0) goto L95
            boolean r6 = r7 instanceof ads_mobile_sdk.w01     // Catch: java.lang.Throwable -> L80
            if (r6 == 0) goto L8f
            throw r7     // Catch: java.lang.Throwable -> L80
        L8f:
            ads_mobile_sdk.b01 r6 = new ads_mobile_sdk.b01     // Catch: java.lang.Throwable -> L80
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L80
            throw r6     // Catch: java.lang.Throwable -> L80
        L95:
            ads_mobile_sdk.wz0 r6 = new ads_mobile_sdk.wz0     // Catch: java.lang.Throwable -> L80
            java.util.concurrent.CancellationException r7 = (java.util.concurrent.CancellationException) r7     // Catch: java.lang.Throwable -> L80
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L80
            throw r6     // Catch: java.lang.Throwable -> L80
        L9d:
            ads_mobile_sdk.i21 r6 = new ads_mobile_sdk.i21     // Catch: java.lang.Throwable -> L80
            kotlinx.coroutines.TimeoutCancellationException r7 = (kotlinx.coroutines.TimeoutCancellationException) r7     // Catch: java.lang.Throwable -> L80
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L80
            throw r6     // Catch: java.lang.Throwable -> L80
        La5:
            throw r7     // Catch: java.lang.Throwable -> L80
        La6:
            throw r6     // Catch: java.lang.Throwable -> La7
        La7:
            r7 = move-exception
            kotlin.io.CloseableKt.closeFinally(r5, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g12.a(ads_mobile_sdk.i2, com.google.gson.JsonObject, ads_mobile_sdk.eo2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final v01 a(Context context, s02 s02Var, i2 i2Var, JsonObject jsonObject) {
        String asString;
        String asString2;
        String asString3;
        String asString4;
        String asString5;
        String asString6;
        String strA = ds1.a(jsonObject, "extra_response_info", "");
        if (strA.length() > 0) {
            try {
                s02Var.w = JsonParser.parseString(strA).getAsJsonObject();
            } catch (Exception e) {
                ((as3) this.g).a("Failed to parse extra_response_info", (Throwable) e);
            }
        }
        int iA = ds1.a(jsonObject, "template_id", -1);
        s02Var.a = iA;
        if (iA == 3) {
            s02Var.b = q02.b;
        } else {
            if (iA != 6) {
                return new m01("Invalid native ad template id!");
            }
            s02Var.b = q02.a;
        }
        JsonElement jsonElement = jsonObject.get("custom_template_id");
        String asString7 = jsonElement != null ? jsonElement.getAsString() : null;
        s02Var.c = asString7;
        if (s02Var.b == q02.b && asString7 == null) {
            return new m01("No custom template id for custom template ad response.");
        }
        s02Var.e = Double.valueOf(Double.parseDouble(ds1.a(jsonObject, "rating", "-1.0")));
        JsonElement jsonElement2 = jsonObject.get("headline");
        String asString8 = jsonElement2 != null ? jsonElement2.getAsString() : null;
        if (i2Var.d0) {
            int i = zn3.$r8$clinit;
            asString8 = yn3.a(context) + ": " + asString8;
        }
        if (asString8 != null) {
            s02Var.d.put("headline", asString8);
        }
        JsonElement jsonElement3 = jsonObject.get(C3522b4.i.E0);
        if (jsonElement3 != null && (asString6 = jsonElement3.getAsString()) != null) {
            s02Var.d.put(C3522b4.i.E0, asString6);
        }
        JsonElement jsonElement4 = jsonObject.get("call_to_action");
        if (jsonElement4 != null && (asString5 = jsonElement4.getAsString()) != null) {
            s02Var.d.put("call_to_action", asString5);
        }
        JsonElement jsonElement5 = jsonObject.get(C3522b4.i.U);
        if (jsonElement5 != null && (asString4 = jsonElement5.getAsString()) != null) {
            s02Var.d.put(C3522b4.i.U, asString4);
        }
        JsonElement jsonElement6 = jsonObject.get("price");
        if (jsonElement6 != null && (asString3 = jsonElement6.getAsString()) != null) {
            s02Var.d.put("price", asString3);
        }
        JsonElement jsonElement7 = jsonObject.get(C3522b4.i.F0);
        if (jsonElement7 != null && (asString2 = jsonElement7.getAsString()) != null) {
            s02Var.d.put(C3522b4.i.F0, asString2);
        }
        JsonElement jsonElement8 = jsonObject.get("creative_summary");
        if (jsonElement8 != null && (asString = jsonElement8.getAsString()) != null) {
            s02Var.d.put("creative_summary", asString);
        }
        String strA2 = ds1.a(jsonObject, "app_id", "");
        if (strA2.length() > 0) {
            s02Var.d.put(C3522b4.i.V, strA2);
        }
        s02Var.u = this.e.getAdChoicesPlacement();
        return new q01(Unit.INSTANCE);
    }
}
