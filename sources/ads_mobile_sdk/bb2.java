package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.Gson;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bb2 implements nt3, li1 {
    public final jb3 a;
    public final ka2 b;
    public final com.google.android.libraries.ads.mobile.sdk.internal.signals.a c;
    public final BaseRequest d;
    public final j53 e;
    public final ej1 f;
    public final k g;
    public final j43 h;
    public final u43 i;
    public final b53 j;
    public final ex0 k;
    public final f13 l;
    public final ur3 m;
    public final Gson n;
    public final n8 o;
    public final CoroutineScope p;
    public volatile boolean q;
    public volatile boolean r;

    public bb2(jb3 javascriptEngine, ka2 networkResponseRequester, com.google.android.libraries.ads.mobile.sdk.internal.signals.a signalsProvider, BaseRequest baseRequest, j53 requestType, ej1 internalAdRequestEventEmitter, k actionFunction, j43 clientSideRequestBuilder, u43 requestThrottler, b53 requestThrottlerV2, ex0 flags, f13 randomGenerator, ur3 traceLogger, Gson gson, n8 adRequestDomainPreloader, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(networkResponseRequester, "networkResponseRequester");
        Intrinsics.checkNotNullParameter(signalsProvider, "signalsProvider");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(actionFunction, "actionFunction");
        Intrinsics.checkNotNullParameter(clientSideRequestBuilder, "clientSideRequestBuilder");
        Intrinsics.checkNotNullParameter(requestThrottler, "requestThrottler");
        Intrinsics.checkNotNullParameter(requestThrottlerV2, "requestThrottlerV2");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(adRequestDomainPreloader, "adRequestDomainPreloader");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = javascriptEngine;
        this.b = networkResponseRequester;
        this.c = signalsProvider;
        this.d = baseRequest;
        this.e = requestType;
        this.f = internalAdRequestEventEmitter;
        this.g = actionFunction;
        this.h = clientSideRequestBuilder;
        this.i = requestThrottler;
        this.j = requestThrottlerV2;
        this.k = flags;
        this.l = randomGenerator;
        this.m = traceLogger;
        this.n = gson;
        this.o = adRequestDomainPreloader;
        this.p = backgroundScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0091 A[Catch: all -> 0x00b5, TryCatch #3 {all -> 0x00b5, blocks: (B:50:0x0183, B:52:0x0187, B:30:0x008b, B:32:0x0091, B:35:0x00b8), top: B:91:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b8 A[Catch: all -> 0x00b5, TRY_LEAVE, TryCatch #3 {all -> 0x00b5, blocks: (B:50:0x0183, B:52:0x0187, B:30:0x008b, B:32:0x0091, B:35:0x00b8), top: B:91:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fb A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:14:0x003b, B:39:0x00eb, B:41:0x00fb, B:43:0x0113, B:45:0x0129, B:46:0x015e, B:48:0x0162), top: B:86:0x003b }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015e A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:14:0x003b, B:39:0x00eb, B:41:0x00fb, B:43:0x0113, B:45:0x0129, B:46:0x015e, B:48:0x0162), top: B:86:0x003b }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 471
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bb2.a(com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nt3
    public final Object b(Continuation continuation) {
        return b(this, continuation);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0201 A[Catch: all -> 0x0082, TRY_LEAVE, TryCatch #1 {all -> 0x0082, blocks: (B:143:0x02d1, B:145:0x02d5, B:148:0x02de, B:150:0x02eb, B:152:0x02f7, B:154:0x02fb, B:156:0x0302, B:159:0x032c, B:160:0x032d, B:21:0x007d, B:124:0x025d, B:26:0x0090, B:104:0x01fb, B:106:0x0201, B:109:0x020a, B:111:0x021c, B:115:0x0237, B:121:0x0248), top: B:242:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x020a A[Catch: all -> 0x0082, TRY_ENTER, TryCatch #1 {all -> 0x0082, blocks: (B:143:0x02d1, B:145:0x02d5, B:148:0x02de, B:150:0x02eb, B:152:0x02f7, B:154:0x02fb, B:156:0x0302, B:159:0x032c, B:160:0x032d, B:21:0x007d, B:124:0x025d, B:26:0x0090, B:104:0x01fb, B:106:0x0201, B:109:0x020a, B:111:0x021c, B:115:0x0237, B:121:0x0248), top: B:242:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0279 A[Catch: all -> 0x0274, TRY_LEAVE, TryCatch #11 {all -> 0x0274, blocks: (B:126:0x0260, B:129:0x026a, B:133:0x0279), top: B:256:0x0260 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02c7 A[Catch: all -> 0x006c, TRY_LEAVE, TryCatch #4 {all -> 0x006c, blocks: (B:16:0x0067, B:138:0x02ba, B:140:0x02c7), top: B:246:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02d5 A[Catch: all -> 0x0082, TRY_LEAVE, TryCatch #1 {all -> 0x0082, blocks: (B:143:0x02d1, B:145:0x02d5, B:148:0x02de, B:150:0x02eb, B:152:0x02f7, B:154:0x02fb, B:156:0x0302, B:159:0x032c, B:160:0x032d, B:21:0x007d, B:124:0x025d, B:26:0x0090, B:104:0x01fb, B:106:0x0201, B:109:0x020a, B:111:0x021c, B:115:0x0237, B:121:0x0248), top: B:242:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02de A[Catch: all -> 0x0082, TRY_ENTER, TryCatch #1 {all -> 0x0082, blocks: (B:143:0x02d1, B:145:0x02d5, B:148:0x02de, B:150:0x02eb, B:152:0x02f7, B:154:0x02fb, B:156:0x0302, B:159:0x032c, B:160:0x032d, B:21:0x007d, B:124:0x025d, B:26:0x0090, B:104:0x01fb, B:106:0x0201, B:109:0x020a, B:111:0x021c, B:115:0x0237, B:121:0x0248), top: B:242:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03da A[Catch: all -> 0x03e6, TryCatch #3 {all -> 0x03e6, blocks: (B:182:0x03d3, B:184:0x03da, B:186:0x03de, B:188:0x03e2, B:191:0x03e9, B:193:0x03ed, B:195:0x03f1, B:197:0x03f5, B:198:0x03f6, B:199:0x03fb, B:200:0x03fc, B:201:0x0403, B:202:0x0404, B:203:0x040b, B:204:0x040c), top: B:245:0x03d3, outer: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x040c A[Catch: all -> 0x03e6, TRY_LEAVE, TryCatch #3 {all -> 0x03e6, blocks: (B:182:0x03d3, B:184:0x03da, B:186:0x03de, B:188:0x03e2, B:191:0x03e9, B:193:0x03ed, B:195:0x03f1, B:197:0x03f5, B:198:0x03f6, B:199:0x03fb, B:200:0x03fc, B:201:0x0403, B:202:0x0404, B:203:0x040b, B:204:0x040c), top: B:245:0x03d3, outer: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0422 A[Catch: all -> 0x042e, TryCatch #6 {all -> 0x042e, blocks: (B:212:0x041b, B:214:0x0422, B:216:0x0426, B:218:0x042a, B:221:0x0431, B:223:0x0435, B:225:0x0439, B:227:0x043d, B:228:0x043e, B:229:0x0443, B:230:0x0444, B:231:0x044b, B:232:0x044c, B:233:0x0453, B:234:0x0454), top: B:250:0x041b }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0454 A[Catch: all -> 0x042e, TRY_LEAVE, TryCatch #6 {all -> 0x042e, blocks: (B:212:0x041b, B:214:0x0422, B:216:0x0426, B:218:0x042a, B:221:0x0431, B:223:0x0435, B:225:0x0439, B:227:0x043d, B:228:0x043e, B:229:0x0443, B:230:0x0444, B:231:0x044b, B:232:0x044c, B:233:0x0453, B:234:0x0454), top: B:250:0x041b }] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0160 A[EXC_TOP_SPLITTER, PHI: r0 r4 r8 r10
      0x0160: PHI (r0v15 ads_mobile_sdk.bb2) = (r0v0 ads_mobile_sdk.bb2), (r0v11 ads_mobile_sdk.bb2), (r0v17 ads_mobile_sdk.bb2), (r0v17 ads_mobile_sdk.bb2) binds: [B:67:0x015f, B:57:0x012f, B:62:0x0152, B:63:0x0154] A[DONT_GENERATE, DONT_INLINE]
      0x0160: PHI (r4v9 ??) = (r4v81 ??), (r4v82 ??), (r4v83 ??), (r4v84 ??) binds: [B:67:0x015f, B:57:0x012f, B:62:0x0152, B:63:0x0154] A[DONT_GENERATE, DONT_INLINE]
      0x0160: PHI (r8v4 long) = (r8v1 long), (r8v2 long), (r8v9 long), (r8v10 long) binds: [B:67:0x015f, B:57:0x012f, B:62:0x0152, B:63:0x0154] A[DONT_GENERATE, DONT_INLINE]
      0x0160: PHI (r10v12 ??) = (r10v5 ??), (r10v38 ??), (r10v39 ??), (r10v40 ??) binds: [B:67:0x015f, B:57:0x012f, B:62:0x0152, B:63:0x0154] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0131 A[Catch: all -> 0x00d0, TryCatch #9 {all -> 0x00d0, blocks: (B:39:0x00cb, B:61:0x014c, B:63:0x0154, B:71:0x017a, B:74:0x017f, B:44:0x00e0, B:56:0x0129, B:58:0x0131), top: B:242:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0154 A[Catch: all -> 0x00d0, TRY_LEAVE, TryCatch #9 {all -> 0x00d0, blocks: (B:39:0x00cb, B:61:0x014c, B:63:0x0154, B:71:0x017a, B:74:0x017f, B:44:0x00e0, B:56:0x0129, B:58:0x0131), top: B:242:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x016c A[Catch: all -> 0x018f, TRY_LEAVE, TryCatch #7 {all -> 0x018f, blocks: (B:68:0x0160, B:70:0x016c, B:73:0x017d), top: B:251:0x0160 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a5 A[Catch: all -> 0x00b9, TRY_LEAVE, TryCatch #13 {all -> 0x00b9, blocks: (B:34:0x00b4, B:78:0x0188, B:82:0x0199, B:84:0x01a5, B:87:0x01ac, B:96:0x01e4, B:99:0x01ed), top: B:259:0x00b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01e4 A[Catch: all -> 0x00b9, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x00b9, blocks: (B:34:0x00b4, B:78:0x0188, B:82:0x0199, B:84:0x01a5, B:87:0x01ac, B:96:0x01e4, B:99:0x01ed), top: B:259:0x00b4 }] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v23, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r4v55 */
    /* JADX WARN: Type inference failed for: r4v57 */
    /* JADX WARN: Type inference failed for: r4v6, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v63 */
    /* JADX WARN: Type inference failed for: r4v64 */
    /* JADX WARN: Type inference failed for: r4v65 */
    /* JADX WARN: Type inference failed for: r4v66 */
    /* JADX WARN: Type inference failed for: r4v67 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v74 */
    /* JADX WARN: Type inference failed for: r4v75 */
    /* JADX WARN: Type inference failed for: r4v76 */
    /* JADX WARN: Type inference failed for: r4v77 */
    /* JADX WARN: Type inference failed for: r4v78 */
    /* JADX WARN: Type inference failed for: r4v79 */
    /* JADX WARN: Type inference failed for: r4v80 */
    /* JADX WARN: Type inference failed for: r4v81 */
    /* JADX WARN: Type inference failed for: r4v82 */
    /* JADX WARN: Type inference failed for: r4v83 */
    /* JADX WARN: Type inference failed for: r4v84 */
    /* JADX WARN: Type inference failed for: r4v85 */
    /* JADX WARN: Type inference failed for: r4v86 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v26, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v44 */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v46 */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v48 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.bb2 r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 1142
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bb2.b(ads_mobile_sdk.bb2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(i01 i01Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, i01Var, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a7, code lost:
    
        if (ads_mobile_sdk.b53.d(r12, r2, r10, r0) == r1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ce, code lost:
    
        if (ads_mobile_sdk.b53.d(r12, r2, r10, r0) == r1) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.bb2 r10, ads_mobile_sdk.i01 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bb2.a(ads_mobile_sdk.bb2, ads_mobile_sdk.i01, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
    
        if (ads_mobile_sdk.b53.c(r7, r2, r6, r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.bb2 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.wa2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.wa2 r0 = (ads_mobile_sdk.wa2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.wa2 r0 = new ads_mobile_sdk.wa2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L74
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.bb2 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L55
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.b53 r7 = r6.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r2 = r6.d
            java.lang.String r2 = r2.getAdUnitId()
            ads_mobile_sdk.j53 r5 = r6.e
            r0.a = r6
            r0.d = r4
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.b53.a(r7, r2, r5, r0)
            if (r7 != r1) goto L55
            goto L73
        L55:
            ads_mobile_sdk.zr0 r7 = (ads_mobile_sdk.zr0) r7
            ads_mobile_sdk.zr0 r2 = ads_mobile_sdk.zr0.e
            if (r7 != r2) goto L77
            ads_mobile_sdk.b53 r7 = r6.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r2 = r6.d
            java.lang.String r2 = r2.getAdUnitId()
            ads_mobile_sdk.j53 r6 = r6.e
            r4 = 0
            r0.a = r4
            r0.d = r3
            r7.getClass()
            java.lang.Object r6 = ads_mobile_sdk.b53.c(r7, r2, r6, r0)
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L77:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bb2.a(ads_mobile_sdk.bb2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
