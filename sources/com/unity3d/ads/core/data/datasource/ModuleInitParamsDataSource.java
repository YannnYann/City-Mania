package com.unity3d.ads.core.data.datasource;

import gatewayprotocol.v1.ModuleInitParamsOuterClass;
import java.util.List;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ModuleInitParamsDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface ModuleInitParamsDataSource {
    Object invoke(Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>> continuation);
}
