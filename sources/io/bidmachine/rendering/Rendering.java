package io.bidmachine.rendering;

import android.content.Context;
import io.bidmachine.iab.mraid.MraidLog;
import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.utils.NetworkRequestBuilder;
import io.bidmachine.rendering.utils.UserAgentProvider;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.cache.MediaFileCacheManager;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class Rendering {
    public static final Rendering INSTANCE = new Rendering();
    public static final AtomicBoolean a = new AtomicBoolean(false);
    public static UserAgentProvider b;
    public static NetworkRequestBuilder c;
    public static volatile Function0 d;

    public static final class a extends Lambda implements Function0 {
        public final /* synthetic */ MediaFileCacheManager a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(MediaFileCacheManager mediaFileCacheManager) {
            super(0);
            this.a = mediaFileCacheManager;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MediaFileCacheManager invoke() {
            return this.a;
        }
    }

    public static final Function0<MediaFileCacheManager> getMediaFileCacheManagerProvider() {
        return d;
    }

    public static final NetworkRequestBuilder getNetworkRequestBuilder() {
        return c;
    }

    public static final String getUserAgent() {
        UserAgentProvider userAgentProvider = b;
        if (userAgentProvider != null) {
            return userAgentProvider.getUserAgent();
        }
        return null;
    }

    public static final void setUserAgentProvider(UserAgentProvider userAgentProvider) {
        b = userAgentProvider;
    }

    public final Repository createRepository(MediaFileCacheManager mediaFileCacheManager) {
        Intrinsics.checkNotNullParameter(mediaFileCacheManager, "mediaFileCacheManager");
        return new io.bidmachine.rendering.internal.repository.a(new a(mediaFileCacheManager), CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(SdkDispatchers.Companion.getDefault().getMain())), j.i.a());
    }

    public final void initialize(Context context, NetworkRequestBuilder networkRequestBuilder, Function0<MediaFileCacheManager> mediaFileCacheManagerProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(networkRequestBuilder, "networkRequestBuilder");
        Intrinsics.checkNotNullParameter(mediaFileCacheManagerProvider, "mediaFileCacheManagerProvider");
        if (a.compareAndSet(false, true)) {
            c = networkRequestBuilder;
            d = mediaFileCacheManagerProvider;
        }
    }

    public final void setLoggingEnabled(boolean z) {
        t.a(z);
        MraidLog.setEnabled(z);
    }
}
