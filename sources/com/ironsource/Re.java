package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.Ee;
import com.ironsource.InterfaceC3669j7;
import com.ironsource.Ue;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Re implements Se {
    private final Ee b(Context context, Ke ke, C3969ze c3969ze) throws Throwable {
        Ee eeA = a(context, ke, c3969ze);
        if (eeA instanceof Ee.a) {
            IronSourceLoggerManager logger = IronSourceLoggerManager.getLogger();
            IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
            logger.log(ironSourceTag, "Null or invalid response. Trying to get cached response", 0);
            Ue ueA = ke.a(context, c3969ze.d());
            if (ueA != null && ueA.q()) {
                Ee.b bVar = new Ee.b(new Ae(ueA));
                IronSourceError ironSourceErrorBuildUsingCachedConfigurationError = ErrorBuilder.buildUsingCachedConfigurationError(c3969ze.d(), c3969ze.f());
                IronSourceLoggerManager.getLogger().log(ironSourceTag, ironSourceErrorBuildUsingCachedConfigurationError + ": " + bVar.b(), 1);
                ke.b();
                return bVar;
            }
        }
        return eeA;
    }

    @Override // com.ironsource.Se
    public void a(Context context, C3969ze request, Ke tools, InterfaceC3933xe listener) throws Throwable {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strF = request.f();
        if (strF == null) {
            strF = "";
        }
        tools.a("userId", strF);
        tools.a("appKey", request.d());
        tools.i().i(request.f());
        tools.h();
        Ee eeB = b(context, tools, request);
        if (eeB instanceof Ee.b) {
            listener.a(new C3806qe(((Ee.b) eeB).b()));
        } else {
            if (!(eeB instanceof Ee.a)) {
                throw new NoWhenBranchMatchedException();
            }
            listener.a(((Ee.a) eeB).b());
        }
    }

    private final Ee a(Context context, Ke ke, C3969ze c3969ze) throws Throwable {
        C3841se c3841se;
        try {
            String strC = ke.c(context);
            if (TextUtils.isEmpty(strC)) {
                strC = ke.a(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            String str = strC;
            C3655ia c3655iaC = ke.c();
            String strA = We.a(context, c3969ze.d(), c3969ze.f(), str, null, true, c3655iaC != null ? c3655iaC.f() : null, false);
            String string = C3725m9.a().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            InterfaceC3669j7 interfaceC3669j7A = C3634h7.a(strA, string);
            if (interfaceC3669j7A instanceof InterfaceC3669j7.a) {
                IronLog.INTERNAL.warning("HTTP init request failed: " + ((InterfaceC3669j7.a) interfaceC3669j7A).a());
                return new Ee.a(a((InterfaceC3669j7.a) interfaceC3669j7A));
            }
            if (interfaceC3669j7A instanceof InterfaceC3669j7.b) {
                String strD = ((InterfaceC3669j7.b) interfaceC3669j7A).d();
                if (ke.d()) {
                    IronLog ironLog = IronLog.INTERNAL;
                    ironLog.verbose("encrypt");
                    JSONObject jSONObject = new JSONObject(strD);
                    String strOptString = jSONObject.optString(Ue.n);
                    if (TextUtils.isEmpty(strOptString)) {
                        ironLog.warning("encryptedResponse is empty - return null");
                        return new Ee.a(new C3841se(2100, C3915we.h));
                    }
                    boolean zOptBoolean = jSONObject.optBoolean("compression", false);
                    Intrinsics.checkNotNull(strOptString);
                    strD = a(strOptString, zOptBoolean);
                    if (TextUtils.isEmpty(strD)) {
                        ironLog.warning("encoded response invalid - return null");
                        ke.g();
                        return new Ee.a(new C3841se(C3841se.f, C3915we.g));
                    }
                }
                Ue ue = new Ue(context, c3969ze.d(), c3969ze.f(), strD);
                ue.a(Ue.a.SERVER);
                if (!ue.q()) {
                    IronLog.INTERNAL.warning("response invalid - return null");
                    String strE = ue.e();
                    if (strE == null) {
                        strE = "Unknown";
                    }
                    return new Ee.a(new C3841se(C3841se.e, strE));
                }
                return new Ee.b(new Ae(ue));
            }
            throw new NoWhenBranchMatchedException();
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.warning("exception = " + e);
            if (e instanceof JSONException) {
                c3841se = new C3841se(C3841se.e, "serverResponseIsNotValid");
            } else {
                c3841se = new C3841se(510, "internal error");
            }
            return new Ee.a(c3841se);
        }
    }

    private final String a(String str, boolean z) {
        if (z) {
            String strD = Q9.d(C3775p5.b().c(), str);
            Intrinsics.checkNotNull(strD);
            return strD;
        }
        String strB = Q9.b(C3775p5.b().c(), str);
        Intrinsics.checkNotNull(strB);
        return strB;
    }

    private final C3841se a(InterfaceC3669j7.a aVar) {
        return new C3841se(aVar.b() ? C3841se.d : C3841se.h, aVar.a());
    }
}
