package info.flowersoft.theotown.scripting;

import info.flowersoft.theotown.resources.ScriptingManager;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;

/* JADX INFO: loaded from: classes4.dex */
public class ManagedLibrary extends SimpleLuaLibrary {
    /* JADX WARN: Multi-variable type inference failed */
    public ManagedLibrary(String str) {
        this(str, (SimpleLuaLibrary.LibraryInjector) null);
        if (this instanceof SimpleLuaLibrary.LibraryInjector) {
            this.injector = (SimpleLuaLibrary.LibraryInjector) this;
        }
    }

    public ManagedLibrary(String str, SimpleLuaLibrary.LibraryInjector libraryInjector) {
        this(ScriptingManager.getInstance().get(str), libraryInjector);
    }

    public ManagedLibrary(ScriptingManager.ScriptEntry scriptEntry, SimpleLuaLibrary.LibraryInjector libraryInjector) {
        super(extractName(scriptEntry.getPath()), scriptEntry.getCode(), scriptEntry.getPath(), libraryInjector);
    }

    public void assertPrivileged(String str) {
        ScriptingEnvironment.getInstance().assertPrivileged(str);
    }

    public static String extractName(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            str = str.substring(iLastIndexOf + 1);
        }
        int iIndexOf = str.indexOf(46);
        return iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
    }
}
