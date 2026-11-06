package vm2.lib;

import com.ironsource.C3522b4;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import vm2.Globals;
import vm2.LuaString;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class IoLib extends TwoArgFunction {
    private static final int FILE_CLOSE = 11;
    private static final int FILE_FLUSH = 12;
    private static final int FILE_LINES = 13;
    private static final int FILE_READ = 14;
    private static final int FILE_SEEK = 15;
    private static final int FILE_SETVBUF = 16;
    private static final int FILE_WRITE = 17;
    protected static final int FTYPE_NAMED = 3;
    protected static final int FTYPE_STDERR = 2;
    protected static final int FTYPE_STDIN = 0;
    protected static final int FTYPE_STDOUT = 1;
    private static final int IO_CLOSE = 0;
    private static final int IO_FLUSH = 1;
    private static final int IO_INDEX = 18;
    private static final int IO_INPUT = 2;
    private static final int IO_LINES = 3;
    private static final int IO_OPEN = 4;
    private static final int IO_OUTPUT = 5;
    private static final int IO_POPEN = 6;
    private static final int IO_READ = 7;
    private static final int IO_TMPFILE = 8;
    private static final int IO_TYPE = 9;
    private static final int IO_WRITE = 10;
    private static final int LINES_ITER = 19;
    LuaTable filemethods;
    protected Globals globals;
    private static final LuaValue STDIN = LuaValue.valueOf("stdin");
    private static final LuaValue STDOUT = LuaValue.valueOf("stdout");
    private static final LuaValue STDERR = LuaValue.valueOf("stderr");
    private static final LuaValue FILE = LuaValue.valueOf(C3522b4.i.b);
    private static final LuaValue CLOSED_FILE = LuaValue.valueOf("closed file");
    public static final String[] IO_NAMES = {"close", "flush", "input", "lines", "open", "output", "popen", "read", "tmpfile", "type", "write"};
    public static final String[] FILE_NAMES = {"close", "flush", "lines", "read", "seek", "setvbuf", "write"};
    private File infile = null;
    private File outfile = null;
    private File errfile = null;

    public abstract File openFile(String str, boolean z, boolean z2, boolean z3, boolean z4) throws IOException;

    public abstract File openProgram(String str, String str2) throws IOException;

    public abstract File tmpFile() throws IOException;

    public abstract File wrapStderr() throws IOException;

    public abstract File wrapStdin() throws IOException;

    public abstract File wrapStdout() throws IOException;

    public abstract class File extends LuaValue {
        public abstract void close() throws IOException;

        public abstract void flush() throws IOException;

        public abstract boolean isclosed();

        public abstract boolean isstdfile();

        public abstract int peek() throws IOException;

        public abstract int read() throws IOException;

        public abstract int read(byte[] bArr, int i, int i2) throws IOException;

        public abstract int remaining() throws IOException;

        public abstract int seek(String str, int i) throws IOException;

        public abstract void setvbuf(String str, int i);

        @Override // vm2.LuaValue
        public int type() {
            return 6;
        }

        public abstract void write(LuaString luaString) throws IOException;

        public File() {
        }

        public boolean eof() throws IOException {
            try {
                return peek() < 0;
            } catch (EOFException unused) {
                return true;
            }
        }

        @Override // vm2.LuaValue
        public LuaValue get(LuaValue luaValue) {
            return IoLib.this.filemethods.get(luaValue);
        }

        @Override // vm2.LuaValue
        public String typename() {
            return "userdata";
        }

        @Override // vm2.LuaValue, vm2.Varargs
        public String tojstring() {
            return "file: " + Integer.toHexString(hashCode());
        }
    }

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.globals = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        bind(luaTable, IoLibV.class, IO_NAMES);
        LuaTable luaTable2 = new LuaTable();
        this.filemethods = luaTable2;
        bind(luaTable2, IoLibV.class, FILE_NAMES, 11);
        LuaTable luaTable3 = new LuaTable();
        bind(luaTable3, IoLibV.class, new String[]{"__index"}, 18);
        luaTable.setmetatable(luaTable3);
        setLibInstance(luaTable);
        setLibInstance(this.filemethods);
        setLibInstance(luaTable3);
        luaValue2.set("io", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set("io", luaTable);
        }
        return luaTable;
    }

    private void setLibInstance(LuaTable luaTable) {
        for (LuaValue luaValue : luaTable.keys()) {
            ((IoLibV) luaTable.get(luaValue)).iolib = this;
        }
    }

    public static final class IoLibV extends VarArgFunction {
        private Varargs args;
        private File f;
        public IoLib iolib;
        private boolean toclose;

        public IoLibV() {
        }

        public IoLibV(File file, String str, int i, IoLib ioLib, boolean z, Varargs varargs) {
            this(file, str, i, ioLib);
            this.toclose = z;
            this.args = varargs.dealias();
        }

        public IoLibV(File file, String str, int i, IoLib ioLib) {
            this.f = file;
            this.name = str;
            this.opcode = i;
            this.iolib = ioLib;
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            try {
                switch (this.opcode) {
                    case 0:
                        return this.iolib._io_close(varargs.arg1());
                    case 1:
                        return this.iolib._io_flush();
                    case 2:
                        return this.iolib._io_input(varargs.arg1());
                    case 3:
                        return this.iolib._io_lines(varargs);
                    case 4:
                        return this.iolib._io_open(varargs.checkjstring(1), varargs.optjstring(2, AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ));
                    case 5:
                        return this.iolib._io_output(varargs.arg1());
                    case 6:
                        return this.iolib._io_popen(varargs.checkjstring(1), varargs.optjstring(2, AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ));
                    case 7:
                        return this.iolib._io_read(varargs);
                    case 8:
                        return this.iolib._io_tmpfile();
                    case 9:
                        return this.iolib._io_type(varargs.arg1());
                    case 10:
                        return this.iolib._io_write(varargs);
                    case 11:
                        return this.iolib._file_close(varargs.arg1());
                    case 12:
                        return this.iolib._file_flush(varargs.arg1());
                    case 13:
                        return this.iolib._file_lines(varargs);
                    case 14:
                        return this.iolib._file_read(varargs.arg1(), varargs.subargs(2));
                    case 15:
                        return this.iolib._file_seek(varargs.arg1(), varargs.optjstring(2, "cur"), varargs.optint(3, 0));
                    case 16:
                        return this.iolib._file_setvbuf(varargs.arg1(), varargs.checkjstring(2), varargs.optint(3, 8192));
                    case 17:
                        return this.iolib._file_write(varargs.arg1(), varargs.subargs(2));
                    case 18:
                        return this.iolib._io_index(varargs.arg(2));
                    case 19:
                        return this.iolib._lines_iter(this.f, this.toclose, this.args);
                    default:
                        return LuaValue.NONE;
                }
            } catch (IOException e) {
                if (this.opcode == 19) {
                    String message = e.getMessage();
                    if (message == null) {
                        message = e.toString();
                    }
                    LuaValue.error(message);
                }
                return IoLib.errorresult(e);
            }
        }
    }

    private File input() {
        File file = this.infile;
        if (file != null) {
            return file;
        }
        File fileIoopenfile = ioopenfile(0, "-", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
        this.infile = fileIoopenfile;
        return fileIoopenfile;
    }

    public Varargs _io_flush() throws IOException {
        checkopen(output());
        this.outfile.flush();
        return LuaValue.TRUE;
    }

    public Varargs _io_tmpfile() throws IOException {
        return tmpFile();
    }

    public Varargs _io_close(LuaValue luaValue) throws IOException {
        File fileOutput = luaValue.isnil() ? output() : checkfile(luaValue);
        checkopen(fileOutput);
        return ioclose(fileOutput);
    }

    public Varargs _io_input(LuaValue luaValue) {
        File fileIoopenfile;
        if (luaValue.isnil()) {
            fileIoopenfile = input();
        } else {
            fileIoopenfile = luaValue.isstring() ? ioopenfile(3, luaValue.checkjstring(), AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ) : checkfile(luaValue);
        }
        this.infile = fileIoopenfile;
        return fileIoopenfile;
    }

    public Varargs _io_output(LuaValue luaValue) {
        File fileIoopenfile;
        if (luaValue.isnil()) {
            fileIoopenfile = output();
        } else {
            fileIoopenfile = luaValue.isstring() ? ioopenfile(3, luaValue.checkjstring(), "w") : checkfile(luaValue);
        }
        this.outfile = fileIoopenfile;
        return fileIoopenfile;
    }

    public Varargs _io_type(LuaValue luaValue) {
        File fileOptfile = optfile(luaValue);
        if (fileOptfile != null) {
            return fileOptfile.isclosed() ? CLOSED_FILE : FILE;
        }
        return LuaValue.NIL;
    }

    public Varargs _io_popen(String str, String str2) throws IOException {
        if (!AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ.equals(str2) && !"w".equals(str2)) {
            LuaValue.argerror(2, "invalid value: '" + str2 + "'; must be one of 'r' or 'w'");
        }
        return openProgram(str, str2);
    }

    public Varargs _io_open(String str, String str2) throws IOException {
        return rawopenfile(3, str, str2);
    }

    public Varargs _io_lines(Varargs varargs) {
        String strOptjstring = varargs.optjstring(1, null);
        File fileInput = strOptjstring == null ? input() : ioopenfile(3, strOptjstring, AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
        checkopen(fileInput);
        return lines(fileInput, strOptjstring != null, varargs.subargs(2));
    }

    public Varargs _io_read(Varargs varargs) throws IOException {
        checkopen(input());
        return ioread(this.infile, varargs);
    }

    public Varargs _io_write(Varargs varargs) throws IOException {
        checkopen(output());
        return iowrite(this.outfile, varargs);
    }

    public Varargs _file_close(LuaValue luaValue) throws IOException {
        return ioclose(checkfile(luaValue));
    }

    public Varargs _file_flush(LuaValue luaValue) throws IOException {
        checkfile(luaValue).flush();
        return LuaValue.TRUE;
    }

    public Varargs _file_setvbuf(LuaValue luaValue, String str, int i) {
        if (!"no".equals(str) && !"full".equals(str) && !"line".equals(str)) {
            LuaValue.argerror(1, "invalid value: '" + str + "'; must be one of 'no', 'full' or 'line'");
        }
        checkfile(luaValue).setvbuf(str, i);
        return LuaValue.TRUE;
    }

    public Varargs _file_lines(Varargs varargs) {
        return lines(checkfile(varargs.arg1()), false, varargs.subargs(2));
    }

    public Varargs _file_read(LuaValue luaValue, Varargs varargs) throws IOException {
        return ioread(checkfile(luaValue), varargs);
    }

    public Varargs _file_seek(LuaValue luaValue, String str, int i) throws IOException {
        if (!"set".equals(str) && !"end".equals(str) && !"cur".equals(str)) {
            LuaValue.argerror(1, "invalid value: '" + str + "'; must be one of 'set', 'cur' or 'end'");
        }
        return LuaValue.valueOf(checkfile(luaValue).seek(str, i));
    }

    public Varargs _file_write(LuaValue luaValue, Varargs varargs) throws IOException {
        return iowrite(checkfile(luaValue), varargs);
    }

    public Varargs _io_index(LuaValue luaValue) {
        return luaValue.equals(STDOUT) ? output() : luaValue.equals(STDIN) ? input() : luaValue.equals(STDERR) ? errput() : LuaValue.NIL;
    }

    public Varargs _lines_iter(LuaValue luaValue, boolean z, Varargs varargs) throws IOException {
        File fileOptfile = optfile(luaValue);
        if (fileOptfile == null) {
            LuaValue.argerror(1, "not a file: " + luaValue);
        }
        if (fileOptfile.isclosed()) {
            LuaValue.error("file is already closed");
        }
        Varargs varargsIoread = ioread(fileOptfile, varargs);
        if (z && varargsIoread.isnil(1) && fileOptfile.eof()) {
            fileOptfile.close();
        }
        return varargsIoread;
    }

    private File output() {
        File file = this.outfile;
        if (file != null) {
            return file;
        }
        File fileIoopenfile = ioopenfile(1, "-", "w");
        this.outfile = fileIoopenfile;
        return fileIoopenfile;
    }

    private File errput() {
        File file = this.errfile;
        if (file != null) {
            return file;
        }
        File fileIoopenfile = ioopenfile(2, "-", "w");
        this.errfile = fileIoopenfile;
        return fileIoopenfile;
    }

    private File ioopenfile(int i, String str, String str2) {
        try {
            return rawopenfile(i, str, str2);
        } catch (Exception e) {
            LuaValue.error("io error: " + e.getMessage());
            return null;
        }
    }

    private static Varargs ioclose(File file) throws IOException {
        if (file.isstdfile()) {
            return errorresult("cannot close standard file");
        }
        file.close();
        return successresult();
    }

    private static Varargs successresult() {
        return LuaValue.TRUE;
    }

    public static Varargs errorresult(Exception exc) {
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder();
        sb.append("io error: ");
        if (message == null) {
            message = exc.toString();
        }
        sb.append(message);
        return errorresult(sb.toString());
    }

    private static Varargs errorresult(String str) {
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(str));
    }

    private Varargs lines(File file, boolean z, Varargs varargs) {
        try {
            return new IoLibV(file, "lnext", 19, this, z, varargs);
        } catch (Exception e) {
            return LuaValue.error("lines: " + e);
        }
    }

    private static Varargs iowrite(File file, Varargs varargs) throws IOException {
        int iNarg = varargs.narg();
        for (int i = 1; i <= iNarg; i++) {
            file.write(varargs.checkstring(i));
        }
        return file;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
    
        return vm2.LuaValue.argerror(r4, "(invalid format)");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private vm2.Varargs ioread(vm2.lib.IoLib.File r10, vm2.Varargs r11) throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r11.narg()
            r1 = 0
            if (r0 != 0) goto Lc
            vm2.LuaValue r10 = freadline(r10, r1)
            return r10
        Lc:
            vm2.LuaValue[] r2 = new vm2.LuaValue[r0]
            r3 = r1
        Lf:
            if (r3 >= r0) goto L7a
            int r4 = r3 + 1
            vm2.LuaValue r5 = r11.arg(r4)
            int r6 = r5.type()
            r7 = 4
            if (r6 == r7) goto L66
            r7 = 5
            if (r6 == r7) goto L22
            goto L5f
        L22:
            vm2.LuaString r5 = r5.checkstring()
            int r6 = r5.m_length
            r7 = 2
            if (r6 < r7) goto L5f
            byte[] r6 = r5.m_bytes
            int r5 = r5.m_offset
            r7 = r6[r5]
            r8 = 42
            if (r7 != r8) goto L5f
            int r5 = r5 + 1
            r5 = r6[r5]
            r6 = 76
            if (r5 == r6) goto L59
            r6 = 97
            if (r5 == r6) goto L54
            r6 = 108(0x6c, float:1.51E-43)
            if (r5 == r6) goto L4f
            r6 = 110(0x6e, float:1.54E-43)
            if (r5 == r6) goto L4a
            goto L5f
        L4a:
            vm2.LuaValue r5 = freadnumber(r10)
            goto L6e
        L4f:
            vm2.LuaValue r5 = freadline(r10, r1)
            goto L6e
        L54:
            vm2.LuaValue r5 = freadall(r10)
            goto L6e
        L59:
            r5 = 1
            vm2.LuaValue r5 = freadline(r10, r5)
            goto L6e
        L5f:
            java.lang.String r10 = "(invalid format)"
            vm2.LuaValue r10 = vm2.LuaValue.argerror(r4, r10)
            return r10
        L66:
            int r5 = r5.toint()
            vm2.LuaValue r5 = freadbytes(r10, r5)
        L6e:
            r2[r3] = r5
            boolean r3 = r5.isnil()
            if (r3 == 0) goto L78
            r3 = r4
            goto L7a
        L78:
            r3 = r4
            goto Lf
        L7a:
            if (r3 != 0) goto L7f
            vm2.LuaValue r10 = vm2.LuaValue.NIL
            return r10
        L7f:
            vm2.Varargs r10 = vm2.LuaValue.varargsOf(r2, r1, r3)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.lib.IoLib.ioread(vm2.lib.IoLib$File, vm2.Varargs):vm2.Varargs");
    }

    private static File checkfile(LuaValue luaValue) {
        File fileOptfile = optfile(luaValue);
        if (fileOptfile == null) {
            LuaValue.argerror(1, C3522b4.i.b);
        }
        checkopen(fileOptfile);
        return fileOptfile;
    }

    private static File optfile(LuaValue luaValue) {
        if (luaValue instanceof File) {
            return (File) luaValue;
        }
        return null;
    }

    private static File checkopen(File file) {
        if (file.isclosed()) {
            LuaValue.error("attempt to use a closed file");
        }
        return file;
    }

    private File rawopenfile(int i, String str, String str2) throws IOException {
        int length = str2.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str2.charAt(i2);
            if ((i2 != 0 || "rwa".indexOf(cCharAt) < 0) && (!(i2 == 1 && cCharAt == '+') && (i2 < 1 || cCharAt != 'b'))) {
                length = -1;
                break;
            }
        }
        if (length <= 0) {
            LuaValue.argerror(2, "invalid mode: '" + str2 + "'");
        }
        if (i == 0) {
            return wrapStdin();
        }
        if (i == 1) {
            return wrapStdout();
        }
        if (i == 2) {
            return wrapStderr();
        }
        return openFile(str, str2.startsWith(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ), str2.startsWith("a"), str2.indexOf(43) > 0, str2.endsWith("b"));
    }

    public static LuaValue freadbytes(File file, int i) throws IOException {
        if (i == 0) {
            return file.eof() ? LuaValue.NIL : LuaValue.EMPTYSTRING;
        }
        byte[] bArr = new byte[i];
        int i2 = file.read(bArr, 0, i);
        if (i2 < 0) {
            return LuaValue.NIL;
        }
        return LuaString.valueUsing(bArr, 0, i2);
    }

    public static LuaValue freaduntil(File file, boolean z, boolean z2) throws IOException {
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            if (!z) {
                while (true) {
                    i = file.read();
                    if (i < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(i);
                }
            } else {
                while (true) {
                    i = file.read();
                    if (i < 0) {
                        break;
                    }
                    if (i != 10) {
                        if (i != 13) {
                            byteArrayOutputStream.write(i);
                        } else if (z2) {
                            byteArrayOutputStream.write(i);
                        }
                    } else if (z2) {
                        byteArrayOutputStream.write(i);
                    }
                }
            }
        } catch (EOFException unused) {
            i = -1;
        }
        if (i < 0 && byteArrayOutputStream.size() == 0) {
            return LuaValue.NIL;
        }
        return LuaString.valueUsing(byteArrayOutputStream.toByteArray());
    }

    public static LuaValue freadline(File file, boolean z) throws IOException {
        return freaduntil(file, true, z);
    }

    public static LuaValue freadall(File file) throws IOException {
        int iRemaining = file.remaining();
        if (iRemaining >= 0) {
            return iRemaining == 0 ? LuaValue.EMPTYSTRING : freadbytes(file, iRemaining);
        }
        return freaduntil(file, false, false);
    }

    public static LuaValue freadnumber(File file) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        freadchars(file, " \t\r\n", null);
        freadchars(file, "-+", byteArrayOutputStream);
        freadchars(file, "0123456789", byteArrayOutputStream);
        freadchars(file, ".", byteArrayOutputStream);
        freadchars(file, "0123456789", byteArrayOutputStream);
        String string = byteArrayOutputStream.toString();
        return string.length() > 0 ? LuaValue.valueOf(Double.parseDouble(string)) : LuaValue.NIL;
    }

    private static void freadchars(File file, String str, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        while (true) {
            int iPeek = file.peek();
            if (str.indexOf(iPeek) < 0) {
                return;
            }
            file.read();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.write(iPeek);
            }
        }
    }
}
