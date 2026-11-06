package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.ironsource.Ue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xb implements nt3 {
    public final jb3 a;
    public final String b;
    public final tf3 c;
    public final BaseRequest d;
    public final Gson e;
    public final ex0 f;
    public final ej1 g;
    public final String h;

    public xb(jb3 javascriptEngine, String adResponseBlob, tf3 signalGenerationData, BaseRequest baseRequest, Gson gson, ex0 flags, ej1 internalAdRequestEventEmitter) {
        String str;
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(adResponseBlob, "adResponseBlob");
        Intrinsics.checkNotNullParameter(signalGenerationData, "signalGenerationData");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        this.a = javascriptEngine;
        this.b = adResponseBlob;
        this.c = signalGenerationData;
        this.d = baseRequest;
        this.e = gson;
        this.f = flags;
        this.g = internalAdRequestEventEmitter;
        if (flags.b() && signalGenerationData.b.a() == x11.SCAR_REQUEST_TYPE_GAM_S2S) {
            str = "https://pubads.g.doubleclick.net/gampad/ads?gsig=" + signalGenerationData.d;
        } else {
            str = "";
        }
        this.h = str;
    }

    public final JsonObject a() {
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        JsonObject jsonObject3 = new JsonObject();
        jsonObject2.addProperty("ad_request_url", this.h);
        jsonObject2.addProperty("ad_request_post_body", "");
        jsonObject2.addProperty("base_url", "");
        jsonObject2.add("signals", this.e.toJsonTree(this.c.c).getAsJsonObject());
        jsonObject3.addProperty(C3522b4.i.E0, this.b);
        jsonObject3.add("headers", new JsonObject());
        jsonObject.add("request", jsonObject2);
        jsonObject.add(Ue.n, jsonObject3);
        jsonObject.add("flags", new JsonObject());
        return jsonObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0099 A[Catch: all -> 0x00c0, TryCatch #0 {all -> 0x00c0, blocks: (B:29:0x0093, B:31:0x0099, B:32:0x009c, B:33:0x00b6, B:39:0x00ca, B:41:0x00cf, B:43:0x00d4, B:38:0x00c3), top: B:84:0x0093, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009c A[Catch: all -> 0x00c0, TRY_LEAVE, TryCatch #0 {all -> 0x00c0, blocks: (B:29:0x0093, B:31:0x0099, B:32:0x009c, B:33:0x00b6, B:39:0x00ca, B:41:0x00cf, B:43:0x00d4, B:38:0x00c3), top: B:84:0x0093, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012d A[Catch: all -> 0x0139, TryCatch #4 {all -> 0x0139, blocks: (B:57:0x0126, B:59:0x012d, B:61:0x0131, B:63:0x0135, B:66:0x013b, B:68:0x013f, B:70:0x0143, B:72:0x0147, B:73:0x0148, B:74:0x014d, B:75:0x014e, B:76:0x0155, B:77:0x0156, B:78:0x015d, B:79:0x015e), top: B:91:0x0126 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x015e A[Catch: all -> 0x0139, TRY_LEAVE, TryCatch #4 {all -> 0x0139, blocks: (B:57:0x0126, B:59:0x012d, B:61:0x0131, B:63:0x0135, B:66:0x013b, B:68:0x013f, B:70:0x0143, B:72:0x0147, B:73:0x0148, B:74:0x014d, B:75:0x014e, B:76:0x0155, B:77:0x0156, B:78:0x015d, B:79:0x015e), top: B:91:0x0126 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9, types: [ads_mobile_sdk.rr3] */
    @Override // ads_mobile_sdk.nt3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.xb.b(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
