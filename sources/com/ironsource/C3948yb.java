package com.ironsource;

import android.content.Context;
import com.ironsource.C3522b4;
import com.ironsource.C3946y9;
import com.ironsource.Ue;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.yb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3948yb {
    public final void a(@InterfaceC3930xb Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        IronSourceThreadManager.INSTANCE.getLevelPlayThread().a(runnable);
    }

    public final void b(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, callback, 0L, 2, null);
    }

    public final void c(boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, String.valueOf(z));
        If.a(D5.J, jSONObject);
    }

    public static /* synthetic */ void a(C3948yb c3948yb, Runnable runnable, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postOnUIThread");
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        c3948yb.a(runnable, j);
    }

    public final C3841se b(C3841se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return error.c() == 2080 ? new C3841se(error.c(), "serverResponseIsNotValid") : error;
    }

    public final void a(Runnable runnable, long j) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(com.ironsource.environment.thread.a.a.a(runnable), j);
    }

    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        C3946y9.a aVar = C3946y9.a;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        aVar.a(applicationContext);
    }

    public final IronSource.a[] a(LevelPlay.AdFormat... adFormats) {
        Intrinsics.checkNotNullParameter(adFormats, "adFormats");
        ArrayList arrayList = new ArrayList();
        for (LevelPlay.AdFormat adFormat : adFormats) {
            arrayList.add(a(adFormat));
        }
        return (IronSource.a[]) arrayList.toArray(new IronSource.a[0]);
    }

    public final void b(String adUnitId, int i, String str) throws JSONException {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorCode", i);
        jSONObject.putOpt("reason", str);
        jSONObject.put("mediationAdUnitId", adUnitId);
        jSONObject.put("isMultipleAdUnits", 1);
        If.a(D5.W6, jSONObject);
    }

    public final void b(boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, String.valueOf(z));
        If.a(D5.I, jSONObject);
    }

    public final void b() {
        If.a(D5.g7, new JSONObject());
    }

    public final IronSource.a a(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return com.unity3d.mediation.a.a(adFormat);
    }

    public final boolean a(AdapterBaseInterface networkAdapter, IronSource.a adFormat, String providerName) {
        Intrinsics.checkNotNullParameter(networkAdapter, "networkAdapter");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return If.a(networkAdapter, adFormat, providerName);
    }

    public static /* synthetic */ void a(C3948yb c3948yb, long j, Ue.a aVar, long j2, JSONObject jSONObject, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendInitSuccessEvent");
        }
        if ((i & 8) != 0) {
            jSONObject = new JSONObject();
        }
        c3948yb.a(j, aVar, j2, jSONObject);
    }

    public final void a(long j, Ue.a responseOrigin, long j2, JSONObject data) {
        Intrinsics.checkNotNullParameter(responseOrigin, "responseOrigin");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            data.put("isMultipleAdUnits", 1);
            data.put("duration", j);
            String strB = responseOrigin.b();
            Intrinsics.checkNotNullExpressionValue(strB, "getValue(...)");
            data.put(IronSourceConstants.EVENTS_EXT1, a(strB, j2));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        If.a(D5.S, data);
    }

    public final C3841se a(C3841se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        int iC = error.c();
        if (iC != 2070) {
            return iC != 2110 ? error : new C3841se(error.c(), IronSourceConstants.FALSE_AVAILABILITY_REASON_BAD_REQUEST);
        }
        return new C3841se(error.c(), "noServerResponse");
    }

    private final String a(String str, long j) {
        return "responseOrigin=" + str + ";delayTimeAfterInitProcess=" + j;
    }

    public static /* synthetic */ void a(C3948yb c3948yb, C3841se c3841se, long j, JSONObject jSONObject, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendInitFailedEvent");
        }
        if ((i & 4) != 0) {
            jSONObject = new JSONObject();
        }
        c3948yb.a(c3841se, j, jSONObject);
    }

    public final void a(C3841se error, long j, JSONObject data) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            data.put("errorCode", error.c());
            data.put("reason", error.d());
            data.put("isMultipleAdUnits", 1);
            data.put("duration", j);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        If.a(D5.R, data);
    }

    public final void a(String placementName, LevelPlay.AdFormat adFormat, int i, String str) throws JSONException {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorCode", i);
        jSONObject.putOpt("reason", str);
        jSONObject.put("placement", placementName);
        jSONObject.put(C3529bb.f, adFormat.getValue());
        jSONObject.put("adf", If.c(com.unity3d.mediation.a.a(adFormat)));
        jSONObject.put("isMultipleAdUnits", 1);
        If.a(D5.U6, jSONObject);
    }

    public final void a(String adUnitId, int i, String str) throws JSONException {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorCode", i);
        jSONObject.putOpt("reason", str);
        jSONObject.put("mediationAdUnitId", adUnitId);
        jSONObject.put("isMultipleAdUnits", 1);
        If.a(D5.V6, jSONObject);
    }

    public final void a(Map<String, Boolean> networkConsents) throws JSONException {
        Intrinsics.checkNotNullParameter(networkConsents, "networkConsents");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, CollectionsKt___CollectionsKt.joinToString$default(networkConsents.entrySet(), ";", null, null, 0, null, new Function1() { // from class: com.ironsource.yb$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3948yb.a((Map.Entry) obj);
            }
        }, 30, null));
        If.a(D5.G, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence a(Map.Entry entry) {
        Intrinsics.checkNotNullParameter(entry, "<destruct>");
        return ((String) entry.getKey()) + C3522b4.j.b + ((Boolean) entry.getValue()).booleanValue();
    }

    public final void a(boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, String.valueOf(z));
        If.a(D5.H, jSONObject);
    }

    public final boolean a() {
        return Pb.w.d().f().c();
    }
}
