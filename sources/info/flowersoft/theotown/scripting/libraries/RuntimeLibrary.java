package info.flowersoft.theotown.scripting.libraries;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3825rg;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.scripting.libraries.RuntimeLibrary;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.OSUtil;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import io.blueflower.stapel2d.util.json.DefaultJsonReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import vm2.Globals;
import vm2.LuaError;
import vm2.LuaFunction;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.CoerceLuaToJava;
import vm2.lib.jse.LuajavaLib;

/* JADX INFO: loaded from: classes4.dex */
public class RuntimeLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final Stapel2DGameContext context;
    public final GameStack gameStack;
    public Master gui;

    public RuntimeLibrary(Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        super("libs/Runtime.lua");
        this.context = stapel2DGameContext;
        this.gameStack = gameStack;
    }

    public void updateGui(Master master) {
        this.gui = master;
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, final Globals globals) {
        luaValue.set("getName", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.1
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(RuntimeLibrary.this.context.getTranslator().translate(40));
            }
        });
        luaValue.set(C3825rg.b, new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.2
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTown.VERSION_NAME);
            }
        });
        luaValue.set("getVersionCode", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.3
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTown.VERSION_CODE);
            }
        });
        luaValue.set("getId", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.4
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTown.APPLICATION_ID);
            }
        });
        luaValue.set("isDebug", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.5
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTown.DEBUG);
            }
        });
        luaValue.set("getTime", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.6
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(InternetTime.getInstance().getTime());
            }
        });
        luaValue.set("getDate", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.7
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                Calendar calendar = Calendar.getInstance();
                LuaTable luaTableTableOf = LuaValue.tableOf();
                luaTableTableOf.set("year", calendar.get(1));
                luaTableTableOf.set("month", calendar.get(2));
                luaTableTableOf.set("day", calendar.get(5));
                luaTableTableOf.set("dayOfYear", calendar.get(6));
                luaTableTableOf.set("hour", calendar.get(11));
                luaTableTableOf.set("minute", calendar.get(12));
                luaTableTableOf.set("second", calendar.get(13));
                luaTableTableOf.set("millisecond", calendar.get(14));
                return luaTableTableOf;
            }
        });
        luaValue.set("fromJson", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.8
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                try {
                    return LuaTableSerializer.deserialize(new DefaultJsonReader(new StringReader(luaValue3.checkjstring())));
                } catch (IOException e) {
                    e.printStackTrace();
                    return LuaValue.NIL;
                }
            }
        });
        luaValue.set("toJson", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.9
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                try {
                    return LuaValue.valueOf(LuaTableSerializer.serialize(luaValue3.checktable()).toString());
                } catch (JSONException e) {
                    e.printStackTrace();
                    return LuaValue.NIL;
                }
            }
        });
        luaValue.set("getUuid", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.10
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(UUID.randomUUID().toString());
            }
        });
        luaValue.set("setClipboard", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.11
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                OSUtil.pasteIntoClipboard(luaValue3.checkjstring());
                return LuaValue.NIL;
            }
        });
        luaValue.set("getClipboard", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.12
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ScriptingEnvironment.getInstance().assertPrivileged("getClipboard");
                return LuaValue.valueOf(Gdx.app.getClipboard().getContents());
            }
        });
        luaValue.set("loadText", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.13
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                String textFile;
                AbstractFile path = RuntimeLibrary.readPath(luaValue3);
                if (path != null && path.isFile()) {
                    try {
                        textFile = Files.readTextFile(path.read());
                    } catch (IOException e) {
                        e.printStackTrace();
                        textFile = null;
                    }
                    if (textFile != null) {
                        return LuaValue.valueOf(textFile);
                    }
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("saveText", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.14
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                String strCheckjstring = luaValue3.checkjstring();
                String strCheckjstring2 = luaValue4.checkjstring();
                try {
                    Draft draft = ScriptingEnvironment.getInstance().getCurrentScript().getDraft();
                    AbstractFile abstractFileCreateDirectory = draft.path;
                    if (draft.plugin && draft.protectedPlugin) {
                        AbstractFile abstractFile = draft.parentFile;
                        if (abstractFile instanceof RealFile) {
                            abstractFileCreateDirectory = RealFile.createDirectory(((RealFile) abstractFile).getRealFile().getParentFile(), RealFile.createDirectory(Resources.getTheoTownDir(), null));
                        }
                    }
                    abstractFileCreateDirectory.newFile(strCheckjstring, new ByteArrayInputStream(strCheckjstring2.getBytes(StandardCharsets.UTF_8)));
                    return LuaValue.TRUE;
                } catch (IOException unused) {
                    return LuaValue.FALSE;
                }
            }
        });
        luaValue.set("downloadText", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.15
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                if (ScriptingEnvironment.getInstance().isPrivileged()) {
                    new AnonymousClass1(luaValue3.checkjstring(), luaValue4.checkfunction(), ScriptingEnvironment.getInstance().getCurrentScript()).start();
                }
                return LuaValue.NIL;
            }

            /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1, reason: invalid class name */
            public class AnonymousClass1 extends Thread {
                public final /* synthetic */ LuaFunction val$handler;
                public final /* synthetic */ String val$path;
                public final /* synthetic */ Script val$script;

                public AnonymousClass1(String str, LuaFunction luaFunction, Script script) {
                    this.val$path = str;
                    this.val$handler = luaFunction;
                    this.val$script = script;
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    final String str;
                    try {
                        if (this.val$path.length() < 8 || !Hashing.md5(this.val$path.substring(0, 8)).equals("2fec9aca317d03144a05e2eee909c30b")) {
                            InputStream inputStreamOpenStream = new URL(this.val$path).openStream();
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            StreamCopyUtil.copyTo(inputStreamOpenStream, byteArrayOutputStream);
                            inputStreamOpenStream.close();
                            str = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                        } else {
                            str = TheoTown.runtimeFeatures.downloadTPC(this.val$path);
                        }
                        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
                        final LuaFunction luaFunction = this.val$handler;
                        scriptingEnvironment.postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                luaFunction.call(LuaValue.NIL, LuaValue.valueOf(str));
                            }
                        }, this.val$script);
                    } catch (IOException e) {
                        ScriptingEnvironment scriptingEnvironment2 = ScriptingEnvironment.getInstance();
                        final LuaFunction luaFunction2 = this.val$handler;
                        scriptingEnvironment2.postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                RuntimeLibrary.AnonymousClass15.AnonymousClass1.$r8$lambda$8zoVkSMUWiHkz81I26GJVAicPoU(e, luaFunction2);
                            }
                        }, this.val$script);
                    }
                }

                public static /* synthetic */ void $r8$lambda$8zoVkSMUWiHkz81I26GJVAicPoU(IOException iOException, LuaFunction luaFunction) {
                    String message = iOException.getMessage();
                    if (message == null) {
                        message = iOException.toString();
                    }
                    luaFunction.call(LuaValue.valueOf(message));
                }
            }
        });
        luaValue.set("openURL", new AnonymousClass16());
        luaValue.set("postpone", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.17
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                final LuaFunction luaFunctionCheckfunction = luaValue3.checkfunction();
                long jOptlong = luaValue4.optlong(0L);
                final Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
                if (jOptlong > 0) {
                    final long jMillis = TimeUtils.millis() + jOptlong;
                    ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.17.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (TimeUtils.millis() >= jMillis) {
                                luaFunctionCheckfunction.call();
                            } else {
                                ScriptingEnvironment.getInstance().postponeTask(this, currentScript);
                            }
                        }
                    }, currentScript);
                } else {
                    ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.17.2
                        @Override // java.lang.Runnable
                        public void run() {
                            luaFunctionCheckfunction.call();
                        }
                    }, currentScript);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getOSVersion", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.18
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(Gdx.app.getVersion());
            }
        });
        luaValue.set("getPlatform", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.19
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                String str;
                int i = AnonymousClass41.$SwitchMap$com$badlogic$gdx$Application$ApplicationType[Gdx.app.getType().ordinal()];
                if (i == 1) {
                    str = "android";
                } else if (i == 2) {
                    str = "ios";
                } else if (i == 3) {
                    str = "desktop";
                } else {
                    str = "unknown";
                }
                return LuaValue.valueOf(str);
            }
        });
        luaValue.set("isPremium", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.20
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTown.PREMIUM);
            }
        });
        luaValue.set("isPickle", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.21
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTown.isPickleMode());
            }
        });
        luaValue.set("getModel", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.22
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(TheoTown.DEVICE_MODEL), LuaValue.valueOf(TheoTown.DEVICE_MANUFACTURER));
            }
        });
        luaValue.set("getStage", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.23
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return CoerceJavaToLua.coerce(RuntimeLibrary.this.gameStack.peek());
            }
        });
        luaValue.set("getStageName", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.24
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(RuntimeLibrary.this.gameStack.peek().getName());
            }
        });
        luaValue.set("pushStage", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.25
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                RuntimeLibrary.this.gameStack.push((Stage) CoerceLuaToJava.coerce(luaValue3, Stage.class));
                return LuaValue.NIL;
            }
        });
        luaValue.set("popStage", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.26
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                RuntimeLibrary.this.gameStack.pop();
                return LuaValue.NIL;
            }
        });
        final LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("package", LuaValue.tableOf());
        luaTableTableOf.get("package").set(C3522b4.i.r, LuaValue.tableOf());
        new LuajavaLibFixed().call(LuaValue.tableOf(), luaTableTableOf);
        luaValue.set("java", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.27
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ScriptingEnvironment.getInstance().assertSuperPrivileged("java");
                if (Hashing.sha(luaValue3.checkjstring() + "fsdjkjvsxvkdnscvnkjlsncdkly").equals("2a347e2683c614a109e352d07dd9a542ef68eecdd2dfcec6a2d5a71b47df53d0")) {
                    return luaTableTableOf.get("luajava");
                }
                return LuaValue.NIL;
            }
        });
        final HashSet hashSet = new HashSet();
        hashSet.add("info.flowersoft.theotown.input.KeyAction");
        hashSet.add("info.flowersoft.theotown.input.KeyActionManager");
        hashSet.add("info.flowersoft.theotown.ui.selectable.SelectableEyedropper");
        hashSet.add("io.blueflower.stapel2d.gui.GUICache");
        hashSet.add("info.flowersoft.theotown.resources.MusicBox");
        luaValue.set("javaClass", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.28
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                RuntimeLibrary.this.assertPrivileged("javaClass");
                String strCheckjstring = luaValue3.checkjstring();
                if (hashSet.contains(strCheckjstring)) {
                    return luaTableTableOf.get("luajava").get("bindClass").call(LuaValue.valueOf(strCheckjstring));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isPrivileged", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.29
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(ScriptingEnvironment.getInstance().isPrivileged());
            }
        });
        luaValue.set("precompile", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.30
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(ScriptingEnvironment.getInstance().getPrecompiler().precompile(luaValue3.checkjstring()));
            }
        });
        luaValue.set("runProtected", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.31
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                try {
                    return varargs.arg(1).invoke(varargs.subargs(3));
                } catch (Exception e) {
                    LuaFunction luaFunctionCheckfunction = varargs.arg(2).checkfunction();
                    String string = e.toString();
                    if (e instanceof LuaError) {
                        string = e.getMessage();
                        if (string.contains(":")) {
                            string = "Line:" + string.substring(string.lastIndexOf(58) + 1);
                        }
                    }
                    luaFunctionCheckfunction.call(string);
                    return LuaValue.NIL;
                }
            }
        });
        LuaTable luaTableTableOf2 = LuaValue.tableOf();
        luaTableTableOf2.insert(0, new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.32
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                String strCheckjstring = luaValue3.checkjstring();
                Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
                if (currentScript != null) {
                    String strSubstring = strCheckjstring.substring(strCheckjstring.indexOf("///") + 3);
                    ArrayList<AbstractFile> arrayList = new ArrayList();
                    arrayList.add(currentScript.getPath().getParent());
                    if (currentScript.getPath().getParent() != currentScript.getDraft().path) {
                        arrayList.add(currentScript.getDraft().path);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add("");
                    arrayList2.add(".lua");
                    arrayList2.add(".luac");
                    for (AbstractFile abstractFile : arrayList) {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            AbstractFile file = abstractFile.getFile(strSubstring.toLowerCase(Locale.ENGLISH) + ((String) it.next()));
                            if (file != null && file.isFile()) {
                                try {
                                    return globals.load(Files.readTextFile(file.read()), strSubstring);
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }
                    return LuaValue.valueOf("Library was not found");
                }
                return LuaValue.valueOf("No script context");
            }
        });
        globals.get("package").set("searchers", luaTableTableOf2);
        final LuaValue luaValue3 = globals.get("require");
        globals.set("require", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.33
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue4) {
                Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
                if (currentScript != null) {
                    return luaValue3.call(LuaValue.valueOf("" + currentScript.getPath().getParent() + "///" + luaValue4.checkjstring()));
                }
                return LuaValue.NIL;
            }
        });
        final LuaValue luaValue4 = globals.get("require");
        globals.set("require_relative", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.34
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue5, LuaValue luaValue6) {
                String strCheckjstring = luaValue5.checkjstring();
                String strCheckjstring2 = luaValue6.checkjstring();
                int iLastIndexOf = strCheckjstring2.lastIndexOf("/");
                if (iLastIndexOf >= 0) {
                    strCheckjstring = strCheckjstring2.substring(0, iLastIndexOf + 1) + strCheckjstring;
                }
                return luaValue4.call(strCheckjstring);
            }
        });
        luaValue.set("getEnvPath", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.35
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                String lowerCase;
                String str;
                if (!varargs.arg1().optjstring("").equals("35mCWu9E6U5xwPP7EyRp8mBx")) {
                    return LuaValue.NIL;
                }
                String absolutePath = "unset";
                if (Gdx.app.getType() == Application.ApplicationType.Android) {
                    lowerCase = "" + Gdx.app.getVersion();
                    str = "android";
                } else if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                    lowerCase = "" + Gdx.app.getVersion();
                    str = "ios";
                } else {
                    lowerCase = System.getProperty("os.name").toLowerCase(Locale.ENGLISH);
                    str = "linux";
                    if (!lowerCase.startsWith("linux")) {
                        if (lowerCase.startsWith("mac os")) {
                            str = "macos";
                        } else {
                            str = "windows";
                            if (!lowerCase.startsWith("windows")) {
                                str = lowerCase;
                            }
                        }
                    }
                    try {
                        absolutePath = new File(RuntimeLibrary.class.getProtectionDomain().getCodeSource().getLocation().toURI()).getAbsolutePath();
                    } catch (URISyntaxException e) {
                        e.printStackTrace();
                    }
                }
                return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(absolutePath), LuaValue.valueOf(str), LuaValue.valueOf(lowerCase)});
            }
        });
        luaValue.set("getStackTrace", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.36
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(Arrays.toString(new Throwable().getStackTrace()));
            }
        });
        luaValue.set("throw", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.37
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue5) {
                throw new RuntimeException(luaValue5.optjstring(null));
            }
        });
        luaValue.set("md5", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.38
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue5) {
                return LuaValue.valueOf(Hashing.md5(luaValue5.checkjstring()));
            }
        });
        luaValue.set("sha256", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.39
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue5) {
                return LuaValue.valueOf(Hashing.sha(luaValue5.checkjstring()));
            }
        });
        luaValue.set("getToken", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.40
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                String token = TheoTown.runtimeFeatures.getToken();
                return token != null ? LuaValue.valueOf(token) : LuaValue.NIL;
            }
        });
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16, reason: invalid class name */
    public class AnonymousClass16 extends TwoArgFunction {
        public AnonymousClass16() {
        }

        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, final LuaValue luaValue2) {
            RuntimeLibrary.this.assertPrivileged("openURL");
            final Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
            final String strCheckjstring = luaValue.checkjstring();
            if (RuntimeLibrary.this.gui == null || currentScript == null) {
                return LuaValue.NIL;
            }
            if (!ScriptingEnvironment.getInstance().isSuperPrivileged()) {
                TranslationManager translator = RuntimeLibrary.this.context.getTranslator();
                final Dialog dialog = new Dialog(Resources.PEOPLE_OFFICER, translator.translate(1091), StringFormatter.format(translator.translate(1290), RuntimeLibrary.this.getPluginName(currentScript)) + "\n" + strCheckjstring, RuntimeLibrary.this.gui);
                dialog.addCancelButton(Resources.ICON_CANCEL, translator.translate(1477));
                dialog.addButton(Resources.ICON_OK, translator.translate(2295), new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RuntimeLibrary.AnonymousClass16.m2191$r8$lambda$UadznhDF_1o1GLncsuLD7O0us(dialog, strCheckjstring, luaValue2, currentScript);
                    }
                }).setGolden(true);
                dialog.distributeButtons();
                dialog.setVisible(true);
                return LuaValue.NIL;
            }
            TheoTown.runtimeFeatures.openURLInApp(strCheckjstring);
            if (luaValue2.isfunction()) {
                ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        luaValue2.call();
                    }
                }, currentScript);
            }
            return LuaValue.NIL;
        }

        /* JADX INFO: renamed from: $r8$lambda$UadznhDF-_1o-1GLncsuLD7O0us, reason: not valid java name */
        public static /* synthetic */ void m2191$r8$lambda$UadznhDF_1o1GLncsuLD7O0us(Dialog dialog, String str, final LuaValue luaValue, Script script) {
            dialog.setVisible(false);
            TheoTown.runtimeFeatures.openURLInApp(str);
            if (luaValue.isfunction()) {
                ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        luaValue.call();
                    }
                }, script);
            }
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$41, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass41 {
        public static final /* synthetic */ int[] $SwitchMap$com$badlogic$gdx$Application$ApplicationType;

        static {
            int[] iArr = new int[Application.ApplicationType.values().length];
            $SwitchMap$com$badlogic$gdx$Application$ApplicationType = iArr;
            try {
                iArr[Application.ApplicationType.Android.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Application$ApplicationType[Application.ApplicationType.iOS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Application$ApplicationType[Application.ApplicationType.Desktop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static AbstractFile readPath(LuaValue luaValue) {
        String lowerCase = luaValue.checkjstring().toLowerCase(Locale.ENGLISH);
        Draft draft = ScriptingEnvironment.getInstance().getCurrentScript().getDraft();
        AbstractFile file = draft.path.getFile(lowerCase);
        if (file == null || !file.isFile()) {
            file = ScriptingEnvironment.getInstance().getCurrentScript().getPath().getParent().getFile(lowerCase);
        }
        if ((file == null || !file.isFile()) && draft.plugin && draft.protectedPlugin) {
            AbstractFile abstractFile = draft.parentFile;
            if (abstractFile instanceof RealFile) {
                File parentFile = ((RealFile) abstractFile).getRealFile().getParentFile();
                File theoTownDir = Resources.getTheoTownDir();
                return RealFile.createDirectory(parentFile, RealFile.parse(theoTownDir, theoTownDir.getName(), false)).getFile(lowerCase);
            }
        }
        return file;
    }

    public static class LuajavaLibFixed extends LuajavaLib {
        @Override // vm2.lib.jse.LuajavaLib
        public Class classForName(String str) throws ClassNotFoundException {
            return Class.forName(str, true, Thread.currentThread().getContextClassLoader());
        }
    }

    public final String getPluginName(Script script) {
        ManagedPluginFile managedPluginFile;
        Draft draft = script.getDraft();
        if (draft == null) {
            return script.getParent().toString();
        }
        DraftLocalizer draftLocalizer = new DraftLocalizer(this.context, "");
        if (draft.pluginId > 0 && (managedPluginFile = ManagedPluginsController.getInstance().getManagedPluginFile(draft.pluginId)) != null) {
            return draftLocalizer.localizePacked(managedPluginFile.getTranslatedTitle());
        }
        LocalPluginManifest localPluginManifest = draft.manifest;
        if (localPluginManifest != null) {
            return draftLocalizer.localizePacked(localPluginManifest.getTitle());
        }
        AbstractFile abstractFile = draft.parentFile;
        if (abstractFile != null) {
            return abstractFile.toString();
        }
        return draft.id;
    }
}
