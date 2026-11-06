package ads_mobile_sdk;

import android.net.Uri;
import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class yx2 extends px2 {
    public static final m01 u = new m01("The ad has already been shown.", kk1.f);
    public static final m01 v = new m01("The ad format requested does not match the ad format specified when generating a Signal.", kk1.b);
    public static final m01 w = new m01("The request ID on the ad string does not match the request ID from any valid signal request.", kk1.i);
    public static final m01 x = new m01("The ad response was malformed.", kk1.h);
    public final yf3 n;
    public final p70 o;
    public final String p;
    public final Gson q;
    public final e01 r;
    public final vw3 s;
    public final Mutex t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yx2(yf3 signalGenerationMap, p70 cryptoUtil, String adResponse, Gson gson, e01 httpClient, vw3 urlPinger, CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String requestId, j53 requestType, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, SharedFlow cancellationChannel, qn appState) {
        super(loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, requestId, requestType, null, false, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(signalGenerationMap, "signalGenerationMap");
        Intrinsics.checkNotNullParameter(cryptoUtil, "cryptoUtil");
        Intrinsics.checkNotNullParameter(adResponse, "adResponse");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.n = signalGenerationMap;
        this.o = cryptoUtil;
        this.p = adResponse;
        this.q = gson;
        this.r = httpClient;
        this.s = urlPinger;
        this.t = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cb A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #1 {all -> 0x0042, blocks: (B:12:0x0038, B:24:0x00c5, B:26:0x00cb), top: B:66:0x0038 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ee A[Catch: all -> 0x00fa, TryCatch #3 {all -> 0x00fa, blocks: (B:37:0x00e7, B:39:0x00ee, B:41:0x00f2, B:43:0x00f6, B:46:0x00fd, B:48:0x0101, B:50:0x0105, B:52:0x0109, B:53:0x010a, B:54:0x010f, B:55:0x0110, B:56:0x0117, B:57:0x0118, B:58:0x011f, B:59:0x0120), top: B:70:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0120 A[Catch: all -> 0x00fa, TRY_LEAVE, TryCatch #3 {all -> 0x00fa, blocks: (B:37:0x00e7, B:39:0x00ee, B:41:0x00f2, B:43:0x00f6, B:46:0x00fd, B:48:0x0101, B:50:0x0105, B:52:0x0109, B:53:0x010a, B:54:0x010f, B:55:0x0110, B:56:0x0117, B:57:0x0118, B:58:0x011f, B:59:0x0120), top: B:70:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00be -> B:24:0x00c5). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.f81 r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yx2.a(ads_mobile_sdk.f81, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public abstract Object a(String str, tf3 tf3Var, vx2 vx2Var);

    @Override // ads_mobile_sdk.px2
    public final Object b(Continuation continuation) {
        return a(this, continuation);
    }

    public final List a(JsonObject jsonObject) {
        try {
            String strA = ds1.a(jsonObject, "settings", "");
            if (StringsKt__StringsKt.isBlank(strA)) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            JsonArray jsonArrayE = ds1.e((JsonObject) this.q.fromJson(strA, JsonObject.class), "nofill_urls");
            ArrayList arrayList = new ArrayList();
            if (jsonArrayE != null) {
                int i = 0;
                for (JsonElement jsonElement : jsonArrayE) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement2 = jsonElement;
                    Intrinsics.checkNotNull(jsonElement2);
                    String asString = jsonElement2.getAsString();
                    Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                    Uri uri = Uri.parse(asString);
                    if (uri != null) {
                        arrayList.add(uri);
                    }
                    i = i2;
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0077, code lost:
    
        if (ads_mobile_sdk.md1.a(r12, r11, r4, r0) == r1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.i01 r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof ads_mobile_sdk.ux2
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.ux2 r0 = (ads_mobile_sdk.ux2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ux2 r0 = new ads_mobile_sdk.ux2
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r12)
            goto L7a
        L2c:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L34:
            ads_mobile_sdk.i01 r11 = r0.b
            ads_mobile_sdk.yx2 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L56
        L3c:
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = 0
            ads_mobile_sdk.xs3.a(r11, r12)
            ads_mobile_sdk.md1 r12 = r10.k
            r0.a = r10
            r0.b = r11
            r0.e = r4
            r12.getClass()
            java.lang.Object r12 = ads_mobile_sdk.md1.b(r12, r0)
            if (r12 != r1) goto L55
            goto L79
        L55:
            r2 = r10
        L56:
            ads_mobile_sdk.md1 r12 = r2.k
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r4 = new com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo
            android.os.Bundle r7 = new android.os.Bundle
            r7.<init>()
            java.util.List r9 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            r6 = 0
            r8 = 0
            r5 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            r2 = 0
            r0.a = r2
            r0.b = r2
            r0.e = r3
            r12.getClass()
            java.lang.Object r11 = ads_mobile_sdk.md1.a(r12, r11, r4, r0)
            if (r11 != r1) goto L7a
        L79:
            return r1
        L7a:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yx2.a(ads_mobile_sdk.i01, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02a3 A[Catch: all -> 0x029e, TRY_ENTER, TryCatch #15 {all -> 0x029e, blocks: (B:91:0x0267, B:93:0x026b, B:102:0x02a3, B:104:0x02b1, B:106:0x02b8, B:108:0x02cc, B:110:0x02d3, B:113:0x02dd, B:115:0x02e3, B:117:0x02f1, B:119:0x02f8, B:121:0x0300, B:131:0x0336, B:133:0x0344, B:135:0x0348, B:136:0x034c, B:118:0x02f6, B:132:0x0340, B:109:0x02d1, B:105:0x02b6), top: B:257:0x0267 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x039b A[Catch: all -> 0x03d4, TRY_LEAVE, TryCatch #11 {all -> 0x03d4, blocks: (B:142:0x0393, B:144:0x039b, B:156:0x03d7, B:158:0x03e1, B:160:0x03e8, B:159:0x03e6), top: B:250:0x0393 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03d7 A[Catch: all -> 0x03d4, TRY_ENTER, TryCatch #11 {all -> 0x03d4, blocks: (B:142:0x0393, B:144:0x039b, B:156:0x03d7, B:158:0x03e1, B:160:0x03e8, B:159:0x03e6), top: B:250:0x0393 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x041a A[Catch: all -> 0x0073, TryCatch #9 {all -> 0x0073, blocks: (B:22:0x006e, B:174:0x043a, B:176:0x0440, B:183:0x046b, B:185:0x0478, B:187:0x047f, B:189:0x0483, B:191:0x048a, B:190:0x0488, B:186:0x047d, B:166:0x0413, B:168:0x041a, B:170:0x0421, B:169:0x041f, B:206:0x04c6, B:207:0x04c9, B:126:0x032b), top: B:244:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x041f A[Catch: all -> 0x0073, TryCatch #9 {all -> 0x0073, blocks: (B:22:0x006e, B:174:0x043a, B:176:0x0440, B:183:0x046b, B:185:0x0478, B:187:0x047f, B:189:0x0483, B:191:0x048a, B:190:0x0488, B:186:0x047d, B:166:0x0413, B:168:0x041a, B:170:0x0421, B:169:0x041f, B:206:0x04c6, B:207:0x04c9, B:126:0x032b), top: B:244:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0440 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #9 {all -> 0x0073, blocks: (B:22:0x006e, B:174:0x043a, B:176:0x0440, B:183:0x046b, B:185:0x0478, B:187:0x047f, B:189:0x0483, B:191:0x048a, B:190:0x0488, B:186:0x047d, B:166:0x0413, B:168:0x041a, B:170:0x0421, B:169:0x041f, B:206:0x04c6, B:207:0x04c9, B:126:0x032b), top: B:244:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x046b A[Catch: all -> 0x0073, TRY_ENTER, TryCatch #9 {all -> 0x0073, blocks: (B:22:0x006e, B:174:0x043a, B:176:0x0440, B:183:0x046b, B:185:0x0478, B:187:0x047f, B:189:0x0483, B:191:0x048a, B:190:0x0488, B:186:0x047d, B:166:0x0413, B:168:0x041a, B:170:0x0421, B:169:0x041f, B:206:0x04c6, B:207:0x04c9, B:126:0x032b), top: B:244:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04ab A[Catch: all -> 0x0053, TRY_LEAVE, TryCatch #10 {all -> 0x0053, blocks: (B:14:0x003f, B:195:0x04a4, B:196:0x04a7, B:198:0x04ab, B:17:0x004e, B:180:0x045d, B:61:0x0168, B:80:0x01d1), top: B:244:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x04d2 A[Catch: all -> 0x04de, TryCatch #16 {all -> 0x04de, blocks: (B:209:0x04cb, B:211:0x04d2, B:213:0x04d6, B:215:0x04da, B:218:0x04e1, B:220:0x04e5, B:222:0x04e9, B:224:0x04ed, B:225:0x04ee, B:226:0x04f3, B:227:0x04f4, B:228:0x04fb, B:229:0x04fc, B:230:0x0503, B:231:0x0504), top: B:258:0x04cb }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0504 A[Catch: all -> 0x04de, TRY_LEAVE, TryCatch #16 {all -> 0x04de, blocks: (B:209:0x04cb, B:211:0x04d2, B:213:0x04d6, B:215:0x04da, B:218:0x04e1, B:220:0x04e5, B:222:0x04e9, B:224:0x04ed, B:225:0x04ee, B:226:0x04f3, B:227:0x04f4, B:228:0x04fb, B:229:0x04fc, B:230:0x0503, B:231:0x0504), top: B:258:0x04cb }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x026b A[Catch: all -> 0x029e, TRY_LEAVE, TryCatch #15 {all -> 0x029e, blocks: (B:91:0x0267, B:93:0x026b, B:102:0x02a3, B:104:0x02b1, B:106:0x02b8, B:108:0x02cc, B:110:0x02d3, B:113:0x02dd, B:115:0x02e3, B:117:0x02f1, B:119:0x02f8, B:121:0x0300, B:131:0x0336, B:133:0x0344, B:135:0x0348, B:136:0x034c, B:118:0x02f6, B:132:0x0340, B:109:0x02d1, B:105:0x02b6), top: B:257:0x0267 }] */
    /* JADX WARN: Type inference failed for: r0v31, types: [T] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v95 */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v36, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v39 */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r13v41 */
    /* JADX WARN: Type inference failed for: r13v42 */
    /* JADX WARN: Type inference failed for: r13v43 */
    /* JADX WARN: Type inference failed for: r13v5, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v7, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r1v24, types: [T, ads_mobile_sdk.tf3] */
    /* JADX WARN: Type inference failed for: r1v65, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v27, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v47, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r3v63 */
    /* JADX WARN: Type inference failed for: r3v68 */
    /* JADX WARN: Type inference failed for: r3v69 */
    /* JADX WARN: Type inference failed for: r3v70 */
    /* JADX WARN: Type inference failed for: r3v71 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v73 */
    /* JADX WARN: Type inference failed for: r3v74 */
    /* JADX WARN: Type inference failed for: r3v75 */
    /* JADX WARN: Type inference failed for: r3v76 */
    /* JADX WARN: Type inference failed for: r3v77 */
    /* JADX WARN: Type inference failed for: r3v78 */
    /* JADX WARN: Type inference failed for: r3v79 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v80 */
    /* JADX WARN: Type inference failed for: r3v81 */
    /* JADX WARN: Type inference failed for: r3v82 */
    /* JADX WARN: Type inference failed for: r3v83 */
    /* JADX WARN: Type inference failed for: r3v84 */
    /* JADX WARN: Type inference failed for: r3v85 */
    /* JADX WARN: Type inference failed for: r3v86 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v34, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v5, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v37, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v13, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2, types: [T] */
    /* JADX WARN: Type inference failed for: r7v37 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.yx2 r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 1320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yx2.a(ads_mobile_sdk.yx2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yx2.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Pair a(String str) {
        try {
            JsonElement jsonElement = ((JsonObject) new Gson().fromJson(str, JsonObject.class)).get("render_id");
            String asString = jsonElement != null ? jsonElement.getAsString() : null;
            if (asString == null) {
                asString = "";
            }
            try {
                byte[] bArrDecode = Base64.decode(asString, 0);
                Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
                List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) new String(bArrDecode, Charsets.UTF_8), new char[]{':'}, false, 0, 6, (Object) null);
                if (listSplit$default.size() == 2) {
                    return new Pair(listSplit$default.get(0), Integer.valueOf(Integer.parseInt((String) listSplit$default.get(1))));
                }
                return new Pair(null, 0);
            } catch (Exception unused) {
                return new Pair(null, 0);
            }
        } catch (Exception unused2) {
            return new Pair(null, 0);
        }
    }
}
