package com.unity3d.ads.core.data.datasource;

import com.google.android.gms.common.api.Api;
import com.unity3d.ads.core.data.model.CacheResult;
import java.io.File;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: CacheDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface CacheDataSource {
    Object getFile(File file, String str, String str2, Integer num, int i, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super CacheResult> continuation);

    /* JADX INFO: compiled from: CacheDataSource.kt */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object getFile$default(CacheDataSource cacheDataSource, File file, String str, String str2, Integer num, int i, Function3 function3, Continuation continuation, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFile");
            }
            if ((i2 & 4) != 0) {
                str2 = null;
            }
            if ((i2 & 8) != 0) {
                num = Integer.valueOf(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            }
            if ((i2 & 16) != 0) {
                i = Integer.MAX_VALUE;
            }
            if ((i2 & 32) != 0) {
                function3 = null;
            }
            return cacheDataSource.getFile(file, str, str2, num, i, function3, continuation);
        }
    }
}
