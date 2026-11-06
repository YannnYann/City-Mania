package vm2.lib.jse;

import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import vm2.LuaError;
import vm2.LuaString;
import vm2.lib.IoLib;
import vm2.lib.OsLib;

/* JADX INFO: loaded from: classes6.dex */
public class JseIoLib extends IoLib {
    @Override // vm2.lib.IoLib
    public IoLib.File wrapStdin() throws IOException {
        return new StdinFile();
    }

    @Override // vm2.lib.IoLib
    public IoLib.File wrapStdout() throws IOException {
        return new StdoutFile(1);
    }

    @Override // vm2.lib.IoLib
    public IoLib.File wrapStderr() throws IOException {
        return new StdoutFile(2);
    }

    @Override // vm2.lib.IoLib
    public IoLib.File openFile(String str, boolean z, boolean z2, boolean z3, boolean z4) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, z ? AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ : "rw");
        if (z2) {
            randomAccessFile.seek(randomAccessFile.length());
        } else if (!z) {
            randomAccessFile.setLength(0L);
        }
        return new FileImpl(randomAccessFile);
    }

    @Override // vm2.lib.IoLib
    public IoLib.File openProgram(String str, String str2) throws IOException {
        Process processExec = Runtime.getRuntime().exec(str);
        if ("w".equals(str2)) {
            return new FileImpl(processExec.getOutputStream());
        }
        return new FileImpl(processExec.getInputStream());
    }

    @Override // vm2.lib.IoLib
    public IoLib.File tmpFile() throws IOException {
        File fileCreateTempFile = File.createTempFile(OsLib.TMP_PREFIX, "bin");
        fileCreateTempFile.deleteOnExit();
        return new FileImpl(new RandomAccessFile(fileCreateTempFile, "rw"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notimplemented() {
        throw new LuaError("not implemented");
    }

    public final class FileImpl extends IoLib.File {
        private boolean closed;
        private final RandomAccessFile file;
        private final InputStream is;
        private boolean nobuffer;
        private final OutputStream os;

        private FileImpl(RandomAccessFile randomAccessFile, InputStream inputStream, OutputStream outputStream) {
            super();
            this.closed = false;
            this.nobuffer = false;
            this.file = randomAccessFile;
            if (inputStream == null) {
                inputStream = null;
            } else if (!inputStream.markSupported()) {
                inputStream = new BufferedInputStream(inputStream);
            }
            this.is = inputStream;
            this.os = outputStream;
        }

        private FileImpl(JseIoLib jseIoLib, RandomAccessFile randomAccessFile) {
            this(randomAccessFile, null, null);
        }

        private FileImpl(JseIoLib jseIoLib, InputStream inputStream) {
            this(null, inputStream, null);
        }

        private FileImpl(JseIoLib jseIoLib, OutputStream outputStream) {
            this(null, null, outputStream);
        }

        @Override // vm2.lib.IoLib.File, vm2.LuaValue, vm2.Varargs
        public String tojstring() {
            StringBuilder sb = new StringBuilder();
            sb.append("file (");
            sb.append(this.closed ? "closed" : String.valueOf(hashCode()));
            sb.append(")");
            return sb.toString();
        }

        @Override // vm2.lib.IoLib.File
        public boolean isstdfile() {
            return this.file == null;
        }

        @Override // vm2.lib.IoLib.File
        public void close() throws IOException {
            this.closed = true;
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        }

        @Override // vm2.lib.IoLib.File
        public void flush() throws IOException {
            OutputStream outputStream = this.os;
            if (outputStream != null) {
                outputStream.flush();
            }
        }

        @Override // vm2.lib.IoLib.File
        public void write(LuaString luaString) throws IOException {
            OutputStream outputStream = this.os;
            if (outputStream != null) {
                outputStream.write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
            } else {
                RandomAccessFile randomAccessFile = this.file;
                if (randomAccessFile == null) {
                    JseIoLib.notimplemented();
                } else {
                    randomAccessFile.write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
                }
            }
            if (this.nobuffer) {
                flush();
            }
        }

        @Override // vm2.lib.IoLib.File
        public boolean isclosed() {
            return this.closed;
        }

        @Override // vm2.lib.IoLib.File
        public int seek(String str, int i) throws IOException {
            if (this.file == null) {
                JseIoLib.notimplemented();
                return 0;
            }
            if ("set".equals(str)) {
                this.file.seek(i);
            } else if ("end".equals(str)) {
                RandomAccessFile randomAccessFile = this.file;
                randomAccessFile.seek(randomAccessFile.length() + ((long) i));
            } else {
                RandomAccessFile randomAccessFile2 = this.file;
                randomAccessFile2.seek(randomAccessFile2.getFilePointer() + ((long) i));
            }
            return (int) this.file.getFilePointer();
        }

        @Override // vm2.lib.IoLib.File
        public void setvbuf(String str, int i) {
            this.nobuffer = "no".equals(str);
        }

        @Override // vm2.lib.IoLib.File
        public int remaining() throws IOException {
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile != null) {
                return (int) (randomAccessFile.length() - this.file.getFilePointer());
            }
            return -1;
        }

        @Override // vm2.lib.IoLib.File
        public int peek() throws IOException {
            InputStream inputStream = this.is;
            if (inputStream != null) {
                inputStream.mark(1);
                int i = this.is.read();
                this.is.reset();
                return i;
            }
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile == null) {
                JseIoLib.notimplemented();
                return 0;
            }
            long filePointer = randomAccessFile.getFilePointer();
            int i2 = this.file.read();
            this.file.seek(filePointer);
            return i2;
        }

        @Override // vm2.lib.IoLib.File
        public int read() throws IOException {
            InputStream inputStream = this.is;
            if (inputStream != null) {
                return inputStream.read();
            }
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile == null) {
                JseIoLib.notimplemented();
                return 0;
            }
            return randomAccessFile.read();
        }

        @Override // vm2.lib.IoLib.File
        public int read(byte[] bArr, int i, int i2) throws IOException {
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile != null) {
                return randomAccessFile.read(bArr, i, i2);
            }
            InputStream inputStream = this.is;
            if (inputStream == null) {
                JseIoLib.notimplemented();
                return i2;
            }
            return inputStream.read(bArr, i, i2);
        }
    }

    public final class StdoutFile extends IoLib.File {
        private final int file_type;

        @Override // vm2.lib.IoLib.File
        public void close() throws IOException {
        }

        @Override // vm2.lib.IoLib.File
        public boolean isclosed() {
            return false;
        }

        @Override // vm2.lib.IoLib.File
        public boolean isstdfile() {
            return true;
        }

        @Override // vm2.lib.IoLib.File
        public int peek() throws IOException {
            return 0;
        }

        @Override // vm2.lib.IoLib.File
        public int read() throws IOException {
            return 0;
        }

        @Override // vm2.lib.IoLib.File
        public int read(byte[] bArr, int i, int i2) throws IOException {
            return 0;
        }

        @Override // vm2.lib.IoLib.File
        public int remaining() throws IOException {
            return 0;
        }

        @Override // vm2.lib.IoLib.File
        public int seek(String str, int i) throws IOException {
            return 0;
        }

        @Override // vm2.lib.IoLib.File
        public void setvbuf(String str, int i) {
        }

        private StdoutFile(int i) {
            super();
            this.file_type = i;
        }

        @Override // vm2.lib.IoLib.File, vm2.LuaValue, vm2.Varargs
        public String tojstring() {
            return "file (" + hashCode() + ")";
        }

        private final PrintStream getPrintStream() {
            return this.file_type == 2 ? ((IoLib) JseIoLib.this).globals.STDERR : ((IoLib) JseIoLib.this).globals.STDOUT;
        }

        @Override // vm2.lib.IoLib.File
        public void write(LuaString luaString) throws IOException {
            getPrintStream().write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
        }

        @Override // vm2.lib.IoLib.File
        public void flush() throws IOException {
            getPrintStream().flush();
        }
    }

    public final class StdinFile extends IoLib.File {
        @Override // vm2.lib.IoLib.File
        public void close() throws IOException {
        }

        @Override // vm2.lib.IoLib.File
        public void flush() throws IOException {
        }

        @Override // vm2.lib.IoLib.File
        public boolean isclosed() {
            return false;
        }

        @Override // vm2.lib.IoLib.File
        public boolean isstdfile() {
            return true;
        }

        @Override // vm2.lib.IoLib.File
        public int remaining() throws IOException {
            return -1;
        }

        @Override // vm2.lib.IoLib.File
        public int seek(String str, int i) throws IOException {
            return 0;
        }

        @Override // vm2.lib.IoLib.File
        public void setvbuf(String str, int i) {
        }

        @Override // vm2.lib.IoLib.File
        public void write(LuaString luaString) throws IOException {
        }

        private StdinFile() {
            super();
        }

        @Override // vm2.lib.IoLib.File, vm2.LuaValue, vm2.Varargs
        public String tojstring() {
            return "file (" + hashCode() + ")";
        }

        @Override // vm2.lib.IoLib.File
        public int peek() throws IOException {
            ((IoLib) JseIoLib.this).globals.STDIN.mark(1);
            int i = ((IoLib) JseIoLib.this).globals.STDIN.read();
            ((IoLib) JseIoLib.this).globals.STDIN.reset();
            return i;
        }

        @Override // vm2.lib.IoLib.File
        public int read() throws IOException {
            return ((IoLib) JseIoLib.this).globals.STDIN.read();
        }

        @Override // vm2.lib.IoLib.File
        public int read(byte[] bArr, int i, int i2) throws IOException {
            return ((IoLib) JseIoLib.this).globals.STDIN.read(bArr, i, i2);
        }
    }
}
