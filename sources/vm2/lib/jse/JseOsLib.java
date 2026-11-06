package vm2.lib.jse;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import vm2.Globals;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OsLib;

/* JADX INFO: loaded from: classes6.dex */
public class JseOsLib extends OsLib {
    public static final int EXEC_ERROR = -3;
    public static final int EXEC_INTERRUPTED = -2;
    public static final int EXEC_IOEXCEPTION = 1;

    @Override // vm2.lib.OsLib
    public String getenv(String str) {
        String str2 = System.getenv(str);
        return str2 != null ? str2 : System.getProperty(str);
    }

    @Override // vm2.lib.OsLib
    public Varargs execute(String str) {
        int iWaitFor;
        try {
            Globals globals = this.globals;
            iWaitFor = new JseProcess(str, (InputStream) null, globals.STDOUT, globals.STDERR).waitFor();
        } catch (IOException unused) {
            iWaitFor = 1;
        } catch (InterruptedException unused2) {
            iWaitFor = -2;
        } catch (Throwable unused3) {
            iWaitFor = -3;
        }
        if (iWaitFor == 0) {
            return LuaValue.varargsOf(LuaValue.TRUE, LuaValue.valueOf("exit"), LuaValue.ZERO);
        }
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("signal"), LuaValue.valueOf(iWaitFor));
    }

    @Override // vm2.lib.OsLib
    public void remove(String str) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            throw new IOException("No such file or directory");
        }
        if (!file.delete()) {
            throw new IOException("Failed to delete");
        }
    }

    @Override // vm2.lib.OsLib
    public void rename(String str, String str2) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            throw new IOException("No such file or directory");
        }
        if (!file.renameTo(new File(str2))) {
            throw new IOException("Failed to rename");
        }
    }

    @Override // vm2.lib.OsLib
    public String tmpname() {
        try {
            return File.createTempFile(OsLib.TMP_PREFIX, OsLib.TMP_SUFFIX).getAbsolutePath();
        } catch (IOException unused) {
            return super.tmpname();
        }
    }
}
