package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uw0 {
    public final rw0 a;
    public final xw0 b;
    public final g83 c;
    public final jw0 d;
    public final xb0 e;
    public final cw2 f;

    public uw0(rw0 flagParamsBuilder, xw0 flagValueProvider, g83 rootTraceCreator, jw0 flagDataStore, xb0 csrbDataStore, dw2 consentManager) {
        Intrinsics.checkNotNullParameter(flagParamsBuilder, "flagParamsBuilder");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(csrbDataStore, "csrbDataStore");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = flagParamsBuilder;
        this.b = flagValueProvider;
        this.c = rootTraceCreator;
        this.d = flagDataStore;
        this.e = csrbDataStore;
        this.f = consentManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:185:0x0485, code lost:
    
        if (ads_mobile_sdk.g30.b(r7, r4) == r5) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02b8, code lost:
    
        if (ads_mobile_sdk.g30.b(r9, r4) == r5) goto L291;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0369 A[Catch: all -> 0x0156, Exception -> 0x0159, TRY_LEAVE, TryCatch #29 {Exception -> 0x0159, all -> 0x0156, blocks: (B:50:0x014e, B:114:0x0329, B:117:0x0369, B:57:0x0178), top: B:277:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0387 A[Catch: all -> 0x01c5, TRY_ENTER, TryCatch #17 {all -> 0x01c5, blocks: (B:61:0x01bd, B:93:0x02c1, B:95:0x02c7, B:101:0x02d3, B:103:0x02d9, B:106:0x02df, B:79:0x0250, B:81:0x0256, B:82:0x0258, B:84:0x0264, B:89:0x0297, B:133:0x0387, B:135:0x038b), top: B:277:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03a6 A[Catch: all -> 0x03b2, TryCatch #6 {all -> 0x03b2, blocks: (B:142:0x039f, B:144:0x03a6, B:146:0x03aa, B:148:0x03ae, B:151:0x03b5, B:153:0x03b9, B:155:0x03bd, B:157:0x03c1, B:158:0x03c2, B:159:0x03c7, B:160:0x03c8, B:161:0x03cf, B:162:0x03d0, B:163:0x03d7, B:164:0x03d8), top: B:278:0x039f }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03d8 A[Catch: all -> 0x03b2, TRY_LEAVE, TryCatch #6 {all -> 0x03b2, blocks: (B:142:0x039f, B:144:0x03a6, B:146:0x03aa, B:148:0x03ae, B:151:0x03b5, B:153:0x03b9, B:155:0x03bd, B:157:0x03c1, B:158:0x03c2, B:159:0x03c7, B:160:0x03c8, B:161:0x03cf, B:162:0x03d0, B:163:0x03d7, B:164:0x03d8), top: B:278:0x039f }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x041b A[Catch: all -> 0x00ef, TRY_LEAVE, TryCatch #5 {all -> 0x00ef, blocks: (B:31:0x00e5, B:188:0x048f, B:190:0x0495, B:196:0x04a1, B:198:0x04a7, B:201:0x04ad, B:174:0x0415, B:176:0x041b, B:177:0x041d, B:179:0x042b, B:184:0x0461, B:233:0x055f, B:235:0x0563), top: B:277:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x053c A[Catch: all -> 0x0544, Exception -> 0x0546, TRY_LEAVE, TryCatch #26 {Exception -> 0x0546, all -> 0x0544, blocks: (B:209:0x04fb, B:212:0x053c), top: B:309:0x04fb }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x055f A[Catch: all -> 0x00ef, TRY_ENTER, TryCatch #5 {all -> 0x00ef, blocks: (B:31:0x00e5, B:188:0x048f, B:190:0x0495, B:196:0x04a1, B:198:0x04a7, B:201:0x04ad, B:174:0x0415, B:176:0x041b, B:177:0x041d, B:179:0x042b, B:184:0x0461, B:233:0x055f, B:235:0x0563), top: B:277:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x057f A[Catch: all -> 0x058b, TryCatch #18 {all -> 0x058b, blocks: (B:244:0x0578, B:246:0x057f, B:248:0x0583, B:250:0x0587, B:253:0x058e, B:255:0x0592, B:257:0x0596, B:259:0x059a, B:260:0x059b, B:261:0x05a0, B:262:0x05a1, B:263:0x05a8, B:264:0x05a9, B:265:0x05b0, B:266:0x05b1), top: B:290:0x0578 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x05b1 A[Catch: all -> 0x058b, TRY_LEAVE, TryCatch #18 {all -> 0x058b, blocks: (B:244:0x0578, B:246:0x057f, B:248:0x0583, B:250:0x0587, B:253:0x058e, B:255:0x0592, B:257:0x0596, B:259:0x059a, B:260:0x059b, B:261:0x05a0, B:262:0x05a1, B:263:0x05a8, B:264:0x05a9, B:265:0x05b0, B:266:0x05b1), top: B:290:0x0578 }] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0495 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x02c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0256 A[Catch: all -> 0x01c5, TRY_LEAVE, TryCatch #17 {all -> 0x01c5, blocks: (B:61:0x01bd, B:93:0x02c1, B:95:0x02c7, B:101:0x02d3, B:103:0x02d9, B:106:0x02df, B:79:0x0250, B:81:0x0256, B:82:0x0258, B:84:0x0264, B:89:0x0297, B:133:0x0387, B:135:0x038b), top: B:277:0x0030 }] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v7, types: [ads_mobile_sdk.xs3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v41 */
    /* JADX WARN: Type inference failed for: r11v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14, types: [ads_mobile_sdk.xs3] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v26, types: [ads_mobile_sdk.xs3] */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v39, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v52, types: [ads_mobile_sdk.xs3] */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v60 */
    /* JADX WARN: Type inference failed for: r1v61, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v62 */
    /* JADX WARN: Type inference failed for: r1v65, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v69 */
    /* JADX WARN: Type inference failed for: r1v70 */
    /* JADX WARN: Type inference failed for: r1v72 */
    /* JADX WARN: Type inference failed for: r1v79, types: [ads_mobile_sdk.xs3] */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r1v81 */
    /* JADX WARN: Type inference failed for: r1v82 */
    /* JADX WARN: Type inference failed for: r1v83 */
    /* JADX WARN: Type inference failed for: r1v84 */
    /* JADX WARN: Type inference failed for: r1v85 */
    /* JADX WARN: Type inference failed for: r1v86 */
    /* JADX WARN: Type inference failed for: r1v87 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32, types: [com.google.gson.JsonObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v39, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v40, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v42, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v46, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v50, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57, types: [com.google.gson.JsonObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r2v65, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v66 */
    /* JADX WARN: Type inference failed for: r2v67 */
    /* JADX WARN: Type inference failed for: r2v68 */
    /* JADX WARN: Type inference failed for: r2v69 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v71 */
    /* JADX WARN: Type inference failed for: r2v72 */
    /* JADX WARN: Type inference failed for: r2v73 */
    /* JADX WARN: Type inference failed for: r2v74 */
    /* JADX WARN: Type inference failed for: r2v75 */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v82 */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r2v84 */
    /* JADX WARN: Type inference failed for: r2v85 */
    /* JADX WARN: Type inference failed for: r2v86 */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v32, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v19, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v26, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r6v0, types: [int] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v47, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v48 */
    /* JADX WARN: Type inference failed for: r6v51 */
    /* JADX WARN: Type inference failed for: r6v52 */
    /* JADX WARN: Type inference failed for: r6v53 */
    /* JADX WARN: Type inference failed for: r6v54, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v57 */
    /* JADX WARN: Type inference failed for: r6v58 */
    /* JADX WARN: Type inference failed for: r6v59 */
    /* JADX WARN: Type inference failed for: r6v60 */
    /* JADX WARN: Type inference failed for: r6v61 */
    /* JADX WARN: Type inference failed for: r6v62 */
    /* JADX WARN: Type inference failed for: r6v63 */
    /* JADX WARN: Type inference failed for: r6v64 */
    /* JADX WARN: Type inference failed for: r6v65 */
    /* JADX WARN: Type inference failed for: r6v66 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v30, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v44 */
    /* JADX WARN: Type inference failed for: r9v49 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v53 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.uw0 r19, ads_mobile_sdk.fl1 r20, com.google.gson.JsonObject r21, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 1494
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.uw0.a(ads_mobile_sdk.uw0, ads_mobile_sdk.fl1, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
