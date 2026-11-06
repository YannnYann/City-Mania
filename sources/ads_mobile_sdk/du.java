package ads_mobile_sdk;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class du implements Iterable<Byte>, Serializable {
    public static final du b = new k(yh1.a);
    private static i c = i.DEFAULT;
    private static final f d;
    private static final Comparator<du> e;
    private int a = 0;

    public class b implements Comparator<du> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(du duVar, du duVar2) {
            if (!gi.b() && (duVar instanceof k)) {
                k kVar = (k) duVar;
                if (duVar2 instanceof k) {
                    return Arrays.compareUnsigned(kVar.f, ((k) duVar2).f);
                }
            }
            g gVarF = duVar.iterator();
            g gVarF2 = duVar2.iterator();
            while (gVarF.hasNext() && gVarF2.hasNext()) {
                int iCompare = Integer.compare(du.a(gVarF.a()), du.a(gVarF2.a()));
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return Integer.compare(duVar.size(), duVar2.size());
        }
    }

    public interface f {
        byte[] a(byte[] bArr, int i, int i2);
    }

    public interface g extends Iterator<Byte> {
        byte a();
    }

    public enum i {
        DEFAULT,
        DUAL_STATE_BYTE_STRING,
        DEFERRED_DECODING_AND_CACHE,
        DEFERRED_DECODING_AND_NO_CACHE
    }

    static {
        d = gi.b() ? new l() : new d();
        e = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(byte b2) {
        return b2 & 255;
    }

    public static h e(int i2) {
        return new h(i2);
    }

    public abstract du a(int i2, int i3);

    public abstract void a(cu cuVar) throws IOException;

    public abstract int b(int i2, int i3, int i4);

    public abstract du b(int i2, int i3);

    public abstract String b(Charset charset);

    public abstract void b(byte[] bArr, int i2, int i3, int i4);

    public abstract boolean b(du duVar);

    public abstract ByteBuffer c();

    public abstract byte d(int i2);

    public abstract int d();

    public abstract boolean e();

    public abstract my g();

    public abstract int size();

    public static final class l implements f {
        public l() {
        }

        @Override // ads_mobile_sdk.du.f
        public byte[] a(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    public static final class d implements f {
        public d() {
        }

        @Override // ads_mobile_sdk.du.f
        public byte[] a(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    public class a extends c {
        private int a = 0;
        private final int b;

        public a() {
            this.b = du.this.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a < this.b;
        }

        @Override // ads_mobile_sdk.du.g
        public byte a() {
            int i = this.a;
            if (i < this.b) {
                this.a = i + 1;
                return du.this.d(i);
            }
            throw new NoSuchElementException();
        }
    }

    public static abstract class c implements g {
        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Byte next() {
            return Byte.valueOf(a());
        }
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public final du f(int i2) {
        return a(i2, size());
    }

    /* JADX INFO: renamed from: f */
    public g iterator() {
        return new a();
    }

    public static du b(byte[] bArr) {
        try {
            return a(bArr, false);
        } catch (np1 e2) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e2);
        }
    }

    private static du a(Iterator<du> it, int i2) {
        if (i2 >= 1) {
            if (i2 == 1) {
                return it.next();
            }
            int i3 = i2 >>> 1;
            return a(it, i3).a(a(it, i2 - i3));
        }
        Locale locale = Locale.ROOT;
        throw new IllegalArgumentException("length (" + i2 + ") must be >= 1");
    }

    public final byte[] i() {
        int size = size();
        if (size == 0) {
            return yh1.a;
        }
        byte[] bArr = new byte[size];
        b(bArr, 0, 0, size);
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof du)) {
            return false;
        }
        du duVar = (du) obj;
        int size = size();
        if (size != duVar.size()) {
            return false;
        }
        if (size == 0) {
            return true;
        }
        int iH = h();
        int iH2 = duVar.h();
        if (iH == 0 || iH2 == 0 || iH == iH2) {
            return b(duVar);
        }
        return false;
    }

    public static abstract class j extends du {
        public abstract boolean a(du duVar, int i, int i2);

        @Override // ads_mobile_sdk.du
        public final int d() {
            return 0;
        }

        @Override // ads_mobile_sdk.du
        public final boolean e() {
            return true;
        }

        @Override // java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator();
        }

        private j() {
        }
    }

    public final int hashCode() {
        int iB = this.a;
        if (iB == 0) {
            int size = size();
            iB = b(size, 0, size);
            if (iB == 0) {
                iB = 1;
            }
            this.a = iB;
        }
        return iB;
    }

    public static du b(byte[] bArr, int i2, int i3, boolean z) throws np1 {
        if (z && !hx3.b(bArr, i2, i2 + i3)) {
            throw np1.d();
        }
        return new e(bArr, i2, i3);
    }

    public static final class h {
        private final oy a;
        private final byte[] b;

        private h(int i) {
            byte[] bArr = new byte[i];
            this.b = bArr;
            this.a = oy.b(bArr);
        }

        public du a() {
            this.a.a();
            return new k(this.b);
        }

        public oy b() {
            return this.a;
        }
    }

    public final int h() {
        return this.a;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        return "<ByteString@" + Integer.toHexString(System.identityHashCode(this)) + " size=" + size() + " contents=\"" + j() + "\">";
    }

    private String j() {
        if (size() <= 50) {
            return co3.a(this);
        }
        return co3.a(b(0, 47)) + "...";
    }

    public static final class k extends j {
        private final byte[] f;

        public k(byte[] bArr) {
            super();
            bArr.getClass();
            this.f = bArr;
        }

        @Override // ads_mobile_sdk.du
        public byte d(int i) {
            return this.f[i];
        }

        @Override // ads_mobile_sdk.du
        public int size() {
            return this.f.length;
        }

        @Override // ads_mobile_sdk.du
        public void b(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.f, i, bArr, i2, i3);
        }

        @Override // ads_mobile_sdk.du
        public ByteBuffer c() {
            return ByteBuffer.wrap(this.f).asReadOnlyBuffer();
        }

        @Override // ads_mobile_sdk.du.j
        public boolean a(du duVar, int i, int i2) {
            if (i2 <= duVar.size()) {
                int i3 = i + i2;
                if (i3 <= duVar.size()) {
                    if (duVar instanceof k) {
                        return du.a(this.f, 0, ((k) duVar).f, i, i2);
                    }
                    if (duVar instanceof e) {
                        e eVar = (e) duVar;
                        return du.a(this.f, 0, eVar.f, eVar.g + i, i2);
                    }
                    return duVar.b(i, i3).equals(b(0, i2));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + duVar.size());
            }
            throw new IllegalArgumentException("Length too large: " + i2 + size());
        }

        @Override // ads_mobile_sdk.du
        public my g() {
            return my.a(this.f, 0, size(), true);
        }

        @Override // ads_mobile_sdk.du
        public final boolean b(du duVar) {
            if (duVar instanceof k) {
                return Arrays.equals(this.f, ((k) duVar).f);
            }
            if (duVar instanceof e) {
                return a(duVar, 0, size());
            }
            return duVar.b(this);
        }

        @Override // ads_mobile_sdk.du
        public du a(int i, int i2) {
            int iA = du.a(i, i2, size());
            if (iA == 0) {
                return du.b;
            }
            return new e(this.f, i, iA);
        }

        @Override // ads_mobile_sdk.du
        public void a(cu cuVar) throws IOException {
            cuVar.a(this.f, 0, size());
        }

        @Override // ads_mobile_sdk.du
        public int b(int i, int i2, int i3) {
            return yh1.a(i, this.f, i2, i3);
        }

        @Override // ads_mobile_sdk.du
        public du b(int i, int i2) {
            int iA = du.a(i, i2, size());
            if (iA == 0) {
                return du.b;
            }
            return new e(this.f, i, iA);
        }

        @Override // ads_mobile_sdk.du
        public String b(Charset charset) {
            return new String(this.f, charset);
        }
    }

    public static final class e extends j {
        private final byte[] f;
        private final int g;
        private final int h;

        public e(byte[] bArr, int i, int i2) {
            super();
            du.a(i, i + i2, bArr.length);
            this.f = bArr;
            this.g = i;
            this.h = i2;
        }

        @Override // ads_mobile_sdk.du
        public byte d(int i) {
            return this.f[this.g + i];
        }

        @Override // ads_mobile_sdk.du
        public int size() {
            return this.h;
        }

        @Override // ads_mobile_sdk.du
        public void b(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.f, this.g + i, bArr, i2, i3);
        }

        @Override // ads_mobile_sdk.du
        public ByteBuffer c() {
            return ByteBuffer.wrap(this.f, this.g, this.h).slice().asReadOnlyBuffer();
        }

        @Override // ads_mobile_sdk.du.j
        public boolean a(du duVar, int i, int i2) {
            if (i2 <= duVar.size()) {
                int i3 = i + i2;
                if (i3 <= duVar.size()) {
                    if (duVar instanceof k) {
                        return du.a(this.f, this.g, ((k) duVar).f, i, i2);
                    }
                    if (duVar instanceof e) {
                        e eVar = (e) duVar;
                        return du.a(this.f, this.g, eVar.f, eVar.g + i, i2);
                    }
                    du duVarB = duVar.b(i, i3);
                    int i4 = this.g;
                    return duVarB.equals(b(i4, i2 + i4));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + duVar.size());
            }
            throw new IllegalArgumentException("Length too large: " + i2 + size());
        }

        @Override // ads_mobile_sdk.du
        public my g() {
            return my.a(this.f, this.g, this.h, true);
        }

        @Override // ads_mobile_sdk.du
        public boolean b(du duVar) {
            if (!(duVar instanceof k) && !(duVar instanceof e)) {
                return duVar.b(this);
            }
            return a(duVar, 0, size());
        }

        @Override // ads_mobile_sdk.du
        public du a(int i, int i2) {
            int iA = du.a(i, i2, this.h);
            if (iA == 0) {
                return du.b;
            }
            return new e(this.f, this.g + i, iA);
        }

        @Override // ads_mobile_sdk.du
        public void a(cu cuVar) throws IOException {
            cuVar.a(this.f, this.g, this.h);
        }

        @Override // ads_mobile_sdk.du
        public int b(int i, int i2, int i3) {
            return yh1.a(i, this.f, this.g + i2, i3);
        }

        @Override // ads_mobile_sdk.du
        public du b(int i, int i2) {
            int iA = du.a(i, i2, this.h);
            if (iA == 0) {
                return du.b;
            }
            return new e(this.f, this.g + i, iA);
        }

        @Override // ads_mobile_sdk.du
        public String b(Charset charset) {
            return new String(this.f, this.g, this.h, charset);
        }
    }

    public static int a(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i2 + " < 0");
        }
        if (i3 < i2) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i2 + ", " + i3);
        }
        throw new IndexOutOfBoundsException("End index: " + i3 + " >= " + i4);
    }

    public final du a(du duVar) {
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - size() >= duVar.size()) {
            return i83.a(this, duVar);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + duVar.size());
    }

    public static du a(Iterable<du> iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            Iterator<du> it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        } else {
            size = ((Collection) iterable).size();
        }
        if (size == 0) {
            return b;
        }
        return a(iterable.iterator(), size);
    }

    public static du a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static du a(byte[] bArr, int i2, int i3) {
        try {
            return a(bArr, i2, i3, false);
        } catch (np1 e2) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e2);
        }
    }

    public static du a(byte[] bArr, int i2, int i3, boolean z) throws np1 {
        if (i3 == 0) {
            return b;
        }
        a(i2, i2 + i3, bArr.length);
        byte[] bArrA = d.a(bArr, i2, i3);
        if (z && !hx3.a(bArrA)) {
            throw np1.d();
        }
        return new k(bArrA);
    }

    public static du a(String str) {
        return str.isEmpty() ? b : new k(str.getBytes(StandardCharsets.UTF_8));
    }

    @Deprecated
    public final void a(byte[] bArr, int i2, int i3, int i4) {
        a(i2, i2 + i4, size());
        a(i3, i3 + i4, bArr.length);
        if (i4 > 0) {
            b(bArr, i2, i3, i4);
        }
    }

    private static du a(InputStream inputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i3, i2 - i3);
            if (i4 == -1) {
                break;
            }
            i3 += i4;
        }
        if (i3 == 0) {
            return null;
        }
        return a(bArr, 0, i3);
    }

    public static du a(InputStream inputStream) throws IOException {
        return a(inputStream, 256, 8192);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        int i5 = i2 + i4;
        a(i2, i5, bArr.length);
        a(i3, i4 + i3, bArr2.length);
        while (i2 < i5) {
            if (bArr[i2] != bArr2[i3]) {
                return false;
            }
            i2++;
            i3++;
        }
        return true;
    }

    public final String a(Charset charset) {
        return isEmpty() ? "" : b(charset);
    }

    public static du a(byte[] bArr, boolean z) throws np1 {
        if (bArr.length == 0) {
            return b;
        }
        if (z && !hx3.a(bArr)) {
            throw np1.d();
        }
        return new k(bArr);
    }

    public static du a(InputStream inputStream, int i2, int i3) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            du duVarA = a(inputStream, i2);
            if (duVarA == null) {
                return a(arrayList);
            }
            arrayList.add(duVarA);
            i2 = Math.min(i2 * 2, i3);
        }
    }
}
