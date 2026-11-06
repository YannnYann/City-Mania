package io.bidmachine.analytics.internal.I;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    private final ConcurrentHashMap a = new ConcurrentHashMap();
    private final ConcurrentHashMap b = new ConcurrentHashMap();
    private final ConcurrentHashMap c = new ConcurrentHashMap();
    private final ConcurrentHashMap d = new ConcurrentHashMap();
    private final ConcurrentHashMap e = new ConcurrentHashMap();

    public static final class a {
        private final Class a;
        private final String b;
        private final boolean c;

        public a(Class cls, String str, boolean z) {
            this.a = cls;
            this.b = str;
            this.c = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && this.c == aVar.c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v5 */
        public int hashCode() {
            int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
            boolean z = this.c;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return iHashCode + r1;
        }

        public String toString() {
            return "FieldKey(owner=" + this.a + ", name=" + this.b + ", isStatic=" + this.c + ')';
        }
    }

    public static final class b {
        private final Class a;
        private final String b;
        private final List c;

        public b(Class cls, String str, List list) {
            this.a = cls;
            this.b = str;
            this.c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.c, bVar.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "MethodKey(owner=" + this.a + ", name=" + this.b + ", parameterTypes=" + this.c + ')';
        }
    }

    public static final class c {
        public static final c a = new c();

        private c() {
        }
    }

    public static final class d extends Lambda implements Function1 {
        public d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Sequence invoke(Class cls) {
            return SequencesKt___SequencesKt.plus(SequencesKt__SequencesKt.sequenceOf(cls), e.this.a(cls));
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.I.e$e, reason: collision with other inner class name */
    public static final class C1116e extends Lambda implements Function1 {
        public static final C1116e a = new C1116e();

        public C1116e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Class invoke(Class cls) {
            return cls.getSuperclass();
        }
    }

    public static final class f extends Lambda implements Function1 {
        public static final f a = new f();

        public f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(Class cls) {
            return Boolean.valueOf(!Intrinsics.areEqual(cls, Object.class));
        }
    }

    public static final class g extends Lambda implements Function1 {
        public static final g a = new g();

        public g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Sequence invoke(Class cls) {
            return ArraysKt___ArraysKt.asSequence(cls.getDeclaredFields());
        }
    }

    public static final class h extends Lambda implements Function1 {
        public static final h a = new h();

        public h() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(Field field) {
            return Boolean.valueOf(!Modifier.isStatic(field.getModifiers()));
        }
    }

    public static final class i extends Lambda implements Function1 {
        public static final i a = new i();

        public i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(Field field) {
            return Boolean.valueOf((field.getType().isPrimitive() || field.getType().isEnum() || Intrinsics.areEqual(field.getType(), String.class)) ? false : true);
        }
    }

    public static final class j extends Lambda implements Function1 {
        public j() {
            super(1);
        }

        public final void a(Field field) {
            try {
                Result.Companion companion = Result.Companion;
                field.setAccessible(true);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Field) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class k extends Lambda implements Function1 {
        public static final k a = new k();

        public k() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Class invoke(Class cls) {
            return cls.getSuperclass();
        }
    }

    public static final class l extends Lambda implements Function1 {
        public static final l a = new l();

        public l() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(Class cls) {
            return Boolean.valueOf(!Intrinsics.areEqual(cls, Object.class));
        }
    }

    public static final class m extends Lambda implements Function1 {
        public m() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Sequence invoke(Class cls) {
            return e.this.a(cls);
        }
    }

    public final Method b(Class cls, String str, List list) {
        b bVar = new b(cls, str, list);
        ConcurrentHashMap concurrentHashMap = this.b;
        Object obj = concurrentHashMap.get(bVar);
        if (obj == null) {
            Object objC = c(cls, str, list);
            if (objC == null) {
                objC = c.a;
            }
            obj = objC;
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(bVar, obj);
            if (objPutIfAbsent != null) {
                obj = objPutIfAbsent;
            }
        }
        if (obj instanceof Method) {
            return (Method) obj;
        }
        return null;
    }

    public final Set c(Class cls) {
        Object objM2760constructorimpl;
        ConcurrentHashMap concurrentHashMap = this.e;
        Object obj = concurrentHashMap.get(cls);
        if (obj == null) {
            try {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(SequencesKt___SequencesKt.toSet(SequencesKt___SequencesKt.flatMap(SequencesKt___SequencesKt.takeWhile(SequencesKt__SequencesKt.generateSequence(cls, k.a), l.a), new m())));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Set setEmptySet = SetsKt__SetsKt.emptySet();
            if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
                objM2760constructorimpl = setEmptySet;
            }
            obj = (Set) objM2760constructorimpl;
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(cls, obj);
            if (objPutIfAbsent != null) {
                obj = objPutIfAbsent;
            }
        }
        return (Set) obj;
    }

    public static /* synthetic */ Object a(e eVar, Object obj, String str, List list, int i2, Object obj2) {
        if ((i2 & 4) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        return eVar.a(obj, str, list);
    }

    public final Object a(Object obj, String str, List list) {
        Class<?> cls = obj.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((Class) ((Pair) it.next()).getFirst());
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((Pair) it2.next()).getSecond());
        }
        Object[] array = arrayList2.toArray(new Object[0]);
        Method methodB = b(cls, str, arrayList);
        if (methodB == null) {
            return null;
        }
        try {
            return methodB.invoke(obj, Arrays.copyOf(array, array.length));
        } catch (Throwable unused) {
            return null;
        }
    }

    private final Method c(Class cls, String str, List list) {
        Method method;
        Method declaredMethod;
        Class[] clsArr = (Class[]) list.toArray(new Class[0]);
        try {
            method = cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (Throwable unused) {
            method = null;
        }
        if (method != null) {
            return method;
        }
        while (cls != null && !Intrinsics.areEqual(cls, Object.class)) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            } catch (Throwable unused2) {
                declaredMethod = null;
            }
            if (declaredMethod != null) {
                try {
                    Result.Companion companion = Result.Companion;
                    declaredMethod.setAccessible(true);
                    Result.m2760constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    Result.m2760constructorimpl(ResultKt.createFailure(th));
                }
                return declaredMethod;
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    public final Field[] b(Class cls) {
        Object objM2760constructorimpl;
        ConcurrentHashMap concurrentHashMap = this.c;
        Object obj = concurrentHashMap.get(cls);
        if (obj == null) {
            try {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl((Field[]) SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.onEach(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.flatMap(SequencesKt___SequencesKt.takeWhile(SequencesKt__SequencesKt.generateSequence(cls, C1116e.a), f.a), g.a), h.a), i.a), new j())).toArray(new Field[0]));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Field[] fieldArr = new Field[0];
            if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
                objM2760constructorimpl = fieldArr;
            }
            obj = (Field[]) objM2760constructorimpl;
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(cls, obj);
            if (objPutIfAbsent != null) {
                obj = objPutIfAbsent;
            }
        }
        return (Field[]) obj;
    }

    public static /* synthetic */ Object a(e eVar, Class cls, String str, List list, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        return eVar.a(cls, str, list);
    }

    public final Class a(String str) {
        ConcurrentHashMap concurrentHashMap = this.a;
        Object cls = concurrentHashMap.get(str);
        if (cls == null) {
            try {
                cls = Class.forName(str);
            } catch (Throwable unused) {
                cls = null;
            }
            if (cls == null) {
                cls = c.a;
            }
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(str, cls);
            if (objPutIfAbsent != null) {
                cls = objPutIfAbsent;
            }
        }
        if (cls instanceof Class) {
            return (Class) cls;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.reflect.Field b(java.lang.Class r3, java.lang.String r4, boolean r5) {
        /*
            r2 = this;
        L0:
            r0 = 0
            if (r3 == 0) goto L3c
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r1)
            if (r1 != 0) goto L3c
            java.lang.reflect.Field r0 = r3.getDeclaredField(r4)     // Catch: java.lang.Throwable -> Lf
        Lf:
            if (r0 == 0) goto L37
            int r1 = r0.getModifiers()
            boolean r1 = java.lang.reflect.Modifier.isStatic(r1)
            if (r1 == r5) goto L20
            java.lang.Class r3 = r3.getSuperclass()
            goto L0
        L20:
            kotlin.Result$Companion r3 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L2c
            r3 = 1
            r0.setAccessible(r3)     // Catch: java.lang.Throwable -> L2c
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L2c
            kotlin.Result.m2760constructorimpl(r3)     // Catch: java.lang.Throwable -> L2c
            goto L36
        L2c:
            r3 = move-exception
            kotlin.Result$Companion r4 = kotlin.Result.Companion
            java.lang.Object r3 = kotlin.ResultKt.createFailure(r3)
            kotlin.Result.m2760constructorimpl(r3)
        L36:
            return r0
        L37:
            java.lang.Class r3 = r3.getSuperclass()
            goto L0
        L3c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.I.e.b(java.lang.Class, java.lang.String, boolean):java.lang.reflect.Field");
    }

    public final Field a(Class cls, String str, boolean z) {
        a aVar = new a(cls, str, z);
        ConcurrentHashMap concurrentHashMap = this.d;
        Object obj = concurrentHashMap.get(aVar);
        if (obj == null) {
            Object objB = b(cls, str, z);
            if (objB == null) {
                objB = c.a;
            }
            obj = objB;
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(aVar, obj);
            if (objPutIfAbsent != null) {
                obj = objPutIfAbsent;
            }
        }
        if (obj instanceof Field) {
            return (Field) obj;
        }
        return null;
    }

    public final Object a(Class cls, Object obj, String str, boolean z) {
        Field fieldA;
        if ((!z && obj == null) || (fieldA = a(cls, str, z)) == null) {
            return null;
        }
        try {
            return z ? fieldA.get(null) : fieldA.get(obj);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Sequence a(Class cls) {
        return SequencesKt___SequencesKt.flatMap(ArraysKt___ArraysKt.asSequence(cls.getInterfaces()), new d());
    }

    public final Object a(Class cls, String str, List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((Class) ((Pair) it.next()).getFirst());
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((Pair) it2.next()).getSecond());
        }
        Object[] array = arrayList2.toArray(new Object[0]);
        Method methodB = b(cls, str, arrayList);
        if (methodB == null) {
            return null;
        }
        try {
            return methodB.invoke(null, Arrays.copyOf(array, array.length));
        } catch (Throwable unused) {
            return null;
        }
    }
}
