package com.vungle.ads.internal.network;

import java.io.IOException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;

/* JADX INFO: loaded from: classes4.dex */
public final class m {
    public final Call a;
    public final com.vungle.ads.internal.network.converters.a b;

    static {
        new h();
    }

    public m(Call rawCall, com.vungle.ads.internal.network.converters.a responseConverter) {
        Intrinsics.checkNotNullParameter(rawCall, "rawCall");
        Intrinsics.checkNotNullParameter(responseConverter, "responseConverter");
        this.a = rawCall;
        this.b = responseConverter;
    }

    public final void a(a callback) {
        Call call;
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this) {
            call = this.a;
            Unit unit = Unit.INSTANCE;
        }
        call.enqueue(new l(this, callback));
    }

    public final o a() {
        Call call;
        Object objM2760constructorimpl;
        synchronized (this) {
            call = this.a;
            Unit unit = Unit.INSTANCE;
        }
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(a(call.execute()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            boolean z = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("[execute] Failed to parse response:  ");
            sbA.append(thM2763exceptionOrNullimpl.getLocalizedMessage());
            com.vungle.ads.internal.util.u.b("OkHttpCall", sbA.toString());
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = null;
        }
        return (o) objM2760constructorimpl;
    }

    public final o a(Response response) throws IOException {
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody == null) {
            return null;
        }
        Response responseBuild = response.newBuilder().body(new k(responseBodyBody.contentType(), responseBodyBody.contentLength())).build();
        int iCode = responseBuild.code();
        if (iCode >= 200 && iCode < 300) {
            if (iCode != 204 && iCode != 205) {
                j jVar = new j(responseBodyBody);
                try {
                    return n.a(this.b.a(jVar), responseBuild);
                } catch (Throwable th) {
                    jVar.a();
                    throw th;
                }
            }
            responseBodyBody.close();
            return n.a(null, responseBuild);
        }
        try {
            Buffer buffer = new Buffer();
            responseBodyBody.source().readAll(buffer);
            ResponseBody.Companion.create(buffer, responseBodyBody.contentType(), responseBodyBody.contentLength());
            o oVarA = n.a(responseBuild);
            CloseableKt.closeFinally(responseBodyBody, null);
            return oVarA;
        } finally {
        }
    }
}
