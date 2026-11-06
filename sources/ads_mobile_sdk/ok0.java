package ads_mobile_sdk;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ok0 {
    public static final Uri q = Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push");
    public final CoroutineContext a;
    public final CoroutineScope b;
    public final g83 c;
    public final ur3 d;
    public final f0 e;
    public final ex0 f;
    public final o21 g;
    public final qn h;
    public final e01 i;
    public final if1 j;
    public final AtomicBoolean k;
    public String l;
    public String m;
    public JsonObject n;
    public ks3 o;
    public String p;

    public ok0(CoroutineContext uiContext, CoroutineScope backgroundScope, g83 rootTraceCreator, ur3 traceLogger, f0 activityTracker, ex0 flags, o21 gmaUtil, qn appState, e01 httpClient, if1 inspectorManager, String afmaVersion) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        this.a = uiContext;
        this.b = backgroundScope;
        this.c = rootTraceCreator;
        this.d = traceLogger;
        this.e = activityTracker;
        this.f = flags;
        this.g = gmaUtil;
        this.h = appState;
        this.i = httpClient;
        this.j = inspectorManager;
        this.k = new AtomicBoolean(false);
        this.o = js3.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.uj0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.uj0 r0 = (ads_mobile_sdk.uj0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.uj0 r0 = new ads_mobile_sdk.uj0
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            ads_mobile_sdk.ok0 r1 = r0.c
            ads_mobile_sdk.o21 r2 = r0.b
            ads_mobile_sdk.ok0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L70
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.o21 r2 = r8.g
            ads_mobile_sdk.ex0 r9 = r8.f
            r9.getClass()
            java.lang.String r5 = "key"
            java.lang.String r6 = "gads:drx_debug:debug_device_linking_url"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r5)
            java.lang.String r5 = "defaultValue"
            java.lang.String r7 = "https://www.google.com/dfp/linkDevice"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r5)
            ads_mobile_sdk.wr r5 = ads_mobile_sdk.yr.o
            java.lang.Object r9 = r9.a(r6, r7, r5)
            java.lang.String r9 = (java.lang.String) r9
            r0.a = r8
            r0.b = r2
            r0.c = r8
            r0.f = r3
            java.lang.String r3 = r8.l
            ads_mobile_sdk.if1 r5 = r8.j
            r5.getClass()
            java.lang.Object r9 = ads_mobile_sdk.if1.a(r5, r9, r3, r4, r0)
            if (r9 != r1) goto L6e
            return r1
        L6e:
            r0 = r8
            r1 = r0
        L70:
            android.net.Uri r9 = (android.net.Uri) r9
            r1.getClass()
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r5 = "android.intent.action.VIEW"
            r3.<init>(r5, r9)
            android.os.Bundle r9 = new android.os.Bundle
            r9.<init>()
            java.lang.String r5 = "android.support.customtabs.extra.SESSION"
            r9.putBinder(r5, r4)
            java.lang.String r1 = r1.p
            if (r1 == 0) goto L8c
            r4 = r1
            goto L91
        L8c:
            java.lang.String r1 = "packageName"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)
        L91:
            java.lang.String r1 = "com.android.browser.application_id"
            r9.putString(r1, r4)
            r3.putExtras(r9)
            r2.a(r3)
            java.util.concurrent.atomic.AtomicBoolean r9 = r0.k
            r0 = 0
            r9.set(r0)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0228 A[Catch: all -> 0x0234, TryCatch #3 {all -> 0x0234, blocks: (B:115:0x0221, B:117:0x0228, B:119:0x022c, B:121:0x0230, B:124:0x0237, B:126:0x023b, B:128:0x023f, B:130:0x0243, B:131:0x0244, B:132:0x0249, B:133:0x024a, B:134:0x0251, B:135:0x0252, B:136:0x0259, B:137:0x025a), top: B:147:0x0221 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x025a A[Catch: all -> 0x0234, TRY_LEAVE, TryCatch #3 {all -> 0x0234, blocks: (B:115:0x0221, B:117:0x0228, B:119:0x022c, B:121:0x0230, B:124:0x0237, B:126:0x023b, B:128:0x023f, B:130:0x0243, B:131:0x0244, B:132:0x0249, B:133:0x024a, B:134:0x0251, B:135:0x0252, B:136:0x0259, B:137:0x025a), top: B:147:0x0221 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0130 A[Catch: all -> 0x013c, TryCatch #7 {all -> 0x013c, blocks: (B:56:0x0129, B:58:0x0130, B:60:0x0134, B:62:0x0138, B:65:0x013f, B:67:0x0143, B:69:0x0147, B:71:0x014b, B:72:0x014c, B:73:0x0151, B:74:0x0152, B:75:0x0159, B:76:0x015a, B:77:0x0161, B:78:0x0162), top: B:153:0x0129 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0162 A[Catch: all -> 0x013c, TRY_LEAVE, TryCatch #7 {all -> 0x013c, blocks: (B:56:0x0129, B:58:0x0130, B:60:0x0134, B:62:0x0138, B:65:0x013f, B:67:0x0143, B:69:0x0147, B:71:0x014b, B:72:0x014c, B:73:0x0151, B:74:0x0152, B:75:0x0159, B:76:0x015a, B:77:0x0161, B:78:0x0162), top: B:153:0x0129 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 609
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.d(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0305 A[Catch: all -> 0x0311, TryCatch #6 {all -> 0x0311, blocks: (B:118:0x02fe, B:120:0x0305, B:122:0x0309, B:124:0x030d, B:127:0x0314, B:129:0x0318, B:131:0x031c, B:133:0x0320, B:134:0x0321, B:135:0x0326, B:136:0x0327, B:137:0x032e, B:138:0x032f, B:139:0x0336, B:140:0x0337), top: B:244:0x02fe }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0337 A[Catch: all -> 0x0311, TRY_LEAVE, TryCatch #6 {all -> 0x0311, blocks: (B:118:0x02fe, B:120:0x0305, B:122:0x0309, B:124:0x030d, B:127:0x0314, B:129:0x0318, B:131:0x031c, B:133:0x0320, B:134:0x0321, B:135:0x0326, B:136:0x0327, B:137:0x032e, B:138:0x032f, B:139:0x0336, B:140:0x0337), top: B:244:0x02fe }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0387 A[Catch: all -> 0x03d2, TRY_LEAVE, TryCatch #9 {all -> 0x03d2, blocks: (B:155:0x037f, B:157:0x0387), top: B:248:0x037f }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03b2 A[Catch: all -> 0x0079, TryCatch #16 {all -> 0x0079, blocks: (B:195:0x04ca, B:18:0x0069, B:24:0x0085, B:166:0x03c7, B:27:0x0099, B:161:0x03aa, B:163:0x03b2, B:174:0x03df, B:30:0x00b5), top: B:239:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04e5 A[Catch: all -> 0x04f1, TryCatch #7 {all -> 0x04f1, blocks: (B:206:0x04de, B:208:0x04e5, B:210:0x04e9, B:212:0x04ed, B:215:0x04f4, B:217:0x04f8, B:219:0x04fc, B:221:0x0500, B:222:0x0501, B:223:0x0506, B:224:0x0507, B:225:0x050e, B:226:0x050f, B:227:0x0516, B:228:0x0517), top: B:245:0x04de }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0517 A[Catch: all -> 0x04f1, TRY_LEAVE, TryCatch #7 {all -> 0x04f1, blocks: (B:206:0x04de, B:208:0x04e5, B:210:0x04e9, B:212:0x04ed, B:215:0x04f4, B:217:0x04f8, B:219:0x04fc, B:221:0x0500, B:222:0x0501, B:223:0x0506, B:224:0x0507, B:225:0x050e, B:226:0x050f, B:227:0x0516, B:228:0x0517), top: B:245:0x04de }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a6 A[Catch: all -> 0x01ed, TRY_LEAVE, TryCatch #4 {all -> 0x01ed, blocks: (B:65:0x019e, B:67:0x01a6), top: B:240:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cd A[Catch: all -> 0x012a, TRY_LEAVE, TryCatch #3 {all -> 0x012a, blocks: (B:46:0x011d, B:71:0x01c5, B:73:0x01cd, B:84:0x01f5, B:51:0x013d), top: B:239:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e9 A[PHI: r4 r10 r14 r18 r19
      0x01e9: PHI (r4v16 java.io.Closeable) = (r4v11 java.io.Closeable), (r4v17 java.io.Closeable) binds: [B:83:0x01f1, B:72:0x01cb] A[DONT_GENERATE, DONT_INLINE]
      0x01e9: PHI (r10v10 ads_mobile_sdk.ok0) = (r10v6 ads_mobile_sdk.ok0), (r10v12 ads_mobile_sdk.ok0) binds: [B:83:0x01f1, B:72:0x01cb] A[DONT_GENERATE, DONT_INLINE]
      0x01e9: PHI (r14v10 ads_mobile_sdk.rr3) = (r14v7 ads_mobile_sdk.rr3), (r14v12 ads_mobile_sdk.rr3) binds: [B:83:0x01f1, B:72:0x01cb] A[DONT_GENERATE, DONT_INLINE]
      0x01e9: PHI (r18v5 android.app.Activity) = (r18v2 android.app.Activity), (r18v6 android.app.Activity) binds: [B:83:0x01f1, B:72:0x01cb] A[DONT_GENERATE, DONT_INLINE]
      0x01e9: PHI (r19v3 java.lang.String) = (r19v1 java.lang.String), (r19v4 java.lang.String) binds: [B:83:0x01f1, B:72:0x01cb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x025f  */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v28 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object e(kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 1336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.e(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x01e5, code lost:
    
        if (r1.a(r4, r12, r6) == r0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0114, code lost:
    
        if (r1.a(r4, r12, r6) == r0) goto L118;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01a7 A[Catch: all -> 0x01ca, TryCatch #8 {all -> 0x01ca, blocks: (B:104:0x01a1, B:106:0x01a7, B:109:0x01c5, B:114:0x01cd, B:116:0x01d1), top: B:168:0x01a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01cd A[Catch: all -> 0x01ca, TryCatch #8 {all -> 0x01ca, blocks: (B:104:0x01a1, B:106:0x01a7, B:109:0x01c5, B:114:0x01cd, B:116:0x01d1), top: B:168:0x01a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0203 A[Catch: all -> 0x020f, TryCatch #10 {all -> 0x020f, blocks: (B:128:0x01fc, B:130:0x0203, B:132:0x0207, B:134:0x020b, B:137:0x0212, B:139:0x0216, B:141:0x021a, B:143:0x021e, B:144:0x021f, B:145:0x0224, B:146:0x0225, B:147:0x022c, B:148:0x022d, B:149:0x0234, B:150:0x0235), top: B:170:0x01fc }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0235 A[Catch: all -> 0x020f, TRY_LEAVE, TryCatch #10 {all -> 0x020f, blocks: (B:128:0x01fc, B:130:0x0203, B:132:0x0207, B:134:0x020b, B:137:0x0212, B:139:0x0216, B:141:0x021a, B:143:0x021e, B:144:0x021f, B:145:0x0224, B:146:0x0225, B:147:0x022c, B:148:0x022d, B:149:0x0234, B:150:0x0235), top: B:170:0x01fc }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d4 A[Catch: all -> 0x00f8, TryCatch #4 {all -> 0x00f8, blocks: (B:45:0x00ce, B:47:0x00d4, B:50:0x00f2, B:55:0x00fb, B:57:0x00ff), top: B:162:0x00ce }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fb A[Catch: all -> 0x00f8, TryCatch #4 {all -> 0x00f8, blocks: (B:45:0x00ce, B:47:0x00d4, B:50:0x00f2, B:55:0x00fb, B:57:0x00ff), top: B:162:0x00ce }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0132 A[Catch: all -> 0x013e, TryCatch #9 {all -> 0x013e, blocks: (B:67:0x012b, B:69:0x0132, B:71:0x0136, B:73:0x013a, B:76:0x0141, B:78:0x0145, B:80:0x0149, B:82:0x014d, B:83:0x014e, B:84:0x0153, B:85:0x0154, B:86:0x015b, B:87:0x015c, B:88:0x0163, B:89:0x0164), top: B:169:0x012b }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0164 A[Catch: all -> 0x013e, TRY_LEAVE, TryCatch #9 {all -> 0x013e, blocks: (B:67:0x012b, B:69:0x0132, B:71:0x0136, B:73:0x013a, B:76:0x0141, B:78:0x0145, B:80:0x0149, B:82:0x014d, B:83:0x014e, B:84:0x0153, B:85:0x0154, B:86:0x015b, B:87:0x015c, B:88:0x0163, B:89:0x0164), top: B:169:0x012b }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object b(ads_mobile_sdk.ok0 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 592
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.b(ads_mobile_sdk.ok0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0204 A[Catch: all -> 0x00fe, TRY_LEAVE, TryCatch #18 {all -> 0x00fe, blocks: (B:94:0x01ea, B:97:0x01f3, B:100:0x0204, B:55:0x00f8, B:71:0x015c, B:74:0x0175, B:76:0x0179, B:110:0x0218), top: B:261:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0218 A[Catch: all -> 0x00fe, TRY_ENTER, TRY_LEAVE, TryCatch #18 {all -> 0x00fe, blocks: (B:94:0x01ea, B:97:0x01f3, B:100:0x0204, B:55:0x00f8, B:71:0x015c, B:74:0x0175, B:76:0x0179, B:110:0x0218), top: B:261:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0241 A[Catch: all -> 0x024d, TryCatch #5 {all -> 0x024d, blocks: (B:119:0x023a, B:121:0x0241, B:123:0x0245, B:125:0x0249, B:128:0x0250, B:130:0x0254, B:132:0x0258, B:134:0x025c, B:135:0x025d, B:136:0x0262, B:137:0x0263, B:138:0x026a, B:139:0x026b, B:140:0x0272, B:141:0x0273), top: B:240:0x023a }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0273 A[Catch: all -> 0x024d, TRY_LEAVE, TryCatch #5 {all -> 0x024d, blocks: (B:119:0x023a, B:121:0x0241, B:123:0x0245, B:125:0x0249, B:128:0x0250, B:130:0x0254, B:132:0x0258, B:134:0x025c, B:135:0x025d, B:136:0x0262, B:137:0x0263, B:138:0x026a, B:139:0x026b, B:140:0x0272, B:141:0x0273), top: B:240:0x023a }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x036b A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #16 {all -> 0x009d, blocks: (B:179:0x0350, B:182:0x035a, B:185:0x036b, B:32:0x0096, B:156:0x02c1, B:159:0x02da, B:161:0x02de, B:195:0x037e), top: B:259:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x037e A[Catch: all -> 0x009d, TRY_ENTER, TRY_LEAVE, TryCatch #16 {all -> 0x009d, blocks: (B:179:0x0350, B:182:0x035a, B:185:0x036b, B:32:0x0096, B:156:0x02c1, B:159:0x02da, B:161:0x02de, B:195:0x037e), top: B:259:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x03a8 A[Catch: all -> 0x03b4, TryCatch #9 {all -> 0x03b4, blocks: (B:206:0x03a1, B:208:0x03a8, B:210:0x03ac, B:212:0x03b0, B:215:0x03b7, B:217:0x03bb, B:219:0x03bf, B:221:0x03c3, B:222:0x03c4, B:223:0x03c9, B:224:0x03ca, B:225:0x03d1, B:226:0x03d2, B:227:0x03d9, B:228:0x03da), top: B:247:0x03a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03da A[Catch: all -> 0x03b4, TRY_LEAVE, TryCatch #9 {all -> 0x03b4, blocks: (B:206:0x03a1, B:208:0x03a8, B:210:0x03ac, B:212:0x03b0, B:215:0x03b7, B:217:0x03bb, B:219:0x03bf, B:221:0x03c3, B:222:0x03c4, B:223:0x03c9, B:224:0x03ca, B:225:0x03d1, B:226:0x03d2, B:227:0x03d9, B:228:0x03da), top: B:247:0x03a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0203  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v20, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v20, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v28, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v34, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v8, types: [ads_mobile_sdk.rr3] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.ok0 r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 1020
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.a(ads_mobile_sdk.ok0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void c(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void c(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void d(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0147 A[Catch: all -> 0x01da, TryCatch #3 {all -> 0x01da, blocks: (B:73:0x01d1, B:81:0x01e8, B:83:0x01f1, B:28:0x007d, B:44:0x0141, B:46:0x0147, B:47:0x014b), top: B:122:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014b A[Catch: all -> 0x01da, TRY_LEAVE, TryCatch #3 {all -> 0x01da, blocks: (B:73:0x01d1, B:81:0x01e8, B:83:0x01f1, B:28:0x007d, B:44:0x0141, B:46:0x0147, B:47:0x014b), top: B:122:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f1 A[Catch: all -> 0x01da, TRY_LEAVE, TryCatch #3 {all -> 0x01da, blocks: (B:73:0x01d1, B:81:0x01e8, B:83:0x01f1, B:28:0x007d, B:44:0x0141, B:46:0x0147, B:47:0x014b), top: B:122:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r15v6, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 577
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void d(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        o21 o21Var = this$0.g;
        Intent intent = new Intent("android.intent.action.VIEW", q);
        Bundle bundle = new Bundle();
        String str = null;
        bundle.putBinder("android.support.customtabs.extra.SESSION", null);
        String str2 = this$0.p;
        if (str2 != null) {
            str = str2;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(HandleInvocationsFromAdViewer.KEY_PACKAGE_NAME);
        }
        bundle.putString("com.android.browser.application_id", str);
        intent.putExtras(bundle);
        o21Var.a(intent);
    }

    public final Object b(Continuation continuation) {
        if1 if1Var = this.j;
        ae1 ae1Var = ae1.d;
        OnAdInspectorClosedListener onAdInspectorClosedListener = new OnAdInspectorClosedListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda3
            @Override // com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener
            public final void onAdInspectorClosed(AdInspectorError adInspectorError) {
                ok0.a(this.f$0, adInspectorError);
            }
        };
        if1Var.getClass();
        Object objA = if1.a(if1Var, ae1Var, onAdInspectorClosedListener, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public static final void b(ok0 this$0, String diagnosticText, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(diagnosticText, "$diagnosticText");
        boolean zM0 = this$0.f.M0();
        Activity activityG = this$0.e.g();
        if (activityG == null) {
            return;
        }
        if (zM0) {
            byte[] bytes = diagnosticText.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            if (bytes.length > 100000) {
                Toast.makeText(activityG.getApplicationContext(), "Text too large to share, please use Copy", 1).show();
                CoroutineScope coroutineScope = this$0.b;
                rj0 block = new rj0(this$0, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                return;
            }
        }
        this$0.g.a(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", diagnosticText), "Share via"));
        if (zM0) {
            return;
        }
        this$0.k.set(false);
    }

    public static final void b(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CoroutineScope coroutineScope = this$0.b;
        ak0 block = new ak0(this$0, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static final void b(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CoroutineScope coroutineScope = this$0.b;
        bk0 block = new bk0(this$0, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final String a(String str, boolean z) {
        if (str.length() == 0) {
            return "No debug information";
        }
        Uri uriBuild = new Uri.Builder().encodedQuery(new Regex("\\+").replace(str, "%20")).build();
        o21 o21Var = this.g;
        Intrinsics.checkNotNull(uriBuild);
        String string = StringsKt__StringsKt.trim(CollectionsKt___CollectionsKt.joinToString$default(o21Var.d(uriBuild).entrySet(), "\n\n", null, null, 0, null, new qj0(this, z), 30, null)).toString();
        return StringsKt__StringsKt.isBlank(string) ? "No debug information" : string;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.app.Activity r9, java.lang.String r10, ads_mobile_sdk.nk0 r11) {
        /*
            r8 = this;
            int r0 = r10.hashCode()
            switch(r0) {
                case 48: goto L4d;
                case 49: goto L33;
                case 50: goto Lb;
                default: goto L7;
            }
        L7:
            r0 = r8
            r3 = r9
            r5 = r11
            goto L58
        Lb:
            java.lang.String r0 = "2"
            boolean r0 = r10.equals(r0)
            if (r0 == 0) goto L7
            r2 = 0
            r7 = 1
            java.lang.String r3 = "There was no creative pushed from DFP to the device."
            r5 = 1
            r1 = r8
            r4 = r9
            r6 = r11
            java.lang.Object r9 = a(r1, r2, r3, r4, r5, r6, r7)
            r0 = r1
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto L27
            goto L29
        L27:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
        L29:
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto L30
            return r9
        L30:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L33:
            r0 = r8
            r3 = r9
            r5 = r11
            java.lang.String r9 = "1"
            boolean r9 = r10.equals(r9)
            if (r9 != 0) goto L3f
            goto L58
        L3f:
            java.lang.Object r9 = r8.c(r5)
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto L4a
            return r9
        L4a:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L4d:
            r0 = r8
            r3 = r9
            r5 = r11
            java.lang.String r9 = "0"
            boolean r9 = r10.equals(r9)
            if (r9 != 0) goto L9e
        L58:
            int r9 = r10.length()
            r11 = 50
            int r9 = java.lang.Math.min(r11, r9)
            r11 = 0
            java.lang.String r9 = r10.substring(r11, r9)
            java.lang.String r10 = "substring(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Invalid creative preview status: "
            r10.append(r11)
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r10 = 0
            r11 = 6
            ads_mobile_sdk.xs3.a(r9, r10, r11)
            r4 = 0
            r6 = 10
            r1 = 1
            r2 = 0
            java.lang.Object r9 = a(r0, r1, r2, r3, r4, r5, r6)
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto L92
            goto L94
        L92:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
        L94:
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto L9b
            return r9
        L9b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L9e:
            r1 = 0
            r6 = 1
            java.lang.String r2 = "The device is successfully linked for creative preview."
            r4 = 0
            r0 = r8
            java.lang.Object r9 = a(r0, r1, r2, r3, r4, r5, r6)
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto Laf
            goto Lb1
        Laf:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
        Lb1:
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto Lb8
            return r9
        Lb8:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.a(android.app.Activity, java.lang.String, ads_mobile_sdk.nk0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01bc A[Catch: all -> 0x01c8, TryCatch #2 {all -> 0x01c8, blocks: (B:109:0x01b5, B:111:0x01bc, B:113:0x01c0, B:115:0x01c4, B:118:0x01cb, B:120:0x01cf, B:122:0x01d3, B:124:0x01d7, B:125:0x01d8, B:126:0x01dd, B:127:0x01de, B:128:0x01e5, B:129:0x01e6, B:130:0x01ed, B:131:0x01ee), top: B:139:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01ee A[Catch: all -> 0x01c8, TRY_LEAVE, TryCatch #2 {all -> 0x01c8, blocks: (B:109:0x01b5, B:111:0x01bc, B:113:0x01c0, B:115:0x01c4, B:118:0x01cb, B:120:0x01cf, B:122:0x01d3, B:124:0x01d7, B:125:0x01d8, B:126:0x01dd, B:127:0x01de, B:128:0x01e5, B:129:0x01e6, B:130:0x01ed, B:131:0x01ee), top: B:139:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0107 A[Catch: all -> 0x0113, TryCatch #8 {all -> 0x0113, blocks: (B:55:0x0100, B:57:0x0107, B:59:0x010b, B:61:0x010f, B:64:0x0116, B:66:0x011a, B:68:0x011e, B:70:0x0122, B:71:0x0123, B:72:0x0128, B:73:0x0129, B:74:0x0130, B:75:0x0131, B:76:0x0138, B:77:0x0139), top: B:149:0x0100 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0139 A[Catch: all -> 0x0113, TRY_LEAVE, TryCatch #8 {all -> 0x0113, blocks: (B:55:0x0100, B:57:0x0107, B:59:0x010b, B:61:0x010f, B:64:0x0116, B:66:0x011a, B:68:0x011e, B:70:0x0122, B:71:0x0123, B:72:0x0128, B:73:0x0129, B:74:0x0130, B:75:0x0131, B:76:0x0138, B:77:0x0139), top: B:149:0x0100 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.ok0 r16, java.lang.String r17, java.lang.String r18, com.google.gson.JsonObject r19, ads_mobile_sdk.ks3 r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 501
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.a(ads_mobile_sdk.ok0, java.lang.String, java.lang.String, com.google.gson.JsonObject, ads_mobile_sdk.ks3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void a(ok0 this$0, AdInspectorError adInspectorError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (adInspectorError != null) {
            CoroutineScope coroutineScope = this$0.b;
            tj0 block = new tj0(this$0, adInspectorError, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public static final void a(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void a(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void a(ok0 this$0, String diagnosticText, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(diagnosticText, "$diagnosticText");
        Activity activityG = this$0.e.g();
        if (activityG != null) {
            ClipboardManager clipboardManager = (ClipboardManager) activityG.getSystemService(ClipboardManager.class);
            if (clipboardManager == null) {
                Toast.makeText(activityG.getApplicationContext(), "Copy failed, unable to access clipboard", 0).show();
            } else {
                try {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText("Ad Information", diagnosticText));
                    Toast.makeText(activityG.getApplicationContext(), "Copied to clipboard", 0).show();
                } catch (Throwable unused) {
                    Toast.makeText(activityG.getApplicationContext(), "Copy failed, possibly due to size", 1).show();
                }
            }
        }
        CoroutineScope coroutineScope = this$0.b;
        wj0 block = new wj0(this$0, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static final void a(AtomicInteger selectedGestureIndex, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(selectedGestureIndex, "$selectedGestureIndex");
        selectedGestureIndex.set(i);
    }

    public static final void a(ok0 this$0, AtomicInteger selectedGestureIndex, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(selectedGestureIndex, "$selectedGestureIndex");
        CoroutineScope coroutineScope = this$0.b;
        ck0 block = new ck0(selectedGestureIndex, i, i2, this$0, i3, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0165, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r4, r5, r2) == r3) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.app.Activity r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 363
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.a(android.app.Activity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void a(int i, ok0 this$0, Ref$IntRef adInspectorSettingsIndex, Ref$IntRef openAdInspectorIndex, int i2, int i3, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInspectorSettingsIndex, "$adInspectorSettingsIndex");
        Intrinsics.checkNotNullParameter(openAdInspectorIndex, "$openAdInspectorIndex");
        if (i4 == i) {
            xs3.a(this$0.b, new fk0(this$0, null));
            return;
        }
        if (i4 == adInspectorSettingsIndex.element) {
            xs3.a(this$0.b, new gk0(this$0, null));
            return;
        }
        if (i4 == openAdInspectorIndex.element) {
            xs3.a(this$0.b, new hk0(this$0, null));
            return;
        }
        if (i4 == i2) {
            xs3.a(this$0.b, new ik0(this$0, null));
            return;
        }
        if (i4 == i3) {
            xs3.a(this$0.b, new jk0(this$0, null));
            return;
        }
        Splitter splitter = f01.a;
        f01.c("Unsupported debug menu option: " + i4, null);
        this$0.k.set(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r7, java.lang.String r8, android.app.Activity r9, boolean r10, kotlin.coroutines.Continuation r11) {
        /*
            r6 = this;
            boolean r0 = r11 instanceof ads_mobile_sdk.kk0
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.kk0 r0 = (ads_mobile_sdk.kk0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.kk0 r0 = new ads_mobile_sdk.kk0
            r0.<init>(r6, r11)
        L18:
            java.lang.Object r11 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            ads_mobile_sdk.ok0 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L2d
            goto Lbb
        L2d:
            r8 = move-exception
            goto L9b
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.ResultKt.throwOnFailure(r11)
            if (r9 != 0) goto L46
            ads_mobile_sdk.f0 r9 = r6.e     // Catch: java.lang.Throwable -> L43
            android.app.Activity r9 = r9.g()     // Catch: java.lang.Throwable -> L43
            goto L46
        L43:
            r8 = move-exception
            r7 = r6
            goto L9b
        L46:
            r11 = 0
            if (r9 != 0) goto L57
            java.lang.String r7 = "No Activity context available for showing status dialog."
            r8 = 6
            ads_mobile_sdk.xs3.a(r7, r11, r8)     // Catch: java.lang.Throwable -> L43
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.k     // Catch: java.lang.Throwable -> L43
            r7.set(r4)     // Catch: java.lang.Throwable -> L43
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L43
            return r7
        L57:
            android.app.AlertDialog$Builder r2 = new android.app.AlertDialog$Builder     // Catch: java.lang.Throwable -> L43
            r5 = 16974374(0x1030226, float:2.4062441E-38)
            r2.<init>(r9, r5)     // Catch: java.lang.Throwable -> L43
            if (r7 == 0) goto L64
            java.lang.String r7 = "Error"
            goto L66
        L64:
            java.lang.String r7 = "Info"
        L66:
            r2.setTitle(r7)     // Catch: java.lang.Throwable -> L43
            r2.setMessage(r8)     // Catch: java.lang.Throwable -> L43
            ads_mobile_sdk.ok0$$ExternalSyntheticLambda12 r7 = new ads_mobile_sdk.ok0$$ExternalSyntheticLambda12     // Catch: java.lang.Throwable -> L43
            r7.<init>()     // Catch: java.lang.Throwable -> L43
            r2.setOnDismissListener(r7)     // Catch: java.lang.Throwable -> L43
            java.lang.String r7 = "Dismiss"
            if (r10 == 0) goto L86
            r2.setNegativeButton(r7, r11)     // Catch: java.lang.Throwable -> L43
            java.lang.String r7 = "Learn More"
            ads_mobile_sdk.ok0$$ExternalSyntheticLambda13 r8 = new ads_mobile_sdk.ok0$$ExternalSyntheticLambda13     // Catch: java.lang.Throwable -> L43
            r8.<init>()     // Catch: java.lang.Throwable -> L43
            r2.setPositiveButton(r7, r8)     // Catch: java.lang.Throwable -> L43
            goto L89
        L86:
            r2.setNeutralButton(r7, r11)     // Catch: java.lang.Throwable -> L43
        L89:
            kotlin.coroutines.CoroutineContext r7 = r6.a     // Catch: java.lang.Throwable -> L43
            ads_mobile_sdk.lk0 r8 = new ads_mobile_sdk.lk0     // Catch: java.lang.Throwable -> L43
            r8.<init>(r2, r11)     // Catch: java.lang.Throwable -> L43
            r0.a = r6     // Catch: java.lang.Throwable -> L43
            r0.d = r3     // Catch: java.lang.Throwable -> L43
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r8, r0)     // Catch: java.lang.Throwable -> L43
            if (r7 != r1) goto Lbb
            return r1
        L9b:
            java.lang.String r9 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r9)
            ads_mobile_sdk.rr3 r9 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r10 = r9.e()
            r10.m = r4
            r9.a(r8)
            java.util.concurrent.atomic.AtomicBoolean r9 = r7.k
            r9.set(r4)
            ads_mobile_sdk.ur3 r7 = r7.d
            ads_mobile_sdk.as3 r7 = (ads_mobile_sdk.as3) r7
            java.lang.String r9 = "Failed to show status dialog"
            r7.a(r9, r8)
        Lbb:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok0.a(boolean, java.lang.String, android.app.Activity, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object a(ok0 ok0Var, boolean z, String str, Activity activity, boolean z2, Continuation continuation, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = "In-app preview failed to load because of a system error. Please try again later.";
        }
        if ((i & 4) != 0) {
            activity = null;
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        return ok0Var.a(z, str, activity, z2, continuation);
    }
}
