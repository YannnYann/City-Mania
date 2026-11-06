package info.flowersoft.theotown.scripting;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3647i2;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.LuaLibrary;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.blueflower.stapel2d.util.Tuple;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import vm2.Globals;
import vm2.LuaClosure;
import vm2.LuaFunction;
import vm2.LuaString;
import vm2.LuaTable;
import vm2.LuaThread;
import vm2.LuaValue;
import vm2.compiler.DumpState;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.JsePlatform;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptingEnvironment implements LuaLibrary.CodeLoader {
    public static ScriptingEnvironment instance;
    public long compileMS;
    public Script currentScript;
    public Thread currentThread;
    public final Globals globals;
    public long initMS;
    public long precompileMS;
    public boolean protectedMode;
    public final String scriptHeader;
    public final List<LuaLibrary> libraries = new ArrayList();
    public final List<Script> scripts = new ArrayList();
    public List<Tuple<Script, Runnable>> postponedTasks = new ArrayList();
    public List<Tuple<Script, Runnable>> nextPostponedTasks = new ArrayList();
    public final LuaPrecompiler precompiler = new LuaPrecompiler();
    public final String cacheSuffix = "v4";
    public final LuaCache cache = new LuaCache();
    public final LuaTable protectedTable = LuaValue.tableOf();
    public final Map<LuaValue, LuaValue> publicGlobals = new HashMap();
    public final Map<LuaValue, LuaValue> protectedGlobals = new HashMap();

    public ScriptingEnvironment() {
        String[] strArr = {"City", "Tile", "Car", "Builder"};
        for (int i = 0; i < 4; i++) {
            this.protectedGlobals.put(LuaValue.valueOf(strArr[i]), LuaValue.NIL);
        }
        LuaString.s_metatable = null;
        this.globals = JsePlatform.debugGlobals();
        setupProtectedMode();
        enterProtectedMode();
        String[] strArr2 = {"rawget", "rawset"};
        for (int i2 = 0; i2 < 2; i2++) {
            String str = strArr2[i2];
            this.protectedTable.set(str, this.globals.get(str));
        }
        LuaValue luaValue = this.globals.get("package");
        LuaValue luaValue2 = luaValue.get(C3522b4.i.r);
        LuaValue luaValue3 = LuaValue.NIL;
        luaValue2.set("io", luaValue3);
        luaValue.get(C3522b4.i.r).set("luajava", luaValue3);
        luaValue.get(C3522b4.i.r).set("package", luaValue3);
        if (TheoTown.DEBUG) {
            this.globals.set("ieio22UdjFHm6qYH6QUpxZfKLApzBbtv", System.currentTimeMillis());
        }
        this.globals.set("Ax7EPgt6mpexln4Xwqaa", System.currentTimeMillis());
        leaveProtectedMode();
        this.scriptHeader = PackedUtils.INSTANCE.readInternalText("script_header.lby");
    }

    public void protect() {
        enterProtectedMode();
        String[] strArr = {"io", "rawset", "rawget", "luajava", "package", "debug"};
        for (int i = 0; i < 6; i++) {
            this.globals.set(strArr[i], LuaValue.NIL);
        }
        leaveProtectedMode();
    }

    public final void setupProtectedMode() {
        for (LuaValue luaValue : this.globals.keys()) {
            this.protectedGlobals.put(luaValue, this.globals.get(luaValue));
            this.globals.set(luaValue, LuaValue.NIL);
        }
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("__index", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.ScriptingEnvironment.1
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue2, LuaValue luaValue3) {
                LuaValue luaValue4 = (LuaValue) ScriptingEnvironment.this.protectedGlobals.get(luaValue3);
                if (luaValue4 == null) {
                    luaValue4 = (LuaValue) ScriptingEnvironment.this.publicGlobals.get(luaValue3);
                }
                return luaValue4 == null ? LuaValue.NIL : luaValue4;
            }
        });
        luaTableTableOf.set("__newindex", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.ScriptingEnvironment.2
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
                if (ScriptingEnvironment.this.protectedMode) {
                    ScriptingEnvironment.this.publicGlobals.remove(luaValue3);
                    ScriptingEnvironment.this.protectedGlobals.put(luaValue3, luaValue4);
                } else if (!ScriptingEnvironment.this.protectedGlobals.containsKey(luaValue3)) {
                    ScriptingEnvironment.this.publicGlobals.put(luaValue3, luaValue4);
                }
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("__metatable", this.globals);
        this.globals.setmetatable(luaTableTableOf);
    }

    public final void enterProtectedMode() {
        this.protectedMode = true;
    }

    public final void leaveProtectedMode() {
        this.protectedMode = false;
    }

    @Override // info.flowersoft.theotown.scripting.LuaLibrary.CodeLoader
    public LuaFunction loadBase64(String str, String str2) {
        return this.globals.load(new ByteArrayInputStream(Base64Coder.decode(str)), str2, "b", this.globals).checkfunction();
    }

    public LuaFunction loadString(String str, String str2) {
        return this.globals.load(str, str2).checkfunction();
    }

    public void finalizeScripts() {
        this.cache.save();
        this.cache.clear();
    }

    public void loadLibrary(final LuaLibrary luaLibrary) {
        executeSynced(new Runnable() { // from class: info.flowersoft.theotown.scripting.ScriptingEnvironment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ScriptingEnvironment.$r8$lambda$D9MTORy_o5mBjURYKOmyzt42BtI(this.f$0, luaLibrary);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$D9MTORy_o5mBjURYKOmyzt42BtI(ScriptingEnvironment scriptingEnvironment, LuaLibrary luaLibrary) {
        scriptingEnvironment.enterProtectedMode();
        luaLibrary.load(scriptingEnvironment.globals, scriptingEnvironment.protectedTable, scriptingEnvironment);
        scriptingEnvironment.leaveProtectedMode();
        scriptingEnvironment.libraries.add(luaLibrary);
    }

    public void unloadLibrary(final LuaLibrary luaLibrary) {
        executeSynced(new Runnable() { // from class: info.flowersoft.theotown.scripting.ScriptingEnvironment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ScriptingEnvironment.$r8$lambda$vSpcfcaW9TpQk_jjEQUbKvNtT0o(this.f$0, luaLibrary);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$vSpcfcaW9TpQk_jjEQUbKvNtT0o(ScriptingEnvironment scriptingEnvironment, LuaLibrary luaLibrary) {
        scriptingEnvironment.enterProtectedMode();
        luaLibrary.unload(scriptingEnvironment.globals);
        scriptingEnvironment.leaveProtectedMode();
        scriptingEnvironment.libraries.remove(luaLibrary);
    }

    public <T> T getLibrary(Class<T> cls) {
        for (int i = 0; i < this.libraries.size(); i++) {
            T t = (T) this.libraries.get(i);
            if (cls.isInstance(t)) {
                return t;
            }
        }
        return null;
    }

    public long getPrecompileMS() {
        return this.precompileMS;
    }

    public long getCompileMS() {
        return this.compileMS;
    }

    public long getInitMS() {
        return this.initMS;
    }

    public Globals getGlobals() {
        return this.globals;
    }

    public void registerDraft(Draft draft) {
        LuaValue luaValueMethod = this.globals.get("Draft").method("_new", CoerceJavaToLua.coerce(draft));
        draft.luaRepr = luaValueMethod;
        luaValueMethod.method("_init");
        draft.luaScripts = new ArrayList();
    }

    public List<Script> registerScripts(Draft draft, List<String> list, List<AbstractFile> list2, List<byte[]> list3) {
        int i;
        boolean z;
        char c;
        LuaFunction luaFunctionCheckfunction;
        LuaValue luaValue = this.globals.get("Script");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < list.size()) {
            String strPrecompile = list.get(i2);
            AbstractFile abstractFile = list2.get(i2);
            byte[] bArr = list3.get(i2);
            String name = abstractFile.getName();
            String str = null;
            if (strPrecompile != null) {
                String str2 = Hashing.md5(strPrecompile) + ":" + strPrecompile.length() + ":debug:v4";
                byte[] bArr2 = this.cache.get(str2);
                if (bArr2 != null) {
                    strPrecompile = null;
                }
                str = str2;
                bArr = bArr2;
            }
            long jMillis = TimeUtils.millis();
            if (strPrecompile != null) {
                c = 1;
                strPrecompile = this.precompiler.precompile(strPrecompile);
                i = i2;
                z = false;
                this.precompileMS += TimeUtils.millis() - jMillis;
            } else {
                i = i2;
                z = false;
                c = 1;
            }
            Script script = new Script(draft, draft, name, abstractFile);
            LuaString luaStringValueOf = LuaValue.valueOf(name);
            LuaString luaStringValueOf2 = LuaValue.valueOf(abstractFile.toString());
            LuaValue luaValue2 = draft.luaRepr;
            LuaValue luaValueCoerce = CoerceJavaToLua.coerce(script);
            boolean z2 = z;
            LuaValue[] luaValueArr = new LuaValue[4];
            luaValueArr[z2 ? 1 : 0] = luaStringValueOf;
            luaValueArr[c] = luaStringValueOf2;
            luaValueArr[2] = luaValue2;
            luaValueArr[3] = luaValueCoerce;
            LuaValue luaValueArg1 = luaValue.invokemethod("_new", luaValueArr).arg1();
            script.script = luaValueArg1;
            long jMillis2 = TimeUtils.millis();
            if (strPrecompile != null) {
                LuaClosure luaClosureCheckclosure = this.globals.load(this.scriptHeader + " " + strPrecompile, abstractFile.toString()).checkclosure();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                } catch (IOException e) {
                    e = e;
                }
                try {
                    DumpState.dump(luaClosureCheckclosure.p, byteArrayOutputStream, z2);
                    this.cache.put(str, byteArrayOutputStream.toByteArray());
                    luaFunctionCheckfunction = luaClosureCheckclosure;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    luaFunctionCheckfunction = luaClosureCheckclosure;
                }
            } else if (bArr != null) {
                luaFunctionCheckfunction = this.globals.load(new ByteArrayInputStream(bArr), abstractFile.toString(), "b", this.globals).checkfunction();
            } else {
                throw new IllegalStateException("Got no code nor binary data for " + abstractFile);
            }
            this.compileMS += TimeUtils.millis() - jMillis2;
            long jMillis3 = TimeUtils.millis();
            Script currentScript = getCurrentScript();
            setCurrentScript(script);
            try {
                luaFunctionCheckfunction.call(luaValueArg1);
                setCurrentScript(currentScript);
                this.initMS += TimeUtils.millis() - jMillis3;
                script.initializer = luaFunctionCheckfunction;
                draft.luaScripts.add(script);
                arrayList.add(script);
                this.scripts.add(script);
                i2 = i + 1;
            } catch (Throwable th) {
                setCurrentScript(currentScript);
                throw th;
            }
        }
        return arrayList;
    }

    public Script appendScript(Draft draft, Draft draft2, LuaFunction luaFunction, String str, AbstractFile abstractFile, Script script) {
        LuaValue luaValue = this.globals.get("Script");
        Script script2 = new Script(draft, draft2, str, abstractFile);
        LuaValue luaValueArg1 = luaValue.invokemethod("_new", new LuaValue[]{LuaValue.valueOf(str), LuaValue.valueOf(abstractFile.toString()), draft.luaRepr, CoerceJavaToLua.coerce(script2), script.getScript()}).arg1();
        luaFunction.call(luaValueArg1);
        script2.script = luaValueArg1;
        script2.initializer = luaFunction;
        script2.parent = script;
        draft.luaScripts.add(script2);
        this.scripts.add(script2);
        return script2;
    }

    public MethodCluster getMethodClusterOrNull(String str) {
        return getMethodClusterOrNull(str, Draft.class);
    }

    public <T extends Draft> MethodCluster getMethodClusterOrNull(String str, Class<T> cls) {
        LuaFunction luaFunctionOptfunction;
        MethodCluster methodCluster = null;
        for (int i = 0; i < this.scripts.size(); i++) {
            Script script = this.scripts.get(i);
            if (cls.isInstance(script.getDraft()) && script.getDraft().active && (luaFunctionOptfunction = script.getScript().rawget(str).optfunction(null)) != null) {
                if (methodCluster == null) {
                    methodCluster = new MethodCluster(str);
                    methodCluster.env = this;
                }
                methodCluster.addMethod(script, luaFunctionOptfunction);
            }
        }
        if (methodCluster != null) {
            methodCluster.setup();
        }
        return methodCluster;
    }

    public <T extends Draft> MethodCluster getMethodClusterOrNull(String str, T t) {
        MethodCluster methodCluster = null;
        if (t.luaScripts == null) {
            return null;
        }
        if (t.active) {
            MethodCluster methodCluster2 = null;
            for (int i = 0; i < t.luaScripts.size(); i++) {
                Script script = t.luaScripts.get(i);
                LuaFunction luaFunctionOptfunction = script.getScript().rawget(str).optfunction(null);
                if (luaFunctionOptfunction != null) {
                    if (methodCluster2 == null) {
                        methodCluster2 = new MethodCluster(str);
                        methodCluster2.draft = t;
                        methodCluster2.env = this;
                    }
                    methodCluster2.addMethod(script, luaFunctionOptfunction);
                }
            }
            methodCluster = methodCluster2;
        }
        if (methodCluster != null) {
            methodCluster.setup();
        }
        return methodCluster;
    }

    public List<MethodCluster> getMethodClustersOrNull(String str, Class<?> cls) {
        MethodCluster methodClusterOrNull;
        ArrayList arrayList = null;
        for (Draft draft : Drafts.ALL.values()) {
            if (cls.isInstance(draft) && draft.active && draft.luaScripts != null && (methodClusterOrNull = getMethodClusterOrNull(str, draft)) != null && !methodClusterOrNull.isEmpty()) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(methodClusterOrNull);
            }
        }
        return arrayList;
    }

    public void updateDraftCallbacks() {
        for (Draft draft : Drafts.ALL.values()) {
            draft.drawMethods = getMethodClusterOrNull("draw", draft);
        }
    }

    public final void beforeCallingMethodOnce(String str) {
        this.protectedGlobals.put(LuaValue.valueOf("script_calling_phase"), LuaValue.valueOf(str));
    }

    public final void afterCallingMethodOnce() {
        this.protectedGlobals.put(LuaValue.valueOf("script_calling_phase"), LuaValue.valueOf(C3647i2.d));
    }

    public void callMethodOnce(String str) {
        MethodCluster methodClusterOrNull = getMethodClusterOrNull(str, Draft.class);
        if (methodClusterOrNull == null || !methodClusterOrNull.isNotEmpty()) {
            return;
        }
        beforeCallingMethodOnce(str);
        methodClusterOrNull.invoke();
        afterCallingMethodOnce();
    }

    public void callMethodOnce(String str, LuaValue luaValue) {
        MethodCluster methodClusterOrNull = getMethodClusterOrNull(str, Draft.class);
        if (methodClusterOrNull == null || !methodClusterOrNull.isNotEmpty()) {
            return;
        }
        beforeCallingMethodOnce(str);
        methodClusterOrNull.invoke(luaValue);
        afterCallingMethodOnce();
    }

    public synchronized void postponeTask(Runnable runnable) {
        postponeTask(runnable, getCurrentScript());
    }

    public synchronized void postponeTask(Runnable runnable, Script script) {
        this.nextPostponedTasks.add(new Tuple<>(script, runnable));
    }

    public synchronized int countPostponedTasks() {
        return this.nextPostponedTasks.size();
    }

    public synchronized void runPostponedTasks() {
        swapPostponedTaskLists();
        Script currentScript = getCurrentScript();
        for (int i = 0; i < this.postponedTasks.size(); i++) {
            try {
                Tuple<Script, Runnable> tuple = this.postponedTasks.get(i);
                setCurrentScript(tuple.getFirst());
                try {
                    tuple.getSecond().run();
                } catch (Throwable th) {
                    catchError("postponed", tuple.getFirst(), th);
                }
            } finally {
                this.postponedTasks.clear();
                setCurrentScript(currentScript);
            }
        }
    }

    public synchronized void runTaskNow(Runnable runnable, Script script) {
        Script currentScript = getCurrentScript();
        try {
            setCurrentScript(script);
            try {
                runnable.run();
            } catch (Throwable th) {
                catchError("postponed", script, th);
            }
        } finally {
            setCurrentScript(currentScript);
        }
    }

    public final void swapPostponedTaskLists() {
        List<Tuple<Script, Runnable>> list = this.nextPostponedTasks;
        this.nextPostponedTasks = this.postponedTasks;
        this.postponedTasks = list;
    }

    public LuaPrecompiler getPrecompiler() {
        return this.precompiler;
    }

    public void catchError(String str, Script script, Throwable th) {
        Draft draft = script != null ? script.getDraft() : null;
        th.printStackTrace();
        if (draft == null || !draft.muteLua) {
            TheoTown.analytics.logException("Lua", th instanceof Exception ? (Exception) th : new Exception(th));
        }
        if (draft != null) {
            Gdx.app.debug("scriptingEnvironment", "Exception in " + script.getName() + " in " + str);
        }
        if (draft == null || !draft.strictLua) {
            return;
        }
        ScriptException scriptException = new ScriptException(str, script, th);
        scriptException.setStackTrace(new StackTraceElement[0]);
        throw scriptException;
    }

    public boolean isPrivileged() {
        Script currentScript = getCurrentScript();
        if (currentScript != null) {
            return currentScript.isPrivileged();
        }
        return false;
    }

    public boolean isSuperPrivileged() {
        Script currentScript = getCurrentScript();
        if (currentScript != null) {
            return currentScript.isSuperPrivileged();
        }
        return false;
    }

    public void assertPrivileged(String str) {
        String str2;
        if (isPrivileged()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Insufficient permission caused by ");
        sb.append(str);
        if (getCurrentScript() != null) {
            str2 = " called by script " + getCurrentScript().getName();
        } else {
            str2 = " called by unknown script";
        }
        sb.append(str2);
        throw new IllegalStateException(sb.toString());
    }

    public void assertSuperPrivileged(String str) {
        String str2;
        if (isSuperPrivileged()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Illegal access by ");
        sb.append(str);
        if (getCurrentScript() != null) {
            str2 = " called by script " + getCurrentScript().getName();
        } else {
            str2 = " called by unknown script";
        }
        sb.append(str2);
        throw new IllegalStateException(sb.toString());
    }

    public static ScriptingEnvironment getInstance() {
        if (instance == null) {
            instance = new ScriptingEnvironment();
        }
        return instance;
    }

    public void dispose() {
        instance = null;
    }

    public synchronized Script getCurrentScript() {
        if (getCurrentThread() != this.currentThread) {
            return null;
        }
        return this.currentScript;
    }

    public synchronized String getCurrentSource() {
        Script script = this.currentScript;
        if (script != null) {
            return script.getName();
        }
        return "<none>";
    }

    public synchronized Draft getCurrentDraft() {
        Script currentScript;
        currentScript = getCurrentScript();
        return currentScript != null ? currentScript.getDraft() : null;
    }

    public synchronized Draft getCurrentSourceDraft() {
        Script currentScript;
        currentScript = getCurrentScript();
        return currentScript != null ? currentScript.getSourceDraft() : null;
    }

    public LuaValue getSender() {
        Script currentScript = getCurrentScript();
        if (currentScript != null) {
            return currentScript.script;
        }
        return null;
    }

    public final void executeSynced(Runnable runnable) {
        Thread currentThread = getCurrentThread();
        synchronized (this) {
            try {
                if (this.currentThread != currentThread) {
                    long jMillis = TimeUtils.millis();
                    while (true) {
                        Thread thread = this.currentThread;
                        if (thread == null || thread == currentThread) {
                            break;
                        }
                        if (TimeUtils.millis() - jMillis > 10000) {
                            throw new IllegalStateException("Previous script " + this.currentScript + ":" + this.currentThread + " was not released within 10 seconds for execution of " + this.currentScript + ":" + currentThread);
                        }
                        wait(1000L);
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            } finally {
            }
            this.currentThread = currentThread;
        }
        try {
            runnable.run();
            synchronized (this) {
                try {
                    if (this.currentThread == currentThread) {
                        this.currentThread = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                try {
                    if (this.currentThread == currentThread) {
                        this.currentThread = null;
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    public final Thread getCurrentThread() {
        Thread threadCurrentThread = Thread.currentThread();
        return threadCurrentThread instanceof LuaThread.StateThread ? ((LuaThread.StateThread) threadCurrentThread).owner : threadCurrentThread;
    }

    public synchronized void setCurrentScript(Script script) {
        Thread thread;
        try {
            Thread currentThread = getCurrentThread();
            if (this.currentScript != null && script != null && currentThread != (thread = this.currentThread) && thread != null) {
                Gdx.app.debug("ScriptingEnvironment", "change of current script detected");
            }
            Thread thread2 = this.currentThread;
            if (thread2 != null && thread2 != currentThread) {
                long jMillis = TimeUtils.millis();
                while (true) {
                    try {
                        Thread thread3 = this.currentThread;
                        if (thread3 == null || thread3 == currentThread) {
                            break;
                        }
                        if (TimeUtils.millis() - jMillis > 10000) {
                            throw new IllegalStateException("Previous script " + this.currentScript + ":" + this.currentThread + " was not released within 10 seconds for execution of " + script + ":" + currentThread);
                        }
                        wait(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            this.currentScript = script;
            if (script == null) {
                this.currentThread = null;
                notifyAll();
            } else {
                this.currentThread = currentThread;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
