package ads_mobile_sdk;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
abstract class hw3 {
    private static final Unsafe a = c();
    private static final Class<?> b = gi.a();
    private static final boolean c = d(Long.TYPE);
    private static final boolean d = d(Integer.TYPE);
    private static final e e = b();
    private static final boolean f = e();
    private static final boolean g = d();
    static final long h;
    private static final long i;
    private static final long j;
    private static final long k;
    private static final long l;
    private static final long m;
    private static final long n;
    private static final long o;
    private static final long p;
    private static final long q;
    private static final long r;
    private static final long s;
    private static final long t;
    private static final long u;
    private static final int v;
    static final boolean w;

    public class a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    static {
        long jB = b(byte[].class);
        h = jB;
        i = b(boolean[].class);
        j = c(boolean[].class);
        k = b(int[].class);
        l = c(int[].class);
        m = b(long[].class);
        n = c(long[].class);
        o = b(float[].class);
        p = c(float[].class);
        q = b(double[].class);
        r = c(double[].class);
        s = b(Object[].class);
        t = c(Object[].class);
        u = a(a());
        v = (int) (jB & 7);
        w = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static double f(Object obj, long j2) {
        return e.b(obj, j2);
    }

    public static float g(Object obj, long j2) {
        return e.c(obj, j2);
    }

    public static int h(Object obj, long j2) {
        return e.d(obj, j2);
    }

    public static long i(Object obj, long j2) {
        return e.e(obj, j2);
    }

    public static Object j(Object obj, long j2) {
        return e.f(obj, j2);
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static abstract class e {
        Unsafe a;

        public abstract void a(Object obj, long j, double d);

        public abstract void a(Object obj, long j, float f);

        public abstract void a(Object obj, long j, boolean z);

        public abstract boolean a(Object obj, long j);

        public abstract double b(Object obj, long j);

        public abstract float c(Object obj, long j);

        public e(Unsafe unsafe) {
            this.a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.a.arrayIndexScale(cls);
        }

        public final int d(Object obj, long j) {
            return this.a.getInt(obj, j);
        }

        public final long e(Object obj, long j) {
            return this.a.getLong(obj, j);
        }

        public final Object f(Object obj, long j) {
            return this.a.getObject(obj, j);
        }

        public final long a(Field field) {
            return this.a.objectFieldOffset(field);
        }

        public boolean b() {
            Unsafe unsafe = this.a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return hw3.a() != null;
            } catch (Throwable th) {
                hw3.a(th);
                return false;
            }
        }

        public final void a(Object obj, long j, int i) {
            this.a.putInt(obj, j, i);
        }

        public final void a(Object obj, long j, long j2) {
            this.a.putLong(obj, j, j2);
        }

        public final void a(Object obj, long j, Object obj2) {
            this.a.putObject(obj, j, obj2);
        }

        public boolean a() {
            Unsafe unsafe = this.a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                hw3.a(th);
                return false;
            }
        }
    }

    public static final class d extends e {
        public d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // ads_mobile_sdk.hw3.e
        public boolean a(Object obj, long j) {
            return this.a.getBoolean(obj, j);
        }

        @Override // ads_mobile_sdk.hw3.e
        public float c(Object obj, long j) {
            return this.a.getFloat(obj, j);
        }

        @Override // ads_mobile_sdk.hw3.e
        public double b(Object obj, long j) {
            return this.a.getDouble(obj, j);
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, boolean z) {
            this.a.putBoolean(obj, j, z);
        }

        @Override // ads_mobile_sdk.hw3.e
        public boolean b() {
            if (!super.b()) {
                return false;
            }
            try {
                Class<?> cls = this.a.getClass();
                Class cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th) {
                hw3.a(th);
                return false;
            }
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, double d) {
            this.a.putDouble(obj, j, d);
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, float f) {
            this.a.putFloat(obj, j, f);
        }

        @Override // ads_mobile_sdk.hw3.e
        public boolean a() {
            if (!super.a()) {
                return false;
            }
            try {
                Class<?> cls = this.a.getClass();
                Class cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                hw3.a(th);
                return false;
            }
        }
    }

    public static final class c extends e {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // ads_mobile_sdk.hw3.e
        public float c(Object obj, long j) {
            return Float.intBitsToFloat(d(obj, j));
        }

        @Override // ads_mobile_sdk.hw3.e
        public double b(Object obj, long j) {
            return Double.longBitsToDouble(e(obj, j));
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, double d) {
            a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, float f) {
            a(obj, j, Float.floatToIntBits(f));
        }

        @Override // ads_mobile_sdk.hw3.e
        public boolean a(Object obj, long j) {
            if (hw3.w) {
                return hw3.b(obj, j);
            }
            return hw3.c(obj, j);
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, boolean z) {
            if (hw3.w) {
                hw3.b(obj, j, z);
            } else {
                hw3.c(obj, j, z);
            }
        }

        @Override // ads_mobile_sdk.hw3.e
        public boolean b() {
            return super.b();
        }
    }

    public static final class b extends e {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // ads_mobile_sdk.hw3.e
        public float c(Object obj, long j) {
            return Float.intBitsToFloat(d(obj, j));
        }

        @Override // ads_mobile_sdk.hw3.e
        public double b(Object obj, long j) {
            return Double.longBitsToDouble(e(obj, j));
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, double d) {
            a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, float f) {
            a(obj, j, Float.floatToIntBits(f));
        }

        @Override // ads_mobile_sdk.hw3.e
        public boolean a(Object obj, long j) {
            if (hw3.w) {
                return hw3.b(obj, j);
            }
            return hw3.c(obj, j);
        }

        @Override // ads_mobile_sdk.hw3.e
        public void a(Object obj, long j, boolean z) {
            if (hw3.w) {
                hw3.b(obj, j, z);
            } else {
                hw3.c(obj, j, z);
            }
        }

        @Override // ads_mobile_sdk.hw3.e
        public boolean b() {
            return super.b();
        }
    }

    private static long a(Field field) {
        e eVar;
        if (field == null || (eVar = e) == null) {
            return -1L;
        }
        return eVar.a(field);
    }

    private static byte d(Object obj, long j2) {
        return (byte) ((h(obj, (-4) & j2) >>> ((int) (((~j2) & 3) << 3))) & 255);
    }

    private static boolean d() {
        e eVar = e;
        if (eVar == null) {
            return false;
        }
        return eVar.a();
    }

    private static byte e(Object obj, long j2) {
        return (byte) ((h(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3))) & 255);
    }

    public static boolean d(Class<?> cls) {
        if (!gi.b()) {
            return false;
        }
        try {
            Class<?> cls2 = b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean e() {
        e eVar = e;
        if (eVar == null) {
            return false;
        }
        return eVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Object obj, long j2) {
        return d(obj, j2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(Object obj, long j2) {
        return e(obj, j2) != 0;
    }

    public static Unsafe c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            unsafe = null;
        }
        if (unsafe == null) {
            return null;
        }
        try {
            unsafe.arrayBaseOffset(byte[].class);
            return unsafe;
        } catch (Exception unused2) {
            Logger.getLogger(hw3.class.getName()).log(Level.WARNING, "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely.");
            return null;
        }
    }

    private static void a(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int iH = h(obj, j3);
        int i2 = ((~((int) j2)) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (iH & (~(255 << i2))));
    }

    public static <T> T a(Class<T> cls) {
        try {
            return (T) a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void a(Object obj, long j2, int i2) {
        e.a(obj, j2, i2);
    }

    public static void a(Object obj, long j2, long j3) {
        e.a(obj, j2, j3);
    }

    public static boolean a(Object obj, long j2) {
        return e.a(obj, j2);
    }

    public static void a(Object obj, long j2, boolean z) {
        e.a(obj, j2, z);
    }

    public static void a(Object obj, long j2, float f2) {
        e.a(obj, j2, f2);
    }

    public static void a(Object obj, long j2, double d2) {
        e.a(obj, j2, d2);
    }

    public static void a(Object obj, long j2, Object obj2) {
        e.a(obj, j2, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field a() {
        Field fieldA;
        if (gi.b() && (fieldA = a((Class<?>) Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldA;
        }
        Field fieldA2 = a((Class<?>) Buffer.class, "address");
        if (fieldA2 == null || fieldA2.getType() != Long.TYPE) {
            return null;
        }
        return fieldA2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Throwable th) {
        Logger.getLogger(hw3.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + String.valueOf(th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, long j2, boolean z) {
        a(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Object obj, long j2, boolean z) {
        b(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    private static int c(Class<?> cls) {
        if (g) {
            return e.b(cls);
        }
        return -1;
    }

    private static void b(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (h(obj, j3) & (~(255 << i2))));
    }

    private static int b(Class<?> cls) {
        if (g) {
            return e.a(cls);
        }
        return -1;
    }

    private static e b() {
        Unsafe unsafe = a;
        if (unsafe == null) {
            return null;
        }
        if (gi.b()) {
            if (c) {
                return new c(unsafe);
            }
            if (d) {
                return new b(unsafe);
            }
            return null;
        }
        return new d(unsafe);
    }
}
