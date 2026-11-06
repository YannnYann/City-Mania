package ads_mobile_sdk;

import ads_mobile_sdk.ao;
import ads_mobile_sdk.f;
import ads_mobile_sdk.vz0;
import ads_mobile_sdk.vz0.a;
import ads_mobile_sdk.yh1;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class vz0<MessageT extends vz0<MessageT, BuilderT>, BuilderT extends a<MessageT, BuilderT>> extends f<MessageT, BuilderT> {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    private static final ConcurrentMap<Class<?>, Object> parserOrInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected zv3 b = zv3.b();

    public static class c<ContainingType extends tw1, ExtensionT> extends br0<ContainingType, ExtensionT> {
    }

    public enum d {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    public static yh1.c i() {
        return xh1.e();
    }

    public static yh1.e j() {
        return au1.e();
    }

    public static <E> yh1.f<E> k() {
        return bw2.e();
    }

    public abstract Object a(d dVar, Object obj, Object obj2);

    public final int g() {
        return aw2.a().a(this).d(this);
    }

    public final boolean p() {
        return this.memoizedSerializedSize < 0;
    }

    public final void r() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    public final int m() {
        return this.a;
    }

    public final void e() {
        this.a = 0;
    }

    public final boolean o() {
        return m() == 0;
    }

    @Override // ads_mobile_sdk.tw1
    public final aj2<MessageT> getParserForType() {
        return (aj2) a(d.GET_PARSER, (Object) null, (Object) null);
    }

    @Override // ads_mobile_sdk.uw1
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final MessageT getDefaultInstanceForType() {
        return (MessageT) a(d.GET_DEFAULT_INSTANCE, (Object) null, (Object) null);
    }

    @Override // ads_mobile_sdk.tw1
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final BuilderT newBuilderForType() {
        return (BuilderT) a(d.NEW_BUILDER, (Object) null, (Object) null);
    }

    public final MessageT t() {
        return (MessageT) a(d.NEW_MUTABLE_INSTANCE, (Object) null, (Object) null);
    }

    public String toString() {
        return vw1.a(this, super.toString());
    }

    public int hashCode() {
        if (p()) {
            return g();
        }
        if (o()) {
            a(g());
        }
        return m();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return aw2.a().a(this).b(this, (vz0) obj);
        }
        return false;
    }

    public final void q() {
        aw2.a().a(this).c(this);
        r();
    }

    public final <Message2T extends vz0<Message2T, Builder2T>, Builder2T extends a<Message2T, Builder2T>> Builder2T h() {
        return (Builder2T) a(d.NEW_BUILDER, (Object) null, (Object) null);
    }

    @Override // ads_mobile_sdk.uw1
    public final boolean isInitialized() {
        return a(this, true);
    }

    public final BuilderT u() {
        return (BuilderT) ((a) a(d.NEW_BUILDER, (Object) null, (Object) null)).a(this);
    }

    public final void f() {
        b(Integer.MAX_VALUE);
    }

    public final int n() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    @Override // ads_mobile_sdk.tw1
    public int getSerializedSize() {
        return a((la3) null);
    }

    private int b(la3<?> la3Var) {
        if (la3Var == null) {
            return aw2.a().a(this).b(this);
        }
        return la3Var.b(this);
    }

    public final Object d() throws Exception {
        return a(d.BUILD_MESSAGE_INFO, (Object) null, (Object) null);
    }

    public static abstract class a<MessageT extends vz0<MessageT, BuilderT>, BuilderT extends a<MessageT, BuilderT>> extends f.a<MessageT, BuilderT> {
        private final MessageT a;
        protected MessageT b;

        public a(MessageT messaget) {
            this.a = messaget;
            if (!messaget.p()) {
                this.b = (MessageT) g();
                return;
            }
            throw new IllegalArgumentException("Default instance must be immutable.");
        }

        private MessageT g() {
            return (MessageT) this.a.t();
        }

        public final void d() {
            if (this.b.p()) {
                return;
            }
            e();
        }

        public void e() {
            MessageT messaget = (MessageT) g();
            a(messaget, this.b);
            this.b = messaget;
        }

        @Override // ads_mobile_sdk.uw1
        public final boolean isInitialized() {
            return vz0.a(this.b, false);
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public BuilderT m588clone() {
            BuilderT buildert = (BuilderT) f().newBuilderForType();
            buildert.b = (MessageT) a();
            return buildert;
        }

        @Override // ads_mobile_sdk.tw1.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public MessageT a() {
            if (!this.b.p()) {
                return this.b;
            }
            this.b.q();
            return this.b;
        }

        public final MessageT b() {
            MessageT messaget = (MessageT) a();
            if (messaget.isInitialized()) {
                return messaget;
            }
            throw f.a.a(messaget);
        }

        public MessageT f() {
            return this.a;
        }

        public BuilderT a(MessageT messaget) {
            if (messaget != null && !f().getClass().isInstance(messaget)) {
                throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
            }
            if (f().equals(messaget)) {
                return this;
            }
            d();
            a(this.b, messaget);
            return this;
        }

        private static <MessageT extends vz0<?, ?>> void a(MessageT messaget, MessageT messaget2) {
            aw2.a().a(messaget).a(messaget, messaget2);
        }
    }

    public static class b<T extends vz0<T, ?>> extends h<T> {
        private final T b;

        public b(T t) {
            this.b = t;
        }

        @Override // ads_mobile_sdk.aj2
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public T a(my myVar, er0 er0Var) throws np1 {
            return (T) vz0.a(this.b, myVar, er0Var);
        }
    }

    private static <T extends vz0<T, ?>> T a(T t) throws np1 {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw t.b().a().a(t);
    }

    @Override // ads_mobile_sdk.f
    public int a(la3 la3Var) {
        if (p()) {
            int iB = b((la3<?>) la3Var);
            if (iB >= 0) {
                return iB;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iB);
        }
        if (n() != Integer.MAX_VALUE) {
            return n();
        }
        int iB2 = b((la3<?>) la3Var);
        b(iB2);
        return iB2;
    }

    private static <T extends vz0<T, ?>> T b(T t, du duVar, er0 er0Var) throws np1 {
        my myVarG = duVar.g();
        T t2 = (T) a(t, myVarG, er0Var);
        try {
            myVarG.a(0);
            return t2;
        } catch (np1 e) {
            throw e.a(t2);
        }
    }

    public void b(int i) {
        if (i >= 0) {
            this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + i);
        }
    }

    public static <T extends vz0<T, ?>> aj2<T> b(Class<T> cls) {
        ConcurrentMap<Class<?>, Object> concurrentMap = parserOrInstanceMap;
        Object obj = concurrentMap.get(cls);
        if (obj == null) {
            a(cls);
            obj = concurrentMap.get(cls);
        }
        if (obj != null) {
            if (obj instanceof aj2) {
                return (aj2) obj;
            }
            b bVar = new b((vz0) obj);
            return concurrentMap.replace((Class<?>) cls, obj, bVar) ? bVar : (aj2) concurrentMap.get(cls);
        }
        throw new IllegalStateException("Default instance cannot be null.");
    }

    public static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends vz0<T, ?>> boolean a(T t, boolean z) {
        Object objA = t.a(d.GET_MEMOIZED_IS_INITIALIZED, null, null);
        if (objA == null) {
            return true;
        }
        if (objA instanceof Byte) {
            byte bByteValue = ((Byte) objA).byteValue();
            if (bByteValue == 1) {
                return true;
            }
            if (bByteValue == 0) {
                return false;
            }
        }
        boolean zA = aw2.a().a(t).a(t);
        if (z) {
            t.a(d.SET_MEMOIZED_IS_INITIALIZED, zA ? t : null, null);
        }
        return zA;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ads_mobile_sdk.yh1$c] */
    public static yh1.c a(yh1.c cVar) {
        return cVar.a2(cVar.size() * 2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ads_mobile_sdk.yh1$e] */
    public static yh1.e a(yh1.e eVar) {
        return eVar.a2(eVar.size() * 2);
    }

    public static <E> yh1.f<E> a(yh1.f<E> fVar) {
        return fVar.a2(fVar.size() * 2);
    }

    public static <T extends vz0<T, ?>> T a(T t, du duVar) throws np1 {
        return (T) a(a(t, duVar, er0.a()));
    }

    public static <T extends vz0<T, ?>> T a(T t, du duVar, er0 er0Var) throws np1 {
        return (T) a(b(t, duVar, er0Var));
    }

    public static <T extends vz0<T, ?>> T a(T t, InputStream inputStream) throws np1 {
        return (T) a(a(t, my.a(inputStream), er0.a()));
    }

    public static <T extends vz0<T, ?>> T a(T t, byte[] bArr) throws np1 {
        return (T) a(a(t, bArr, 0, bArr.length, er0.a()));
    }

    public static <T extends vz0<T, ?>> T a(T t, byte[] bArr, er0 er0Var) throws np1 {
        return (T) a(a(t, bArr, 0, bArr.length, er0Var));
    }

    public static <T extends vz0<T, ?>> T a(T t, my myVar, er0 er0Var) throws np1 {
        T t2 = (T) t.t();
        try {
            la3 la3VarA = aw2.a().a(t2);
            la3VarA.a(t2, ny.a(myVar), er0Var);
            la3VarA.c(t2);
            return t2;
        } catch (np1 e) {
            e = e;
            if (e.a()) {
                e = new np1(e);
            }
            throw e.a(t2);
        } catch (xv3 e2) {
            throw e2.a().a(t2);
        } catch (IOException e3) {
            if (e3.getCause() instanceof np1) {
                throw ((np1) e3.getCause());
            }
            throw new np1(e3).a(t2);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof np1) {
                throw ((np1) e4.getCause());
            }
            throw e4;
        }
    }

    private static <T extends vz0<T, ?>> T a(T t, byte[] bArr, int i, int i2, er0 er0Var) throws np1 {
        if (i2 == 0) {
            return t;
        }
        T t2 = (T) t.t();
        try {
            la3 la3VarA = aw2.a().a(t2);
            la3VarA.a(t2, bArr, i, i + i2, new ao.a(er0Var));
            la3VarA.c(t2);
            return t2;
        } catch (np1 e) {
            np1 np1Var = e;
            if (np1Var.a()) {
                np1Var = new np1(np1Var);
            }
            throw np1Var.a(t2);
        } catch (xv3 e2) {
            throw e2.a().a(t2);
        } catch (IOException e3) {
            if (e3.getCause() instanceof np1) {
                throw ((np1) e3.getCause());
            }
            throw new np1(e3).a(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw np1.l().a(t2);
        }
    }

    public static <T extends vz0<T, ?>> void a(Class<T> cls, T t) {
        t.r();
        parserOrInstanceMap.put(cls, t);
    }

    public final void a(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.tw1
    public void a(oy oyVar) throws IOException {
        aw2.a().a(this).a(this, py.a(oyVar));
    }

    public static <T extends vz0<?, ?>> T a(Class<T> cls) {
        ConcurrentMap<Class<?>, Object> concurrentMap = parserOrInstanceMap;
        Object defaultInstanceForType = concurrentMap.get(cls);
        if (defaultInstanceForType == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                defaultInstanceForType = concurrentMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (defaultInstanceForType == null) {
            defaultInstanceForType = ((vz0) hw3.a(cls)).getDefaultInstanceForType();
            if (defaultInstanceForType != null) {
                concurrentMap.put(cls, defaultInstanceForType);
            } else {
                throw new IllegalStateException();
            }
        }
        if (defaultInstanceForType instanceof vz0) {
            return (T) defaultInstanceForType;
        }
        return (T) ((b) defaultInstanceForType).b;
    }

    public static Object a(tw1 tw1Var, String str, Object[] objArr) {
        return new i13(tw1Var, str, objArr);
    }
}
