package io.bidmachine.analytics.internal.n;

import android.content.Context;
import android.os.Bundle;
import com.ironsource.o4$$ExternalSyntheticBackport0;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.g.EnumC4114a;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.analytics.internal.i.AbstractC4127a;
import io.bidmachine.analytics.internal.m.a;
import io.bidmachine.analytics.internal.p.a;
import io.bidmachine.util.UtilsKt;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends io.bidmachine.analytics.internal.m.a {
    public static final i q = new i(null);
    private static final Lazy r = LazyKt__LazyJVMKt.lazy(d.a);
    private static final Lazy s = LazyKt__LazyJVMKt.lazy(c.a);
    private static final Lazy t = LazyKt__LazyJVMKt.lazy(b.a);
    private static final Lazy u = LazyKt__LazyJVMKt.lazy(C1128a.a);
    private static final Lazy v = LazyKt__LazyJVMKt.lazy(h.a);
    private static final Lazy w = LazyKt__LazyJVMKt.lazy(f.a);
    private static final Lazy x = LazyKt__LazyJVMKt.lazy(g.a);
    private static final Lazy y = LazyKt__LazyJVMKt.lazy(e.a);
    private final C4105a k;
    private final j l;
    private final String m;
    private final Lazy n;
    private List o;
    private volatile Bundle p;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.n.a$a, reason: collision with other inner class name */
    public static final class C1128a extends Lambda implements Function0 {
        public static final C1128a a = new C1128a();

        public C1128a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("YW5kcm9pZC5vcy5CdW5kbGU=");
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLnNhZmVkay5hbmRyb2lkLnV0aWxzLlBlcnNpc3RlbnRDb25jdXJyZW50SGFzaE1hcA==");
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLnNhZmVkay5hbmRyb2lkLmFuYWx5dGljcy5TdGF0c0NvbGxlY3Rvcg==");
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final j invoke() {
            i iVar = a.q;
            return new j(iVar.c(), iVar.b());
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("YWRfZm9ybWF0X3R5cGU=");
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y2xpY2tfdXJs");
        }
    }

    public static final class g extends Lambda implements Function0 {
        public static final g a = new g();

        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("ZXZlbnRfaWQ=");
        }
    }

    public static final class h extends Lambda implements Function0 {
        public static final h a = new h();

        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("aXNfY2xpY2tlZA==");
        }
    }

    public static final class i {
        public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (String) a.u.getValue();
        }

        public final String b() {
            return (String) a.t.getValue();
        }

        public final String c() {
            return (String) a.s.getValue();
        }

        public final j d() {
            return (j) a.r.getValue();
        }

        public final String e() {
            return (String) a.y.getValue();
        }

        public final String f() {
            return (String) a.w.getValue();
        }

        public final String g() {
            return (String) a.x.getValue();
        }

        public final String h() {
            return (String) a.v.getValue();
        }

        private i() {
        }
    }

    public static final class j {
        private final String a;
        private final String b;

        public j(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }
    }

    public static final class k extends SuspendLambda implements Function2 {
        int a;

        public k(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new k(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            long duration;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i != 0 && i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            do {
                Object objM = a.this.m();
                if (Result.m2766isSuccessimpl(objM)) {
                    Duration.Companion companion = Duration.Companion;
                    duration = DurationKt.toDuration(2, DurationUnit.SECONDS);
                } else {
                    if (Result.m2763exceptionOrNullimpl(objM) instanceof IllegalStateException) {
                        return Unit.INSTANCE;
                    }
                    Duration.Companion companion2 = Duration.Companion;
                    duration = DurationKt.toDuration(30, DurationUnit.SECONDS);
                }
                this.a = 1;
            } while (DelayKt.m2937delayVtjQ1oo(duration, this) != coroutine_suspended);
            return coroutine_suspended;
        }
    }

    public static final class l extends Lambda implements Function0 {
        final /* synthetic */ io.bidmachine.analytics.internal.I.f a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(io.bidmachine.analytics.internal.I.f fVar) {
            super(0);
            this.a = fVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(this.a.b()));
        }
    }

    public /* synthetic */ a(C4105a c4105a, j jVar, io.bidmachine.analytics.internal.I.f fVar, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(c4105a, (i2 & 2) != 0 ? q.d() : jVar, (i2 & 4) != 0 ? io.bidmachine.analytics.internal.I.f.g.a() : fVar);
    }

    private final Object l() {
        try {
            Result.Companion companion = Result.Companion;
            Class<?> cls = Class.forName(this.l.b());
            for (Field field : cls.getDeclaredFields()) {
                if (Modifier.isStatic(field.getModifiers()) && field.getType() == cls) {
                    field.setAccessible(true);
                    Result.Companion companion2 = Result.Companion;
                    return Result.m2760constructorimpl(field.get(null));
                }
            }
            return Result.m2760constructorimpl(null);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.m;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
    }

    public final CoroutineScope k() {
        return (CoroutineScope) this.n.getValue();
    }

    public final Object m() {
        try {
            Result.Companion companion = Result.Companion;
            Object objL = l();
            Object obj = Result.m2765isFailureimpl(objL) ? null : objL;
            if (obj == null) {
                if (Result.m2765isFailureimpl(objL)) {
                    a(h.a.MONITOR_INVALID, "Collector not found");
                    return Result.m2760constructorimpl(ResultKt.createFailure(new IllegalStateException()));
                }
                a(h.a.MONITOR_NO_CONTENT, "Collector disabled");
                return Result.m2760constructorimpl(ResultKt.createFailure(new RuntimeException()));
            }
            Object objD = d(obj);
            Object obj2 = Result.m2765isFailureimpl(objD) ? null : objD;
            if (obj2 == null) {
                if (!Result.m2765isFailureimpl(objD)) {
                    return Result.m2760constructorimpl(Unit.INSTANCE);
                }
                a(h.a.MONITOR_INVALID, "List not found");
                return Result.m2760constructorimpl(ResultKt.createFailure(new IllegalStateException()));
            }
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) obj2;
            Iterator it = CollectionsKt___CollectionsKt.toSet(concurrentHashMap.keySet()).iterator();
            while (it.hasNext()) {
                Object obj3 = concurrentHashMap.get(it.next());
                if (obj3 != null) {
                    Object objC = c(obj3);
                    if (Result.m2765isFailureimpl(objC)) {
                        objC = null;
                    }
                    Bundle bundle = (Bundle) objC;
                    if (bundle != null) {
                        a(bundle);
                    }
                }
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(AbstractC4127a.b bVar) throws ClassNotFoundException {
        super.b(bVar);
        Class.forName(this.l.b());
    }

    @Override // io.bidmachine.analytics.internal.m.a
    public a.b b(Map map) {
        String string;
        Boolean booleanOrDefault$default;
        i iVar = q;
        Object obj = map.get(iVar.g());
        if (obj == null || (string = obj.toString()) == null) {
            string = UUID.randomUUID().toString();
        }
        long jCurrentTimeMillis = this.k.e().currentTimeMillis();
        Object obj2 = map.get(iVar.f());
        String string2 = obj2 != null ? obj2.toString() : null;
        Object obj3 = map.get(iVar.h());
        return new a.b(string, jCurrentTimeMillis, 0, null, null, null, string2, (obj3 == null || (booleanOrDefault$default = UtilsKt.toBooleanOrDefault$default(obj3, null, 1, null)) == null) ? false : booleanOrDefault$default.booleanValue(), 60, null);
    }

    @Override // io.bidmachine.analytics.internal.m.a
    public EnumC4114a c(Map map) {
        String string;
        String upperCase;
        Object obj = map.get(q.e());
        if (obj != null && (string = obj.toString()) != null && (upperCase = string.toUpperCase(Locale.US)) != null) {
            a.K k2 = io.bidmachine.analytics.internal.p.a.p;
            if (Intrinsics.areEqual(upperCase, k2.a()) ? true : Intrinsics.areEqual(upperCase, k2.e()) ? true : Intrinsics.areEqual(upperCase, k2.d())) {
                return EnumC4114a.BANNER;
            }
            if (Intrinsics.areEqual(upperCase, k2.b()) ? true : Intrinsics.areEqual(upperCase, k2.c())) {
                return EnumC4114a.INTERSTITIAL;
            }
            if (Intrinsics.areEqual(upperCase, k2.g()) ? true : Intrinsics.areEqual(upperCase, k2.h()) ? true : Intrinsics.areEqual(upperCase, k2.i())) {
                return EnumC4114a.REWARDED;
            }
            if (Intrinsics.areEqual(upperCase, k2.f())) {
                return EnumC4114a.NATIVE;
            }
        }
        return null;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void e(Context context) {
        JobKt__JobKt.cancelChildren$default(k().getCoroutineContext(), null, 1, null);
    }

    @Override // io.bidmachine.analytics.internal.m.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    public void f(Context context) {
        super.f(context);
        BuildersKt__Builders_commonKt.launch$default(k(), null, null, new k(null), 3, null);
    }

    private final Object d(Object obj) {
        Field field;
        try {
            Result.Companion companion = Result.Companion;
            Class<?> cls = Class.forName(this.l.a());
            Field[] declaredFields = obj.getClass().getDeclaredFields();
            int length = declaredFields.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    field = null;
                    break;
                }
                field = declaredFields[i2];
                if (!Modifier.isStatic(field.getModifiers()) && cls.isAssignableFrom(field.getType())) {
                    break;
                }
                i2++;
            }
            if (field == null) {
                return Result.m2760constructorimpl(null);
            }
            field.setAccessible(true);
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(field.get(obj));
        } catch (Throwable th) {
            Result.Companion companion3 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public a(C4105a c4105a, j jVar, io.bidmachine.analytics.internal.I.f fVar) {
        super(c4105a);
        this.k = c4105a;
        this.l = jVar;
        this.m = "bic";
        this.n = LazyKt__LazyJVMKt.lazy(new l(fVar));
        this.o = CollectionsKt__CollectionsKt.emptyList();
    }

    private final void a(Bundle bundle) {
        i iVar = q;
        String str = bundle.getString(iVar.g(), "") + '-' + bundle.getBoolean(iVar.h(), false);
        if (this.o.contains(str)) {
            return;
        }
        this.p = bundle;
        List mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.o);
        mutableList.add(str);
        if (mutableList.size() > 30) {
            CollectionsKt__MutableCollectionsKt.removeFirstOrNull(mutableList);
        }
        this.o = CollectionsKt___CollectionsKt.toList(mutableList);
        a(io.bidmachine.analytics.internal.I.g.a(bundle));
    }

    public final Object c(Object obj) {
        Method method;
        try {
            Result.Companion companion = Result.Companion;
            Class<?> cls = obj.getClass();
            Class<?> cls2 = Class.forName(q.a());
            Method[] declaredMethods = cls.getDeclaredMethods();
            int length = declaredMethods.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    method = null;
                    break;
                }
                method = declaredMethods[i3];
                if (o4$$ExternalSyntheticBackport0.m(method) == 0 && cls2.isAssignableFrom(method.getReturnType())) {
                    break;
                }
                i3++;
            }
            if (method == null) {
                Method[] methods = cls.getMethods();
                int length2 = methods.length;
                while (true) {
                    if (i2 >= length2) {
                        break;
                    }
                    Method method2 = methods[i2];
                    if (o4$$ExternalSyntheticBackport0.m(method2) == 0 && cls2.isAssignableFrom(method2.getReturnType())) {
                        method = method2;
                        break;
                    }
                    i2++;
                }
            }
            if (method == null) {
                return Result.m2760constructorimpl(null);
            }
            method.setAccessible(true);
            Object objInvoke = method.invoke(obj, null);
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl((Bundle) objInvoke);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    private final void a(h.a aVar, String str) {
        this.p = null;
        a(new io.bidmachine.analytics.internal.g.h("bic", aVar, str));
    }
}
