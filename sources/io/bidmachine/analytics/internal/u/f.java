package io.bidmachine.analytics.internal.u;

import android.content.Context;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.a.f;
import io.bidmachine.analytics.internal.h.InterfaceC4121a;
import io.bidmachine.analytics.internal.r.a;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends io.bidmachine.analytics.internal.r.a implements InterfaceC4121a {
    public static final b n = new b(null);
    private final C4105a g;
    private final Function1 h;
    private Context i;
    private io.bidmachine.analytics.internal.u.b j;
    private e k;
    private boolean l;
    private final String m;

    public static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.u.b invoke(Context context) {
            return new io.bidmachine.analytics.internal.u.b(context);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public static final class c extends ContinuationImpl {
        Object a;
        /* synthetic */ Object b;
        int d;

        public c(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.d |= Integer.MIN_VALUE;
            return f.this.a(null, this);
        }
    }

    public /* synthetic */ f(C4105a c4105a, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c4105a, (i & 2) != 0 ? a.a : function1);
    }

    private final g d() {
        return this.g.d().c();
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.m;
    }

    @Override // io.bidmachine.analytics.internal.r.a
    public boolean c() {
        return this.l;
    }

    @Override // io.bidmachine.analytics.internal.r.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    public void e(Context context) {
        super.e(context);
        io.bidmachine.analytics.internal.u.b bVar = this.j;
        if (bVar != null) {
            bVar.j();
        }
    }

    @Override // io.bidmachine.analytics.internal.r.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    public void f(Context context) {
        io.bidmachine.analytics.internal.u.b bVar = this.j;
        if (bVar != null) {
            bVar.i();
        }
        super.f(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.bidmachine.analytics.internal.r.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(io.bidmachine.analytics.ReaderConfig.Rule r6, kotlin.coroutines.Continuation r7) throws java.io.FileNotFoundException {
        /*
            r5 = this;
            boolean r6 = r7 instanceof io.bidmachine.analytics.internal.u.f.c
            if (r6 == 0) goto L13
            r6 = r7
            io.bidmachine.analytics.internal.u.f$c r6 = (io.bidmachine.analytics.internal.u.f.c) r6
            int r0 = r6.d
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r6.d = r0
            goto L18
        L13:
            io.bidmachine.analytics.internal.u.f$c r6 = new io.bidmachine.analytics.internal.u.f$c
            r6.<init>(r7)
        L18:
            java.lang.Object r7 = r6.b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.d
            r2 = 1
            if (r1 == 0) goto L35
            if (r1 != r2) goto L2d
            java.lang.Object r6 = r6.a
            io.bidmachine.analytics.internal.u.f r6 = (io.bidmachine.analytics.internal.u.f) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L56
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            io.bidmachine.analytics.internal.u.b r7 = r5.j
            if (r7 == 0) goto L8e
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
            r3 = 10
            long r3 = kotlin.time.DurationKt.toDuration(r3, r1)
            long r3 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r3)
            r6.a = r5
            r6.d = r2
            java.lang.Object r7 = r7.a(r3, r6)
            if (r7 != r0) goto L55
            return r0
        L55:
            r6 = r5
        L56:
            io.bidmachine.analytics.internal.u.a r7 = (io.bidmachine.analytics.internal.u.a) r7
            io.bidmachine.analytics.internal.u.g r0 = r6.d()
            r0.a(r7)
            io.bidmachine.analytics.internal.u.e r6 = r6.k
            if (r7 == 0) goto L71
            if (r6 == 0) goto L71
            r6.a()
            io.bidmachine.analytics.internal.v.b r0 = io.bidmachine.analytics.internal.v.b.a
            java.util.List r0 = r0.a(r7)
            r6.a(r0)
        L71:
            if (r7 == 0) goto L86
            boolean r6 = r7.f()
            if (r6 != 0) goto L7e
            java.lang.String r6 = r7.b()
            return r6
        L7e:
            java.io.FileNotFoundException r6 = new java.io.FileNotFoundException
            java.lang.String r7 = "Data is empty"
            r6.<init>(r7)
            throw r6
        L86:
            java.io.FileNotFoundException r6 = new java.io.FileNotFoundException
            java.lang.String r7 = "Data not received yet"
            r6.<init>(r7)
            throw r6
        L8e:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "Not configured"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.u.f.a(io.bidmachine.analytics.ReaderConfig$Rule, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
        this.i = context;
    }

    public f(C4105a c4105a, Function1 function1) {
        this.g = c4105a;
        this.h = function1;
        this.l = true;
        this.m = "apur";
    }

    @Override // io.bidmachine.analytics.internal.r.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    /* JADX INFO: renamed from: a */
    public void b(a.C1144a c1144a) {
        super.b(c1144a);
        Context context = this.i;
        if (context != null) {
            if (c1144a.c().size() == 1) {
                ReaderConfig.Rule rule = (ReaderConfig.Rule) CollectionsKt___CollectionsKt.first(c1144a.c());
                if (rule instanceof ReaderConfig.Rule.PurRule) {
                    ReaderConfig.Rule.PurRule purRule = (ReaderConfig.Rule.PurRule) rule;
                    List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) io.bidmachine.analytics.internal.I.g.b(purRule.getPath()), new String[]{"-"}, false, 0, 6, (Object) null);
                    if (listSplit$default.size() == 2) {
                        f.a aVar = io.bidmachine.analytics.internal.a.f.d;
                        io.bidmachine.analytics.internal.a.f fVarA = aVar.a(StringsKt__StringsKt.trim((String) listSplit$default.get(0)).toString());
                        if (fVarA != null) {
                            io.bidmachine.analytics.internal.a.f fVarA2 = aVar.a(StringsKt__StringsKt.trim((String) listSplit$default.get(1)).toString());
                            if (fVarA2 != null) {
                                io.bidmachine.analytics.internal.u.b bVar = this.j;
                                if (bVar == null) {
                                    bVar = (io.bidmachine.analytics.internal.u.b) this.h.invoke(context);
                                }
                                this.j = bVar;
                                io.bidmachine.analytics.internal.a.f fVarL = bVar.l();
                                if (fVarL != null) {
                                    if (fVarL.compareTo(fVarA) >= 0 && fVarL.compareTo(fVarA2) <= 0) {
                                        if (bVar.u()) {
                                            if (bVar.t()) {
                                                this.l = purRule.getShouldReport();
                                                e eVar = this.k;
                                                if (eVar != null) {
                                                    Result.m2759boximpl(eVar.b());
                                                }
                                                String query = purRule.getQuery();
                                                this.k = query != null ? e.c.a(query) : null;
                                                return;
                                            }
                                            throw new IllegalStateException("No permission");
                                        }
                                        throw new IllegalStateException("No host found");
                                    }
                                    throw new IllegalStateException(("Version " + fVarL + " not supported by config").toString());
                                }
                                throw new IllegalStateException("Version not found");
                            }
                            throw new IllegalStateException("Max version not found");
                        }
                        throw new IllegalStateException("Min version not found");
                    }
                    throw new IllegalStateException("Path should contains min and max value");
                }
                throw new IllegalStateException(("Reader " + a() + " accept only PurRule").toString());
            }
            throw new IllegalStateException(("Reader " + a() + " should contains only one rule, received " + c1144a.c().size()).toString());
        }
        throw new IllegalArgumentException("Context is null");
    }

    @Override // io.bidmachine.analytics.internal.h.InterfaceC4121a
    public Object a(String str) {
        e eVar;
        if (!Intrinsics.areEqual(str, InAppPurchaseMetaData.IAP_KEY) || (eVar = this.k) == null) {
            return null;
        }
        Object objC = eVar.c();
        return (Boolean) (Result.m2765isFailureimpl(objC) ? null : objC);
    }
}
