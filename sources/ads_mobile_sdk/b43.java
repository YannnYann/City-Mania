package ads_mobile_sdk;

import java.util.LinkedList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class b43 {
    public final cw2 a;
    public final e01 b;
    public final ex0 c;
    public final zw3 d;
    public g30 e;
    public CoroutineScope f;
    public uv g;
    public Object h;
    public final Channel i;
    public final LinkedList j;

    public b43(dw2 consentManagerProvider, e01 httpClient, ex0 flags, zw3 userAgentProvider) {
        Intrinsics.checkNotNullParameter(consentManagerProvider, "consentManagerProvider");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.a = consentManagerProvider;
        this.b = httpClient;
        this.c = flags;
        this.d = userAgentProvider;
        this.i = ChannelKt.Channel$default(0, null, null, 7, null);
        this.j = new LinkedList();
    }

    public abstract Object a(Continuation continuation);

    public final void a(CoroutineScope backgroundScope, vz0 baseMessage, uv chromeVariationsProvider) {
        CoroutineScope coroutineScope;
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(baseMessage, "baseMessage");
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        Intrinsics.checkNotNullParameter(backgroundScope, "<set-?>");
        this.f = backgroundScope;
        Intrinsics.checkNotNullParameter(baseMessage, "<set-?>");
        this.h = baseMessage;
        Object obj = this.a.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        g30 g30Var = (g30) obj;
        Intrinsics.checkNotNullParameter(g30Var, "<set-?>");
        this.e = g30Var;
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "<set-?>");
        this.g = chromeVariationsProvider;
        CoroutineScope coroutineScope2 = this.f;
        if (coroutineScope2 != null) {
            coroutineScope = coroutineScope2;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundScope");
            coroutineScope = null;
        }
        a43 block = new a43(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public abstract boolean a();

    public abstract long b();

    public final void a(Object snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        synchronized (this) {
            this.j.add(snapshot);
        }
        if (a()) {
            this.i.mo2951trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(byte[] r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.x33
            if (r0 == 0) goto L14
            r0 = r9
            ads_mobile_sdk.x33 r0 = (ads_mobile_sdk.x33) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.c = r1
        L12:
            r5 = r0
            goto L1a
        L14:
            ads_mobile_sdk.x33 r0 = new ads_mobile_sdk.x33
            r0.<init>(r7, r9)
            goto L12
        L1a:
            java.lang.Object r9 = r5.a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.c
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2e
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.io.IOException -> L2b
            goto L78
        L2b:
            r0 = move-exception
            r8 = r0
            goto L62
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.e81 r9 = new ads_mobile_sdk.e81     // Catch: java.io.IOException -> L2b
            r9.<init>()     // Catch: java.io.IOException -> L2b
            ads_mobile_sdk.ex0 r1 = r7.c     // Catch: java.io.IOException -> L2b
            java.lang.String r1 = r1.w0()     // Catch: java.io.IOException -> L2b
            ads_mobile_sdk.e81 r9 = r9.b(r1)     // Catch: java.io.IOException -> L2b
            java.lang.String r1 = "application/x-protobuf"
            ads_mobile_sdk.e81 r8 = r9.b(r1, r8)     // Catch: java.io.IOException -> L2b
            ads_mobile_sdk.f81 r8 = r8.a()     // Catch: java.io.IOException -> L2b
            ads_mobile_sdk.e01 r1 = r7.b     // Catch: java.io.IOException -> L2b
            r5.c = r2     // Catch: java.io.IOException -> L2b
            r3 = 0
            r4 = 0
            r6 = 30
            r2 = r8
            java.lang.Object r8 = ads_mobile_sdk.e01.a(r1, r2, r3, r4, r5, r6)     // Catch: java.io.IOException -> L2b
            if (r8 != r0) goto L78
            return r0
        L62:
            com.google.common.base.Splitter r9 = ads_mobile_sdk.f01.a
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "Failed to ping RCS payload: "
            r9.append(r0)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            ads_mobile_sdk.f01.b(r8)
        L78:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b43.a(byte[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
