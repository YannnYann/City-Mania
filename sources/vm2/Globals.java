package vm2;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.Reader;
import vm2.lib.BaseLib;
import vm2.lib.DebugLib;
import vm2.lib.PackageLib;
import vm2.lib.ResourceFinder;

/* JADX INFO: loaded from: classes6.dex */
public class Globals extends LuaTable {
    public BaseLib baselib;
    public Compiler compiler;
    public DebugLib debuglib;
    public ResourceFinder finder;
    public Loader loader;
    public PackageLib package_;
    public Undumper undumper;
    public InputStream STDIN = null;
    public PrintStream STDOUT = System.out;
    public PrintStream STDERR = System.err;
    public LuaThread running = new LuaThread(this);

    public interface Compiler {
        Prototype compile(InputStream inputStream, String str) throws IOException;
    }

    public interface Loader {
        LuaFunction load(Prototype prototype, String str, LuaValue luaValue) throws IOException;
    }

    public interface Undumper {
        Prototype undump(InputStream inputStream, String str) throws IOException;
    }

    @Override // vm2.LuaValue
    public Globals checkglobals() {
        return this;
    }

    public LuaValue loadfile(String str) {
        try {
            return load(this.finder.findResource(str), "@" + str, "bt", this);
        } catch (Exception e) {
            return LuaValue.error("load " + str + ": " + e);
        }
    }

    public LuaValue load(String str, String str2) {
        return load(new StrReader(str), str2);
    }

    public LuaValue load(String str) {
        return load(new StrReader(str), str);
    }

    public LuaValue load(String str, String str2, LuaTable luaTable) {
        return load(new StrReader(str), str2, luaTable);
    }

    public LuaValue load(Reader reader, String str) {
        return load(new UTF8Stream(reader), str, "t", this);
    }

    public LuaValue load(Reader reader, String str, LuaTable luaTable) {
        return load(new UTF8Stream(reader), str, "t", luaTable);
    }

    public LuaValue load(InputStream inputStream, String str, String str2, LuaValue luaValue) {
        try {
            return this.loader.load(loadPrototype(inputStream, str, str2), str, luaValue);
        } catch (LuaError e) {
            throw e;
        } catch (Exception e2) {
            return LuaValue.error("load " + str + ": " + e2);
        }
    }

    public Prototype loadPrototype(InputStream inputStream, String str, String str2) throws IOException {
        if (str2.indexOf(98) >= 0) {
            if (this.undumper == null) {
                LuaValue.error("No undumper.");
            }
            if (!inputStream.markSupported()) {
                inputStream = new BufferedStream(inputStream);
            }
            inputStream.mark(4);
            Prototype prototypeUndump = this.undumper.undump(inputStream, str);
            if (prototypeUndump != null) {
                return prototypeUndump;
            }
            inputStream.reset();
        }
        if (str2.indexOf(Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE) >= 0) {
            return compilePrototype(inputStream, str);
        }
        LuaValue.error("Failed to load prototype " + str + " using mode '" + str2 + "'");
        return null;
    }

    public Prototype compilePrototype(Reader reader, String str) throws IOException {
        return compilePrototype(new UTF8Stream(reader), str);
    }

    public Prototype compilePrototype(InputStream inputStream, String str) throws IOException {
        if (this.compiler == null) {
            LuaValue.error("No compiler.");
        }
        return this.compiler.compile(inputStream, str);
    }

    public Varargs yield(Varargs varargs) {
        LuaThread luaThread = this.running;
        if (luaThread == null || luaThread.isMainThread()) {
            throw new LuaError("cannot yield main thread");
        }
        return this.running.state.lua_yield(varargs);
    }

    public static class StrReader extends Reader {
        int i = 0;
        final int n;
        final String s;

        public StrReader(String str) {
            this.s = str;
            this.n = str.length();
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.i = this.n;
        }

        @Override // java.io.Reader
        public int read() throws IOException {
            int i = this.i;
            if (i >= this.n) {
                return -1;
            }
            String str = this.s;
            this.i = i + 1;
            return str.charAt(i);
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            int i3 = 0;
            while (i3 < i2) {
                int i4 = this.i;
                if (i4 >= this.n) {
                    break;
                }
                cArr[i + i3] = this.s.charAt(i4);
                i3++;
                this.i++;
            }
            if (i3 > 0 || i2 == 0) {
                return i3;
            }
            return -1;
        }
    }

    public static abstract class AbstractBufferedStream extends InputStream {
        protected byte[] b;
        protected int i = 0;
        protected int j = 0;

        public abstract int avail() throws IOException;

        public AbstractBufferedStream(int i) {
            this.b = new byte[i];
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (avail() <= 0) {
                return -1;
            }
            byte[] bArr = this.b;
            int i = this.i;
            this.i = i + 1;
            return bArr[i] & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            return read(bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int iAvail = avail();
            if (iAvail <= 0) {
                return -1;
            }
            int iMin = Math.min(iAvail, i2);
            System.arraycopy(this.b, this.i, bArr, i, iMin);
            this.i += iMin;
            return iMin;
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            long jMin = Math.min(j, this.j - this.i);
            this.i = (int) (((long) this.i) + jMin);
            return jMin;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.j - this.i;
        }
    }

    public static class UTF8Stream extends AbstractBufferedStream {
        private final char[] c;
        private final Reader r;

        public UTF8Stream(Reader reader) {
            super(96);
            this.c = new char[32];
            this.r = reader;
        }

        @Override // vm2.Globals.AbstractBufferedStream
        public int avail() throws IOException {
            int i = this.i;
            int i2 = this.j;
            if (i < i2) {
                return i2 - i;
            }
            int i3 = this.r.read(this.c);
            if (i3 < 0) {
                return -1;
            }
            if (i3 == 0) {
                int i4 = this.r.read();
                if (i4 < 0) {
                    return -1;
                }
                this.c[0] = (char) i4;
                i3 = 1;
            }
            char[] cArr = this.c;
            byte[] bArr = this.b;
            this.i = 0;
            int iEncodeToUtf8 = LuaString.encodeToUtf8(cArr, i3, bArr, 0);
            this.j = iEncodeToUtf8;
            return iEncodeToUtf8;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.r.close();
        }
    }

    public static class BufferedStream extends AbstractBufferedStream {
        private final InputStream s;

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        public BufferedStream(InputStream inputStream) {
            this(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, inputStream);
        }

        public BufferedStream(int i, InputStream inputStream) {
            super(i);
            this.s = inputStream;
        }

        @Override // vm2.Globals.AbstractBufferedStream
        public int avail() throws IOException {
            int i = this.i;
            int i2 = this.j;
            if (i < i2) {
                return i2 - i;
            }
            byte[] bArr = this.b;
            if (i2 >= bArr.length) {
                this.j = 0;
                this.i = 0;
            }
            InputStream inputStream = this.s;
            int i3 = this.j;
            int i4 = inputStream.read(bArr, i3, bArr.length - i3);
            if (i4 < 0) {
                return -1;
            }
            if (i4 == 0) {
                int i5 = this.s.read();
                if (i5 < 0) {
                    return -1;
                }
                this.b[this.j] = (byte) i5;
                i4 = 1;
            }
            this.j += i4;
            return i4;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.s.close();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            try {
                int i2 = this.i;
                if (i2 > 0 || i > this.b.length) {
                    byte[] bArr = this.b;
                    byte[] bArr2 = i > bArr.length ? new byte[i] : bArr;
                    System.arraycopy(bArr, i2, bArr2, 0, this.j - i2);
                    this.j -= this.i;
                    this.i = 0;
                    this.b = bArr2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            this.i = 0;
        }
    }
}
