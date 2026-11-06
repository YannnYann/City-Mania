package info.flowersoft.theotown.scripting;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.draft.Draft;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import vm2.LuaFunction;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes4.dex */
public class MethodCluster {
    public static final ArrayDeque<MethodCluster> activeClusters = new ArrayDeque<>();
    public static int ctr;
    public LuaValue[] args4;
    public LuaValue[] args5;
    public LuaValue[] args6;
    public Draft draft;
    public ScriptingEnvironment env;
    public boolean isActive;
    public String name;
    public int totalExecutionCtr;
    public long totalExecutionTime;
    public Varargs vargs4;
    public Varargs vargs5;
    public Varargs vargs6;
    public final List<Script> scripts = new ArrayList();
    public final List<LuaFunction> functions = new ArrayList();
    public final IntList executionTimes = new IntList();
    public final IntList executionCtrs = new IntList();
    public boolean logExecutionTimes = false;

    public final void beforeInvoke() {
    }

    public static void markClusterAsActive(MethodCluster methodCluster) {
        ArrayDeque<MethodCluster> arrayDeque = activeClusters;
        synchronized (arrayDeque) {
            try {
                if (!methodCluster.isActive) {
                    if (arrayDeque.size() >= 64) {
                        arrayDeque.removeFirst().isActive = false;
                    }
                    methodCluster.isActive = true;
                    arrayDeque.add(methodCluster);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ArrayList<MethodCluster> getActiveClusters() {
        ArrayList<MethodCluster> arrayList;
        ArrayDeque<MethodCluster> arrayDeque = activeClusters;
        synchronized (arrayDeque) {
            arrayList = new ArrayList<>(arrayDeque);
        }
        return arrayList;
    }

    public static void clearActiveClusters() {
        ArrayDeque<MethodCluster> arrayDeque = activeClusters;
        synchronized (arrayDeque) {
            try {
                Iterator<MethodCluster> it = arrayDeque.iterator();
                while (it.hasNext()) {
                    it.next().isActive = false;
                }
                activeClusters.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public MethodCluster(String str) {
        this.name = str;
    }

    public void addMethod(Script script, LuaFunction luaFunction) {
        this.scripts.add(script);
        this.functions.add(luaFunction);
    }

    public String getName() {
        return this.name;
    }

    public void setup() {
        for (int i = 0; i < this.scripts.size(); i++) {
            this.executionTimes.add(0);
            this.executionCtrs.add(0);
        }
    }

    public final void catchError(String str, Script script, Throwable th) {
        ScriptingEnvironment.getInstance().catchError(str, script, th);
    }

    public final void afterInvoke() {
        this.totalExecutionCtr++;
        TimeUtils.millis();
        markClusterAsActive(this);
    }

    public final void notifyExecutionTime(int i, int i2) {
        if (i2 >= 10 && this.logExecutionTimes) {
            Script script = this.scripts.get(i);
            Gdx.app.debug("MethodCluster", "Execute " + script.getName() + "." + this.name + " took " + i2 + " ms");
        }
        IntList intList = this.executionTimes;
        intList.set(i, intList.get(i) + i2);
        IntList intList2 = this.executionCtrs;
        intList2.set(i, intList2.get(i) + 1);
        this.totalExecutionTime += (long) i2;
        ctr++;
    }

    public int countMethods() {
        return this.scripts.size();
    }

    public Script getMethodScript(int i) {
        return this.scripts.get(i);
    }

    public int getMethodExecutionTime(int i) {
        return this.executionTimes.get(i);
    }

    public int getMethodExecutionCounter(int i) {
        return this.executionCtrs.get(i);
    }

    public void clearExecutionStats(int i) {
        this.executionTimes.set(i, 0);
        this.executionCtrs.set(i, 0);
    }

    public List<Tuple<Script, LuaValue>> collectInvoke() {
        ArrayList arrayList = new ArrayList();
        Script currentScript = this.env.getCurrentScript();
        beforeInvoke();
        for (int i = 0; i < this.scripts.size(); i++) {
            try {
                Script script = this.scripts.get(i);
                if (script.isActive()) {
                    try {
                        LuaFunction luaFunction = this.functions.get(i);
                        this.env.setCurrentScript(script);
                        long jMillis = TimeUtils.millis();
                        LuaValue luaValueCall = luaFunction.call(script.getScript());
                        notifyExecutionTime(i, (int) (TimeUtils.millis() - jMillis));
                        if (!luaValueCall.isnil()) {
                            arrayList.add(new Tuple(script, luaValueCall));
                        }
                    } catch (Throwable th) {
                        catchError("*." + this.name + "()", script, th);
                    }
                }
            } finally {
                afterInvoke();
                this.env.setCurrentScript(currentScript);
            }
        }
        return arrayList;
    }

    public void invoke() {
        Script currentScript = this.env.getCurrentScript();
        beforeInvoke();
        for (int i = 0; i < this.scripts.size(); i++) {
            try {
                Script script = this.scripts.get(i);
                if (script.isActive()) {
                    try {
                        LuaFunction luaFunction = this.functions.get(i);
                        this.env.setCurrentScript(script);
                        long jMillis = TimeUtils.millis();
                        luaFunction.call(script.getScript());
                        notifyExecutionTime(i, (int) (TimeUtils.millis() - jMillis));
                    } catch (Throwable th) {
                        catchError("*." + this.name + "()", script, th);
                    }
                }
            } finally {
                afterInvoke();
                this.env.setCurrentScript(currentScript);
            }
        }
    }

    public boolean invoke(LuaValue luaValue) {
        Script currentScript = this.env.getCurrentScript();
        beforeInvoke();
        boolean zOptboolean = true;
        for (int i = 0; i < this.scripts.size(); i++) {
            try {
                Script script = this.scripts.get(i);
                if (script.isActive()) {
                    try {
                        LuaFunction luaFunction = this.functions.get(i);
                        this.env.setCurrentScript(script);
                        long jMillis = TimeUtils.millis();
                        zOptboolean &= luaFunction.call(script.getScript(), luaValue).optboolean(true);
                        notifyExecutionTime(i, (int) (TimeUtils.millis() - jMillis));
                    } catch (Throwable th) {
                        catchError("*." + this.name + "(.)", script, th);
                    }
                }
            } finally {
                afterInvoke();
                this.env.setCurrentScript(currentScript);
            }
        }
        return zOptboolean;
    }

    public boolean invoke(Varargs varargs) {
        Script currentScript = this.env.getCurrentScript();
        beforeInvoke();
        boolean zOptboolean = true;
        for (int i = 0; i < this.scripts.size(); i++) {
            try {
                Script script = this.scripts.get(i);
                if (script.isActive()) {
                    try {
                        LuaFunction luaFunction = this.functions.get(i);
                        this.env.setCurrentScript(script);
                        long jMillis = TimeUtils.millis();
                        Varargs varargsInvoke = luaFunction.invoke(script.getScript(), varargs);
                        notifyExecutionTime(i, (int) (TimeUtils.millis() - jMillis));
                        if (varargsInvoke.narg() >= 1) {
                            zOptboolean &= varargsInvoke.arg1().optboolean(true);
                        }
                    } catch (Throwable th) {
                        catchError("*." + this.name + "(.[" + varargs.narg() + "])", script, th);
                    }
                }
            } finally {
                afterInvoke();
                this.env.setCurrentScript(currentScript);
            }
        }
        return zOptboolean;
    }

    public final boolean invoke(LuaValue[] luaValueArr, Varargs varargs) {
        Script currentScript = this.env.getCurrentScript();
        beforeInvoke();
        boolean zOptboolean = true;
        for (int i = 0; i < this.scripts.size(); i++) {
            try {
                Script script = this.scripts.get(i);
                if (script.isActive()) {
                    try {
                        LuaFunction luaFunction = this.functions.get(i);
                        this.env.setCurrentScript(script);
                        luaValueArr[0] = script.getScript();
                        long jMillis = TimeUtils.millis();
                        Varargs varargsInvoke = luaFunction.invoke(varargs);
                        notifyExecutionTime(i, (int) (TimeUtils.millis() - jMillis));
                        if (varargsInvoke.narg() >= 1) {
                            zOptboolean &= varargsInvoke.arg1().optboolean(true);
                        }
                    } catch (Throwable th) {
                        catchError("*." + this.name + "(.[" + luaValueArr.length + "])", script, th);
                    }
                }
            } finally {
                afterInvoke();
                this.env.setCurrentScript(currentScript);
            }
        }
        return zOptboolean;
    }

    public Varargs invokeUntil(Varargs varargs) {
        Script currentScript = this.env.getCurrentScript();
        beforeInvoke();
        Varargs varargsInvoke = null;
        boolean z = true;
        for (int i = 0; i < this.scripts.size() && z; i++) {
            try {
                Script script = this.scripts.get(i);
                if (script.isActive()) {
                    try {
                        LuaFunction luaFunction = this.functions.get(i);
                        this.env.setCurrentScript(script);
                        long jMillis = TimeUtils.millis();
                        varargsInvoke = luaFunction.invoke(script.getScript(), varargs);
                        notifyExecutionTime(i, (int) (TimeUtils.millis() - jMillis));
                        if (varargsInvoke.narg() >= 1) {
                            z = !varargsInvoke.arg1().isnil();
                        }
                    } catch (Throwable th) {
                        catchError("*." + this.name + "(.[" + varargs.narg() + "])", script, th);
                    }
                }
            } finally {
                afterInvoke();
                this.env.setCurrentScript(currentScript);
            }
        }
        return varargsInvoke;
    }

    public boolean invoke(int i, int i2, int i3) {
        if (this.args4 == null) {
            LuaValue[] luaValueArr = new LuaValue[4];
            this.args4 = luaValueArr;
            Arrays.fill(luaValueArr, LuaValue.ZERO);
            this.vargs4 = LuaValue.varargsOf(this.args4);
        }
        if (this.args4[1].checkint() != i) {
            this.args4[1] = LuaValue.valueOf(i);
        }
        if (this.args4[2].checkint() != i2) {
            this.args4[2] = LuaValue.valueOf(i2);
        }
        if (this.args4[3].checkint() != i3) {
            this.args4[3] = LuaValue.valueOf(i3);
        }
        return invoke(this.args4, this.vargs4);
    }

    public boolean invoke(int i, int i2, int i3, int i4) {
        if (this.args5 == null) {
            LuaValue[] luaValueArr = new LuaValue[5];
            this.args5 = luaValueArr;
            Arrays.fill(luaValueArr, LuaValue.ZERO);
            this.vargs5 = LuaValue.varargsOf(this.args5);
        }
        if (this.args5[1].checkint() != i) {
            this.args5[1] = LuaValue.valueOf(i);
        }
        if (this.args5[2].checkint() != i2) {
            this.args5[2] = LuaValue.valueOf(i2);
        }
        if (this.args5[3].checkint() != i3) {
            this.args5[3] = LuaValue.valueOf(i3);
        }
        if (this.args5[4].checkint() != i4) {
            this.args5[4] = LuaValue.valueOf(i4);
        }
        return invoke(this.args5, this.vargs5);
    }

    public boolean invoke(int i, int i2, int i3, int i4, LuaValue luaValue) {
        if (this.args6 == null) {
            LuaValue[] luaValueArr = new LuaValue[6];
            this.args6 = luaValueArr;
            Arrays.fill(luaValueArr, LuaValue.ZERO);
            this.vargs6 = LuaValue.varargsOf(this.args6);
        }
        if (this.args6[1].checkint() != i) {
            this.args6[1] = LuaValue.valueOf(i);
        }
        if (this.args6[2].checkint() != i2) {
            this.args6[2] = LuaValue.valueOf(i2);
        }
        if (this.args6[3].checkint() != i3) {
            this.args6[3] = LuaValue.valueOf(i3);
        }
        if (this.args6[4].checkint() != i4) {
            this.args6[4] = LuaValue.valueOf(i4);
        }
        LuaValue[] luaValueArr2 = this.args6;
        luaValueArr2[5] = luaValue;
        return invoke(luaValueArr2, this.vargs6);
    }

    public boolean invoke(int i, int i2, int i3, boolean z, LuaValue luaValue) {
        if (this.args6 == null) {
            LuaValue[] luaValueArr = new LuaValue[6];
            this.args6 = luaValueArr;
            Arrays.fill(luaValueArr, LuaValue.ZERO);
            this.vargs6 = LuaValue.varargsOf(this.args6);
        }
        if (this.args6[1].checkint() != i) {
            this.args6[1] = LuaValue.valueOf(i);
        }
        if (this.args6[2].checkint() != i2) {
            this.args6[2] = LuaValue.valueOf(i2);
        }
        if (this.args6[3].checkint() != i3) {
            this.args6[3] = LuaValue.valueOf(i3);
        }
        this.args6[4] = LuaValue.valueOf(z);
        LuaValue[] luaValueArr2 = this.args6;
        luaValueArr2[5] = luaValue;
        return invoke(luaValueArr2, this.vargs6);
    }

    public static int getAndResetCallCounter() {
        int i = ctr;
        ctr = 0;
        return i;
    }

    public boolean isEmpty() {
        return this.scripts.isEmpty();
    }

    public boolean isNotEmpty() {
        return !this.scripts.isEmpty();
    }

    public Draft getDraft() {
        return this.draft;
    }
}
