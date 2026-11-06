package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.SoundDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.ExperimentManager;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.ConsoleStage;
import info.flowersoft.theotown.stages.LoadWaitingStage;
import info.flowersoft.theotown.stages.commandhandler.LuaHandler;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import vm2.Globals;
import vm2.LuaFunction;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.JavaClass;

/* JADX INFO: loaded from: classes4.dex */
public class TheoTownLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final Stapel2DGameContext context;
    public final GameStack gameStack;
    public final DraftLocalizer localizer;
    public AbstractFile rootTheoTownDir;

    public TheoTownLibrary(Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        super("libs/TheoTown.lua");
        this.rootTheoTownDir = null;
        this.context = stapel2DGameContext;
        this.gameStack = gameStack;
        this.localizer = new DraftLocalizer(stapel2DGameContext, "");
    }

    public final void loadCity(File file) {
        if (file.exists() && file.isFile() && file.canRead()) {
            final CityKeeper cityKeeper = new CityKeeper(file, this.context.getTranslator());
            this.gameStack.push(new LoadWaitingStage(this.context, new Thread() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    cityKeeper.load();
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    TheoTownLibrary.$r8$lambda$9Ire2y4Is6XadaDiamcJv76VEkA(this.f$0, cityKeeper);
                }
            }, cityKeeper));
        }
    }

    public static /* synthetic */ void $r8$lambda$9Ire2y4Is6XadaDiamcJv76VEkA(TheoTownLibrary theoTownLibrary, CityKeeper cityKeeper) {
        theoTownLibrary.getClass();
        if (cityKeeper.getCity() != null) {
            theoTownLibrary.gameStack.pop();
            theoTownLibrary.gameStack.push(new CityStage(theoTownLibrary.context, cityKeeper, null, null, null, null));
        }
    }

    public final void loadExternalCity(AbstractFile abstractFile, boolean z, String str, boolean z2) {
        File oldMapSaveDir;
        if (abstractFile == null || !abstractFile.isFile()) {
            return;
        }
        if (z) {
            oldMapSaveDir = Resources.getLocalMapSaveDir();
        } else {
            oldMapSaveDir = Resources.getOldMapSaveDir();
        }
        if (oldMapSaveDir.exists() || oldMapSaveDir.mkdirs()) {
            if (str == null || str.isEmpty()) {
                str = abstractFile.getName();
            }
            File file = new File(oldMapSaveDir, str);
            if (!file.exists() || z2) {
                try {
                    Files.copyFile(abstractFile.read(), file);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (file.exists()) {
                loadCity(new File(file.getPath()));
            }
        }
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue2.set("_loadCity", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.2
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                String strOptjstring = varargs.arg(1).optjstring("");
                boolean zOptboolean = varargs.arg(2).optboolean(false);
                boolean zOptboolean2 = varargs.arg(3).optboolean(false);
                String strReplace = varargs.arg(4).optjstring("").replace("..", "");
                if (strReplace.isEmpty()) {
                    strReplace = null;
                }
                AbstractFile abstractFileFindExternalCity = CityLibrary.findExternalCity(strOptjstring, ScriptingEnvironment.getInstance().getCurrentScript());
                if (abstractFileFindExternalCity == null || !abstractFileFindExternalCity.isFile()) {
                    File fileFindInternalCity = CityLibrary.findInternalCity(strOptjstring, TheoTownLibrary.this.context);
                    if (fileFindInternalCity.exists() && Resources.isInTheoTownDir(fileFindInternalCity)) {
                        TheoTownLibrary.this.loadCity(fileFindInternalCity);
                    }
                } else {
                    TheoTownLibrary.this.loadExternalCity(abstractFileFindExternalCity, zOptboolean2, strReplace, zOptboolean);
                }
                return LuaValue.NIL;
            }
        });
        luaValue2.set("_execute", new AnonymousClass3());
        luaValue.set("getGlobalFunVar", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.4
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                return LuaValue.valueOf(GlobalTransitionVariables.getInstance().get(luaValue3.checkjstring(), luaValue4.optlong(0L)));
            }
        });
        luaValue.set("setGlobalFunVar", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.5
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                GlobalTransitionVariables.getInstance().set(luaValue3.checkjstring(), luaValue4.checklong());
                return LuaValue.NIL;
            }
        });
        luaValue.set("getDiamonds", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.6
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(GameHandler.getInstance().getDiamonds());
            }
        });
        luaValue.set("spendDiamonds", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.7
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int i = luaValue3.toint();
                boolean zOptboolean = luaValue4.optboolean(false);
                if (!TheoTown.PREMIUM) {
                    String currentSource = ScriptingEnvironment.getInstance().getCurrentSource();
                    if (i >= 0 && ((i < 10000 && i <= GameHandler.getInstance().getDiamonds()) || ScriptingEnvironment.getInstance().isPrivileged())) {
                        GameHandler.getInstance().spendDiamonds(i, currentSource);
                        return LuaValue.valueOf(true);
                    }
                    if (i < 0 && ScriptingEnvironment.getInstance().isSuperPrivileged()) {
                        GameHandler.getInstance().earnDiamonds(-i, zOptboolean, currentSource);
                        return LuaValue.valueOf(true);
                    }
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("getRegionCoins", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.8
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(GameHandler.getInstance().getRegionCoins());
            }
        });
        luaValue.set("spendRegionCoins", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.9
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                int iCheckint = luaValue3.checkint();
                if (iCheckint > 0 && GameHandler.getInstance().getRegionCoins() >= iCheckint) {
                    TheoTownLibrary.this.assertPrivileged("spendRegionCoins");
                    GameHandler.getInstance().spendRegionCoins(iCheckint);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("earnRegionCoins", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.10
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                int iCheckint = luaValue3.checkint();
                if (iCheckint > 0) {
                    ScriptingEnvironment.getInstance().assertSuperPrivileged("earnRegionCoins");
                    GameHandler.getInstance().earnRegionCoins(iCheckint);
                    SuccessOverlay.getInstance().addEvent(3, iCheckint);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getStorage", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.11
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return GlobalTransitionVariables.getInstance().getLuaStorage();
            }
        });
        luaValue.set("getFileStorage", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.12
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return GlobalTransitionVariables.getInstance().getLuaFileStorage();
            }
        });
        luaValue.set("registerCommand", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.13
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                if (luaValue3.isstring()) {
                    LuaHandler.registerLuaCommand(luaValue3.checkjstring(), luaValue4.checkfunction(), ScriptingEnvironment.getInstance().getCurrentScript());
                } else if (luaValue3.isfunction()) {
                    LuaHandler.registerLuaCommand(luaValue3.checkfunction(), luaValue4.checkfunction(), ScriptingEnvironment.getInstance().getCurrentScript());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getExperiment", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.14
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(ExperimentManager.getInstance().getValue(luaValue3.checkjstring()));
            }
        });
        luaValue.set("setExperiment", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.15
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                ExperimentManager.getInstance().setValue(luaValue3.checkjstring(), luaValue4.checkint());
                return LuaValue.NIL;
            }
        });
        luaValue.set("translate", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.16
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                String strCheckjstring = luaValue3.checkjstring();
                return LuaValue.valueOf(TheoTownLibrary.this.localizer.localizeKey(strCheckjstring, "<" + strCheckjstring + ">"));
            }
        });
        luaValue.set("translateInline", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.17
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(TheoTownLibrary.this.localizer.localizePacked(luaValue3.checkjstring()));
            }
        });
        luaValue.set("formatMoney", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.18
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                return LuaValue.valueOf(Localizer.localizeMoney(luaValue3.checkdouble(), luaValue4.optboolean(false)));
            }
        });
        luaValue.set("formatNumber", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.19
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                String strLocalizeSmallNumber;
                double dCheckdouble = luaValue3.checkdouble();
                boolean zOptboolean = luaValue4.optboolean(false);
                if (luaValue5.optboolean(true)) {
                    strLocalizeSmallNumber = Localizer.localizeBigNumber(dCheckdouble, zOptboolean);
                } else {
                    strLocalizeSmallNumber = Localizer.localizeSmallNumber(dCheckdouble, zOptboolean);
                }
                return LuaValue.valueOf(strLocalizeSmallNumber);
            }
        });
        luaValue.set("playSound", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.20
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                final SoundPlayer.SoundStream soundStreamPlay;
                float fOptdouble = (float) luaValue4.optdouble(1.0d);
                boolean zOptboolean = luaValue5.optboolean(false);
                if (luaValue3.isint()) {
                    soundStreamPlay = SoundPlayer.getInstance().play(luaValue3.checkint(), SoundType.PLUGIN, fOptdouble, fOptdouble, zOptboolean, 1.0f);
                } else {
                    SoundDraft soundDraft = (SoundDraft) DraftLibrary.resolveDraft(luaValue3, SoundDraft.class);
                    if (soundDraft != null) {
                        SoundPlayer soundPlayer = SoundPlayer.getInstance();
                        int i = soundDraft.sound;
                        SoundType soundType = SoundType.PLUGIN;
                        float f = soundDraft.volume;
                        soundStreamPlay = soundPlayer.play(i, soundType, fOptdouble * f, fOptdouble * f, zOptboolean, 1.0f);
                    } else {
                        soundStreamPlay = null;
                    }
                }
                if (soundStreamPlay != null) {
                    LuaTable luaTableTableOf = LuaValue.tableOf();
                    luaTableTableOf.set("stop", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.20.1
                        @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                        public LuaValue call() {
                            soundStreamPlay.stop();
                            return LuaValue.NIL;
                        }
                    });
                    luaTableTableOf.set("setVolume", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.20.2
                        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                        public LuaValue call(LuaValue luaValue6, LuaValue luaValue7) {
                            float fCheckdouble = (float) luaValue6.checkdouble();
                            soundStreamPlay.setVolume(fCheckdouble, (float) luaValue7.optdouble(fCheckdouble));
                            return LuaValue.NIL;
                        }
                    });
                    luaTableTableOf.set("setRate", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.20.3
                        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                        public LuaValue call(LuaValue luaValue6) {
                            soundStreamPlay.setRate((float) luaValue6.checkdouble());
                            return LuaValue.NIL;
                        }
                    });
                    return luaTableTableOf;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getId", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.21
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTown.analytics.getNumId());
            }
        });
        luaValue.set("getConfig", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.22
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                try {
                    return LuaTableSerializer.deserialize(Resources.getSpecificConfig(luaValue3.checkjstring()));
                } catch (JSONException e) {
                    e.printStackTrace();
                    return LuaValue.tableOf();
                }
            }
        });
        luaValue.set("getPlayTime", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.23
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(Settings.playTimeSeconds);
            }
        });
        luaValue.set("getUserId", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.24
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(Backend.getInstance().getUser().isValid() ? r0.getId() : 0.0d);
            }
        });
        luaValue.set("getUserPermissions", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.25
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                User user = Backend.getInstance().getUser();
                return LuaValue.valueOf(user.isValid() ? user.getPermissions() : 0);
            }
        });
        luaValue.set("getUserAdmin", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.26
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                User user = Backend.getInstance().getUser();
                return LuaValue.valueOf(user.isValid() ? user.getAdmin() : 0);
            }
        });
        luaValue.set("getUserName", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.27
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                User user = Backend.getInstance().getUser();
                return user.isValid() ? LuaValue.valueOf(user.getName()) : LuaValue.NIL;
            }
        });
        luaValue.set("getTheoTownDir", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.28
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                TheoTownLibrary.this.assertPrivileged("dir");
                return CoerceJavaToLua.coerce(TheoTownLibrary.this.getRootTheoTownDir());
            }
        });
        luaValue.set("getPluginDir", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.29
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                TheoTownLibrary.this.assertPrivileged("getPluginDir");
                return CoerceJavaToLua.coerce(TheoTownLibrary.this.getRootTheoTownDir().getFile("plugins"));
            }
        });
        luaValue.set("isRTL", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.30
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(TheoTownLibrary.this.context.getTranslator().prefersRTL());
            }
        });
        luaValue2.set("achieve", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.31
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                ScriptingEnvironment.getInstance().assertSuperPrivileged("achieve");
                String strCheckjstring = luaValue3.checkjstring();
                if (luaValue4.isint() && luaValue5.isint()) {
                    return LuaValue.valueOf(TheoTown.gamesService.unlockAchievement(strCheckjstring, luaValue4.checkint(), luaValue5.checkint()));
                }
                return LuaValue.valueOf(TheoTown.gamesService.unlockAchievement(strCheckjstring));
            }
        });
        luaValue2.set("getInstalledStorePlugins", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.32
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                TheoTownLibrary.this.assertPrivileged("getInstalledStorePlugins");
                ArrayLibrary arrayLibrary = (ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class);
                ArrayList arrayList = new ArrayList();
                ManagedPluginsController managedPluginsController = ManagedPluginsController.getInstance();
                List<ManagedPluginFile> downloadedPlugins = managedPluginsController.getDownloadedPlugins();
                for (int i = 0; i < downloadedPlugins.size(); i++) {
                    ManagedPluginFile managedPluginFile = downloadedPlugins.get(i);
                    if (managedPluginsController.isLoaded(managedPluginFile.getPluginId()) && !managedPluginsController.isInternalPlugin(managedPluginFile.getPluginId())) {
                        arrayList.add(new LightManagedPluginInfo(managedPluginFile).toLuaTable());
                    }
                }
                return arrayLibrary.createArray(arrayList);
            }
        });
        luaValue2.set("showSuccessOverlay", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.33
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                SuccessOverlay.getInstance().addEvent(luaValue3.optint(0), luaValue4.optdouble(0.0d));
                return LuaValue.NIL;
            }
        });
        luaValue.set("RESOURCES", JavaClass.forClass(Resources.class));
        luaValue.set("SETTINGS", JavaClass.forClass(Settings.class));
        luaValue.set("CONSTANTS", JavaClass.forClass(Constants.class));
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$3, reason: invalid class name */
    public class AnonymousClass3 extends TwoArgFunction {
        public AnonymousClass3() {
        }

        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            String strCheckjstring = luaValue.checkjstring();
            final LuaFunction luaFunctionCheckfunction = luaValue2.checkfunction();
            new ConsoleStage(TheoTownLibrary.this.context, null, null, false).process(strCheckjstring, new Setter() { // from class: info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$3$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    luaFunctionCheckfunction.call(LuaValue.valueOf((String) obj));
                }
            });
            return LuaValue.NIL;
        }
    }

    public final AbstractFile getRootTheoTownDir() {
        if (this.rootTheoTownDir == null) {
            this.rootTheoTownDir = RealFile.parse(Resources.getTheoTownDir(), "game", false);
        }
        return this.rootTheoTownDir;
    }
}
