package com.google.android.libraries.ads.mobile.sdk.internal.offline;

import ads_mobile_sdk.a01;
import ads_mobile_sdk.ac2;
import ads_mobile_sdk.cc2;
import ads_mobile_sdk.ic2;
import ads_mobile_sdk.ja1;
import ads_mobile_sdk.k70;
import ads_mobile_sdk.nj0;
import ads_mobile_sdk.sz;
import ads_mobile_sdk.vf0;
import ads_mobile_sdk.xb2;
import ads_mobile_sdk.yb2;
import ads_mobile_sdk.zz0;
import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflinePingSender extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflinePingSender(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(params, "params");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result doWork() {
        try {
            a01.a.getClass();
            ac2 ac2Var = (ac2) ((vf0) zz0.a()).s1.get();
            ac2Var.getClass();
            BuildersKt__Builders_commonKt.launch$default(ac2Var.a, null, null, new xb2(ac2Var, new yb2(ac2Var, null), null), 3, null);
        } catch (Exception unused) {
            int i = getInputData().getInt("OFFLINE_DATABASE_VERSION", 1);
            long j = getInputData().getLong("HTTP_CLIENT_TIMEOUT", 20L);
            String string = getInputData().getString("USER_AGENT");
            if (string == null) {
                ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
                Intrinsics.checkNotNullExpressionValue(resultFailure, "failure(...)");
                return resultFailure;
            }
            InitializationConfig initializationConfigBuild = new InitializationConfig.Builder("offline-ping-sender").build();
            ja1 ja1Var = new ja1();
            ja1Var.a = initializationConfigBuild;
            sz szVar = new sz(ja1Var);
            CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from((ExecutorService) szVar.d));
            ic2 ic2Var = new ic2(string);
            Duration.Companion companion = Duration.Companion;
            DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
            Context applicationContext = getApplicationContext();
            ExecutorCoroutineDispatcher executorCoroutineDispatcherFrom = ExecutorsKt.from((ExecutorService) szVar.d);
            Intrinsics.checkNotNull(applicationContext);
            cc2 cc2Var = new cc2(new k70(CoroutineScope, executorCoroutineDispatcherFrom, null, szVar, ic2Var, applicationContext, null, null, null));
            Context applicationContext2 = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
            applicationContext2.getClass();
            ac2 ac2Var2 = (ac2) new nj0(applicationContext2, Integer.valueOf(i), Long.valueOf(j), ic2Var, cc2Var, CoroutineScope).g.get();
            ac2Var2.getClass();
            BuildersKt__Builders_commonKt.launch$default(ac2Var2.a, null, null, new xb2(ac2Var2, new yb2(ac2Var2, null), null), 3, null);
        }
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        Intrinsics.checkNotNullExpressionValue(resultSuccess, "success(...)");
        return resultSuccess;
    }
}
