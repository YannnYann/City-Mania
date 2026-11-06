package com.unity3d.ads.core.data.repository;

import com.google.android.gms.common.api.Api;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.CachedFile;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import org.json.JSONArray;

/* JADX INFO: compiled from: CacheRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface CacheRepository {
    Object clearCache(Continuation<? super Unit> continuation);

    Object doesFileExist(String str, Continuation<? super Boolean> continuation);

    Object getCacheSize(Continuation<? super Long> continuation);

    Object getFile(String str, JSONArray jSONArray, int i, int i2, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super CacheResult> continuation);

    Object getWebviewFile(String str, String str2, boolean z, Continuation<? super CacheResult> continuation);

    Object getWebviewFileFromDisk(String str, String str2, Continuation<? super CacheResult> continuation);

    boolean removeFile(CachedFile cachedFile);

    Object retrieveFile(String str, Continuation<? super CacheResult> continuation);

    /* JADX INFO: compiled from: CacheRepository.kt */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object getFile$default(CacheRepository cacheRepository, String str, JSONArray jSONArray, int i, int i2, Function3 function3, Continuation continuation, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFile");
            }
            if ((i3 & 2) != 0) {
                jSONArray = null;
            }
            if ((i3 & 4) != 0) {
                i = 0;
            }
            if ((i3 & 8) != 0) {
                i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            if ((i3 & 16) != 0) {
                function3 = null;
            }
            return cacheRepository.getFile(str, jSONArray, i, i2, function3, continuation);
        }

        public static /* synthetic */ Object getWebviewFile$default(CacheRepository cacheRepository, String str, String str2, boolean z, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getWebviewFile");
            }
            if ((i & 4) != 0) {
                z = false;
            }
            return cacheRepository.getWebviewFile(str, str2, z, continuation);
        }
    }
}
