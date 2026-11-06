package com.ironsource;

import com.ironsource.C3844t;
import com.ironsource.S7;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final class Wd {
    private final C3948yb a;
    private final Map<String, C3844t.b> b;
    private final Map<String, C3844t.b> c;

    public Wd(C3948yb tools, Map<String, C3844t.b> map, Map<String, C3844t.b> map2) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        this.a = tools;
        this.b = map;
        this.c = map2;
    }

    private final void b(S7.a aVar, String str, String str2, Integer num) throws JSONException {
        Object objA = a(str2, num);
        if (Result.m2766isSuccessimpl(objA)) {
            Intrinsics.checkNotNull(str2);
            Intrinsics.checkNotNull(num);
            aVar.a(str, str2, num.intValue());
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objA);
        if (thM2763exceptionOrNullimpl != null) {
            this.a.b(str, 3004, thM2763exceptionOrNullimpl.getMessage());
        }
    }

    public final void a(S7.a rewardService) {
        Intrinsics.checkNotNullParameter(rewardService, "rewardService");
        Map<String, C3844t.b> map = this.c;
        if (map != null && (r0 = map.entrySet().iterator()) != null) {
            for (Map.Entry<String, C3844t.b> entry : map.entrySet()) {
                String key = entry.getKey();
                Ud udF = entry.getValue().f();
                if (udF != null) {
                    b(rewardService, key, udF.b(), udF.a());
                }
            }
        }
        Map<String, C3844t.b> map2 = this.b;
        if (map2 == null || (r0 = map2.entrySet().iterator()) == null) {
            return;
        }
        for (Map.Entry<String, C3844t.b> entry2 : map2.entrySet()) {
            String key2 = entry2.getKey();
            Ud udA = entry2.getValue().a();
            if (udA != null) {
                a(rewardService, key2, udA.b(), udA.a());
            }
        }
    }

    private final void a(S7.a aVar, String str, String str2, Integer num) throws JSONException {
        Object objA = a(str2, num);
        if (Result.m2766isSuccessimpl(objA)) {
            Intrinsics.checkNotNull(str2);
            Intrinsics.checkNotNull(num);
            aVar.b(str, str2, num.intValue());
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objA);
        if (thM2763exceptionOrNullimpl != null) {
            this.a.b(str, 3004, thM2763exceptionOrNullimpl.getMessage());
        }
    }

    private final Object a(String str, Integer num) {
        if (str != null && num != null) {
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(Unit.INSTANCE);
        }
        Result.Companion companion2 = Result.Companion;
        return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("name - " + str + " or amount - " + num + " is not provided or invalid")));
    }
}
