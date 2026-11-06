package com.vungle.ads.internal.network;

import com.vungle.ads.TpatError;
import com.vungle.ads.internal.model.d3;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.PathProvider;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlin.text.Regex;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
public final class r {
    public final VungleApiClient a;
    public final Executor b;
    public final com.vungle.ads.internal.signals.j c;
    public final FilePreferences d;
    public final Object e;

    public r(VungleApiClient vungleApiClient, com.vungle.ads.internal.executor.j ioExecutor, com.vungle.ads.internal.executor.j jobExecutor, PathProvider pathProvider, com.vungle.ads.internal.signals.j jVar) {
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(ioExecutor, "ioExecutor");
        Intrinsics.checkNotNullParameter(jobExecutor, "jobExecutor");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.a = vungleApiClient;
        this.b = jobExecutor;
        this.c = jVar;
        this.d = FilePreferences.d.a(ioExecutor, pathProvider, "vngFailedTpats");
        this.e = new Object();
    }

    public final void b() {
        for (Map.Entry entry : a().entrySet()) {
            String str = (String) entry.getKey();
            d dVar = (d) entry.getValue();
            p pVar = new p(str);
            pVar.g = true;
            pVar.e = Boolean.FALSE;
            pVar.c = dVar.b;
            pVar.d = dVar.c;
            pVar.h = dVar.e;
            p pVarA = pVar.a(dVar.a);
            pVarA.i = dVar.f;
            a(pVarA.a(), true);
        }
    }

    public final void a(final q request, final boolean z) {
        Intrinsics.checkNotNullParameter(request, "request");
        final String url = request.i();
        Intrinsics.checkNotNullParameter(url, "url");
        com.vungle.ads.internal.signals.j jVar = this.c;
        String strD = jVar != null ? jVar.d() : null;
        if (strD == null) {
            strD = "";
        }
        if (strD.length() > 0) {
            String strQuote = Pattern.quote("{{{session_id}}}");
            Intrinsics.checkNotNullExpressionValue(strQuote, "quote(Constants.SESSION_ID)");
            url = new Regex(strQuote).replace(url, strD);
        }
        this.b.execute(new Runnable() { // from class: com.vungle.ads.internal.network.r$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                r.a(this.f$0, request, url, z);
            }
        });
    }

    public static final void a(r this$0, q request, String urlWithSessionId, boolean z) {
        boolean zBooleanValue;
        String str;
        d3 d3VarA;
        Sdk.SDKError.Reason reason;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(urlWithSessionId, "$urlWithSessionId");
        this$0.getClass();
        Boolean bool = request.e;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            String str2 = request.i;
            zBooleanValue = Intrinsics.areEqual(str2, "checkpoint.0") || Intrinsics.areEqual(str2, "clickUrl") || Intrinsics.areEqual(str2, "impression") || Intrinsics.areEqual(str2, "load_ad");
        }
        int i = 0;
        while (true) {
            str = urlWithSessionId;
            d3VarA = this$0.a.a(str, request.b(), request.a(), request.d(), request.c());
            if (!zBooleanValue || d3VarA == null || !d3VarA.b() || (i = i + 1) >= request.e()) {
                break;
            } else {
                urlWithSessionId = str;
            }
        }
        if (d3VarA != null) {
            if (i >= request.e()) {
                reason = Sdk.SDKError.Reason.TPAT_RETRY_FAILED;
            } else {
                reason = Sdk.SDKError.Reason.TPAT_ERROR;
            }
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("tpat key: ");
            sbA.append(request.i);
            sbA.append(", error: ");
            sbA.append(d3VarA.a);
            sbA.append(", errorIsTerminal: ");
            sbA.append(d3VarA.b);
            sbA.append(" url: ");
            sbA.append(str);
            String string = sbA.toString();
            boolean z2 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.b("TpatSender", string);
            new TpatError(reason, string).setLogEntry$vungle_ads_release(request.j).logErrorNoReturnValue$vungle_ads_release();
        }
        if (request.f()) {
            if (d3VarA == null || !d3VarA.a()) {
                if (d3VarA != null || z) {
                    synchronized (this$0.e) {
                        try {
                            Map mapA = this$0.a();
                            d dVar = (d) mapA.get(request.i());
                            int iA = dVar != null ? dVar.a() : 0;
                            if (d3VarA == null && iA > 0) {
                                mapA.remove(request.i());
                                this$0.a(mapA);
                            } else if (d3VarA != null && iA >= request.g()) {
                                mapA.remove(request.i());
                                this$0.a(mapA);
                                Sdk.SDKError.Reason reason2 = Sdk.SDKError.Reason.TPAT_RETRY_FAILED;
                                String str3 = "tpat key: " + request.i + ", error: " + d3VarA.a + ", errorIsTerminal: " + d3VarA.b + " url: " + str;
                                boolean z3 = com.vungle.ads.internal.util.v.a;
                                com.vungle.ads.internal.util.u.b("TpatSender", str3);
                                new TpatError(reason2, str3).setLogEntry$vungle_ads_release(request.j).logErrorNoReturnValue$vungle_ads_release();
                            } else if (d3VarA != null) {
                                d dVar2 = (d) mapA.get(request.i());
                                mapA.put(request.i(), dVar2 != null ? d.a(dVar2, iA + 1) : new d(request.d(), request.b(), request.a(), 1, request.g(), request.h()));
                                this$0.a(mapA);
                            }
                            Unit unit = Unit.INSTANCE;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
    }

    public final Map a() {
        Object objM2760constructorimpl;
        String string = this.d.getString("FAILED_TPATS");
        if (string != null) {
            try {
                Result.Companion companion = Result.Companion;
                Json.Default r1 = Json.Default;
                SerializersModule serializersModule = r1.getSerializersModule();
                KTypeProjection.Companion companion2 = KTypeProjection.Companion;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(serializersModule, Reflection.mutableCollectionType(Reflection.typeOf(Map.class, companion2.invariant(Reflection.typeOf(String.class)), companion2.invariant(Reflection.typeOf(d.class)))));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                objM2760constructorimpl = Result.m2760constructorimpl((Map) r1.decodeFromString(kSerializerSerializer, string));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
            if (thM2763exceptionOrNullimpl != null) {
                boolean z = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.b("TpatSender", "Failed to decode stored tpats: " + thM2763exceptionOrNullimpl);
            }
            if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl) != null) {
                objM2760constructorimpl = new LinkedHashMap();
            }
            Map map = (Map) objM2760constructorimpl;
            if (map != null) {
                return map;
            }
        }
        return new LinkedHashMap();
    }

    public final void a(Map map) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            FilePreferences filePreferences = this.d;
            Json.Default r2 = Json.Default;
            SerializersModule serializersModule = r2.getSerializersModule();
            KTypeProjection.Companion companion2 = KTypeProjection.Companion;
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(serializersModule, Reflection.mutableCollectionType(Reflection.typeOf(Map.class, companion2.invariant(Reflection.typeOf(String.class)), companion2.invariant(Reflection.typeOf(d.class)))));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            filePreferences.a("FAILED_TPATS", r2.encodeToString(kSerializerSerializer, map)).b();
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl) != null) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.b("TpatSender", "Failed to encode the about to storing tpats: " + map);
        }
    }
}
