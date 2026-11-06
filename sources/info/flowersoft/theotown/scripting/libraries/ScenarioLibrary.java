package info.flowersoft.theotown.scripting.libraries;

import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.ScenarioInfo;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultStatistics;
import info.flowersoft.theotown.components.notification.DefaultNotificator;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.scripting.LuahelpersKt;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.scripting.libraries.ScenarioLibrary;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import vm2.Globals;
import vm2.LuaBoolean;
import vm2.LuaInteger;
import vm2.LuaString;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.lib.OneArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.ZeroArgFunction;

/* JADX INFO: compiled from: ScenarioLibrary.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final City city;
    public final Stapel2DGameContext context;

    /* JADX INFO: compiled from: ScenarioLibrary.kt */
    public static final /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<GameMode> entries$0 = EnumEntriesKt.enumEntries(GameMode.values());
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue lib, LuaValue privateLib, Globals globals) {
        Intrinsics.checkNotNullParameter(lib, "lib");
        Intrinsics.checkNotNullParameter(privateLib, "privateLib");
        Intrinsics.checkNotNullParameter(globals, "globals");
        lib.set("isScenario", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$1
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                LuaBoolean lua = LuahelpersKt.toLua(this.this$0.getInfo() != null);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("setScenario", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$2
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setScenario");
                this.this$0.setInfo(arg.optboolean(true) ? new ScenarioInfo() : null);
                this.this$0.updateCityStorage();
                LuaBoolean lua = LuahelpersKt.toLua(this.this$0.getInfo() != null);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("showWelcomeWindow", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$3
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                this.this$0.assertPrivileged("showWelcomeWindow");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                ScenarioInfoDialog.Companion companion = ScenarioInfoDialog.Companion;
                Stapel2DGameContext stapel2DGameContext = this.this$0.context;
                Master master = this.this$0.getGuiLib().getMaster();
                Intrinsics.checkNotNullExpressionValue(master, "getMaster(...)");
                companion.forInfo(stapel2DGameContext, info2, master, new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$3$1
                    @Override // java.lang.Runnable
                    public final void run() {
                    }
                }).setVisible(true);
                return LuaValue.NIL;
            }
        });
        lib.set("getId", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$4
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                String id;
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaString lua = (info2 == null || (id = info2.getId()) == null) ? null : LuahelpersKt.toLua(id);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        lib.set("getTitle", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$5
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                String title;
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaString lua = (info2 == null || (title = info2.getTitle()) == null) ? null : LuahelpersKt.toLua(title);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        lib.set("getText", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$6
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                String text;
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaString lua = (info2 == null || (text = info2.getText()) == null) ? null : LuahelpersKt.toLua(text);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        lib.set("getAuthor", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$7
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                String author;
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaString lua = (info2 == null || (author = info2.getAuthor()) == null) ? null : LuahelpersKt.toLua(author);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        lib.set("getMinVersion", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$8
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaInteger lua = info2 != null ? LuahelpersKt.toLua(info2.getMinVersion()) : null;
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("setId", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$9
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setId");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                String strCheckjstring = arg.checkjstring();
                Intrinsics.checkNotNullExpressionValue(strCheckjstring, "checkjstring(...)");
                info2.setId(strCheckjstring);
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("setTitle", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$10
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setTitle");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                String strCheckjstring = arg.checkjstring();
                Intrinsics.checkNotNullExpressionValue(strCheckjstring, "checkjstring(...)");
                info2.setTitle(strCheckjstring);
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("setText", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$11
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setText");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                String strCheckjstring = arg.checkjstring();
                Intrinsics.checkNotNullExpressionValue(strCheckjstring, "checkjstring(...)");
                info2.setText(strCheckjstring);
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("setAuthor", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$12
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setAuthor");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                String strCheckjstring = arg.checkjstring();
                Intrinsics.checkNotNullExpressionValue(strCheckjstring, "checkjstring(...)");
                info2.setAuthor(strCheckjstring);
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("setMinVersion", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$13
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setMinVersion");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                info2.setMinVersion(arg.optint(0));
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        lib.set("getPluginsType", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$14
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaInteger lua = info2 != null ? LuahelpersKt.toLua(info2.getAllowPluginsType()) : null;
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("setPluginsType", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$15
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setPluginsType");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                info2.setAllowPluginsType(arg.checkint());
                return LuaValue.NIL;
            }
        });
        privateLib.set("getDisabledDrafts", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$16
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                this.this$0.assertPrivileged("getDisabledDrafts");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 != null) {
                    ArrayLibrary arrayLib = this.this$0.getArrayLib();
                    Set<String> disabledDraftIds = info2.getDisabledDraftIds();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(disabledDraftIds, 10));
                    Iterator<T> it = disabledDraftIds.iterator();
                    while (it.hasNext()) {
                        arrayList.add(LuahelpersKt.toLua((String) it.next()));
                    }
                    LuaTable luaTableCreateArray = arrayLib.createArray(arrayList);
                    return luaTableCreateArray == null ? LuaValue.NIL : luaTableCreateArray;
                }
                throw new IllegalArgumentException("No active scenario");
            }
        });
        privateLib.set("setDisabledDrafts", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$17
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                String strCheckjstring;
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setDisabledDrafts");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                LuaTable luaTableChecktable = arg.checktable();
                info2.getDisabledDraftIds().clear();
                int length = luaTableChecktable.length();
                int i = 1;
                if (1 <= length) {
                    while (true) {
                        LuaValue luaValue = luaTableChecktable.get(i);
                        if (luaValue.isstring()) {
                            strCheckjstring = luaValue.checkjstring();
                        } else {
                            Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue, Draft.class);
                            Intrinsics.checkNotNull(draftResolveDraft);
                            strCheckjstring = draftResolveDraft.id;
                        }
                        Set<String> disabledDraftIds = info2.getDisabledDraftIds();
                        Intrinsics.checkNotNull(strCheckjstring);
                        disabledDraftIds.add(strCheckjstring);
                        if (i == length) {
                            break;
                        }
                        i++;
                    }
                }
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("addDisabledDraft", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$18
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("addDisabledDraft");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                Draft draftResolveDraft = DraftLibrary.resolveDraft(arg, Draft.class);
                if (draftResolveDraft == null) {
                    throw new IllegalStateException("Invalid draft");
                }
                Set<String> disabledDraftIds = info2.getDisabledDraftIds();
                String id = draftResolveDraft.id;
                Intrinsics.checkNotNullExpressionValue(id, "id");
                boolean zAdd = disabledDraftIds.add(id);
                this.this$0.updateCityStorage();
                LuaBoolean lua = LuahelpersKt.toLua(zAdd);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("removeDisabledDraft", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$19
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("removeDisabledDraft");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                Draft draftResolveDraft = DraftLibrary.resolveDraft(arg, Draft.class);
                if (draftResolveDraft == null) {
                    throw new IllegalStateException("Invalid draft");
                }
                boolean zRemove = info2.getDisabledDraftIds().remove(draftResolveDraft.id);
                this.this$0.updateCityStorage();
                LuaBoolean lua = LuahelpersKt.toLua(zRemove);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("getWhitelistedDrafts", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$20
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                this.this$0.assertPrivileged("getWhitelistedDrafts");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 != null) {
                    ArrayLibrary arrayLib = this.this$0.getArrayLib();
                    Set<String> whitelistedDraftIds = info2.getWhitelistedDraftIds();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(whitelistedDraftIds, 10));
                    Iterator<T> it = whitelistedDraftIds.iterator();
                    while (it.hasNext()) {
                        arrayList.add(LuahelpersKt.toLua((String) it.next()));
                    }
                    LuaTable luaTableCreateArray = arrayLib.createArray(arrayList);
                    return luaTableCreateArray == null ? LuaValue.NIL : luaTableCreateArray;
                }
                throw new IllegalArgumentException("No active scenario");
            }
        });
        privateLib.set("setWhitelistedDrafts", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$21
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                String strCheckjstring;
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setWhitelistedDrafts");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                LuaTable luaTableChecktable = arg.checktable();
                info2.getWhitelistedDraftIds().clear();
                int length = luaTableChecktable.length();
                int i = 1;
                if (1 <= length) {
                    while (true) {
                        LuaValue luaValue = luaTableChecktable.get(i);
                        if (luaValue.isstring()) {
                            strCheckjstring = luaValue.checkjstring();
                        } else {
                            Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue, Draft.class);
                            Intrinsics.checkNotNull(draftResolveDraft);
                            strCheckjstring = draftResolveDraft.id;
                        }
                        Set<String> whitelistedDraftIds = info2.getWhitelistedDraftIds();
                        Intrinsics.checkNotNull(strCheckjstring);
                        whitelistedDraftIds.add(strCheckjstring);
                        if (i == length) {
                            break;
                        }
                        i++;
                    }
                }
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("addWhitelistedDraft", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$22
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("addWhitelistedDraft");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                Draft draftResolveDraft = DraftLibrary.resolveDraft(arg, Draft.class);
                if (draftResolveDraft == null) {
                    throw new IllegalStateException("Invalid draft");
                }
                Set<String> whitelistedDraftIds = info2.getWhitelistedDraftIds();
                String id = draftResolveDraft.id;
                Intrinsics.checkNotNullExpressionValue(id, "id");
                boolean zAdd = whitelistedDraftIds.add(id);
                this.this$0.updateCityStorage();
                LuaBoolean lua = LuahelpersKt.toLua(zAdd);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("removeWhitelistedDraft", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$23
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("removeWhitelistedDraft");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                Draft draftResolveDraft = DraftLibrary.resolveDraft(arg, Draft.class);
                if (draftResolveDraft == null) {
                    throw new IllegalStateException("Invalid draft");
                }
                boolean zRemove = info2.getWhitelistedDraftIds().remove(draftResolveDraft.id);
                this.this$0.updateCityStorage();
                LuaBoolean lua = LuahelpersKt.toLua(zRemove);
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("resetTime", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$24
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                this.this$0.assertPrivileged("resetTime");
                CityComponent component = this.this$0.city.getComponent(1);
                Intrinsics.checkNotNull(component, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultDate");
                ((DefaultDate) component).reset();
                CityComponent component2 = this.this$0.city.getComponent(17);
                Intrinsics.checkNotNull(component2, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultStatistics");
                ((DefaultStatistics) component2).reset();
                this.this$0.city.applyComponent(new DefaultNotificator(this.this$0.city));
                this.this$0.city.setLastSimulationTimestamp(0L);
                this.this$0.city.getCityInfo().creationTime = InternetTime.getInstance().getTime();
                this.this$0.city.getCityInfo().playtimeSeconds = 0L;
                this.this$0.city.setRank(this.this$0.city.getRank(), 0L);
                return LuaValue.NIL;
            }
        });
        privateLib.set("resetBudget", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$25
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                this.this$0.assertPrivileged("resetBudget");
                CityComponent component = this.this$0.city.getComponent(0);
                Intrinsics.checkNotNull(component, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultBudget");
                ((DefaultBudget) component).setEstate(this.this$0.city.getGameMode().getMoneyAtStart());
                return LuaValue.NIL;
            }
        });
        lib.set("getGameMode", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$26
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                LuaInteger lua = LuahelpersKt.toLua(this.this$0.city.getGameMode().ordinal());
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("setGameMode", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$27
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setGameMode");
                this.this$0.city.setGameMode(ScenarioLibrary.EntriesMappings.entries$0.get(arg.checkint()));
                if (!this.this$0.city.getGameMode().hasInfinityMoney()) {
                    this.this$0.city.setUber(false);
                }
                return LuaValue.NIL;
            }
        });
        privateLib.set("setUber", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$28
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setUber");
                this.this$0.city.setUber(arg.checkboolean());
                return LuaValue.NIL;
            }
        });
        lib.set("isAllowBuyMoney", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$29
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaBoolean lua = info2 != null ? LuahelpersKt.toLua(info2.getAllowBuyMoney()) : null;
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        lib.set("isAllowLoans", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$30
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaBoolean lua = info2 != null ? LuahelpersKt.toLua(info2.getAllowLoans()) : null;
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        lib.set("grantAchievements", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$31
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScenarioInfo info2 = this.this$0.getInfo();
                LuaBoolean lua = info2 != null ? LuahelpersKt.toLua(info2.getGrantAchievements()) : null;
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        privateLib.set("setAllowBuyMoney", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$32
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setAllowBuyMoney");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                info2.setAllowBuyMoney(arg.checkboolean());
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("setAllowLoans", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$33
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setAllowLoans");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                info2.setAllowLoans(arg.checkboolean());
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("setGrantAchievements", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$34
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setGrantAchievements");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                info2.setGrantAchievements(arg.checkboolean());
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        privateLib.set("updateDrafts", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$35
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                this.this$0.assertPrivileged("updateDrafts");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                ScenarioLibraryKt.applyToDrafts(info2);
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        lib.set("getRequiredPlugins", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$36
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 != null) {
                    ArrayLibrary arrayLib = this.this$0.getArrayLib();
                    List<LightManagedPluginInfo> requiredStorePlugins = info2.getRequiredStorePlugins();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(requiredStorePlugins, 10));
                    Iterator<T> it = requiredStorePlugins.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((LightManagedPluginInfo) it.next()).toLuaTable());
                    }
                    LuaTable luaTableCreateArray = arrayLib.createArray(arrayList);
                    return luaTableCreateArray == null ? LuaValue.NIL : luaTableCreateArray;
                }
                throw new IllegalArgumentException("No active scenario");
            }
        });
        privateLib.set("setRequiredPluginIds", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$37
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                LightManagedPluginInfo lightManagedPluginInfo;
                Intrinsics.checkNotNullParameter(arg, "arg");
                this.this$0.assertPrivileged("setRequiredPluginIds");
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 == null) {
                    throw new IllegalArgumentException("No active scenario");
                }
                LuaTable luaTableChecktable = arg.checktable();
                ManagedPluginsController managedPluginsController = ManagedPluginsController.getInstance();
                List<LightManagedPluginInfo> requiredStorePlugins = info2.getRequiredStorePlugins();
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(requiredStorePlugins, 10)), 16));
                for (Object obj : requiredStorePlugins) {
                    linkedHashMap.put(Integer.valueOf(((LightManagedPluginInfo) obj).getId()), obj);
                }
                info2.getRequiredStorePlugins().clear();
                int length = luaTableChecktable.length();
                int i = 1;
                if (1 <= length) {
                    while (true) {
                        int iCheckint = luaTableChecktable.get(i).checkint();
                        ManagedPluginFile managedPluginFile = managedPluginsController.getManagedPluginFile(iCheckint);
                        if (managedPluginFile != null) {
                            lightManagedPluginInfo = new LightManagedPluginInfo(managedPluginFile);
                        } else {
                            LightManagedPluginInfo lightManagedPluginInfo2 = (LightManagedPluginInfo) linkedHashMap.get(Integer.valueOf(iCheckint));
                            if (lightManagedPluginInfo2 == null) {
                                throw new IllegalStateException(("Could not resolve plugin of id " + iCheckint).toString());
                            }
                            lightManagedPluginInfo = lightManagedPluginInfo2;
                        }
                        info2.getRequiredStorePlugins().add(lightManagedPluginInfo);
                        if (i == length) {
                            break;
                        }
                        i++;
                    }
                }
                this.this$0.updateCityStorage();
                return LuaValue.NIL;
            }
        });
        lib.set("getWhitelistedPlugins", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$38
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScenarioInfo info2 = this.this$0.getInfo();
                if (info2 != null) {
                    ArrayLibrary arrayLib = this.this$0.getArrayLib();
                    List<LightManagedPluginInfo> whitelistedStorePlugins = info2.getWhitelistedStorePlugins();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(whitelistedStorePlugins, 10));
                    Iterator<T> it = whitelistedStorePlugins.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((LightManagedPluginInfo) it.next()).toLuaTable());
                    }
                    LuaTable luaTableCreateArray = arrayLib.createArray(arrayList);
                    return luaTableCreateArray == null ? LuaValue.NIL : luaTableCreateArray;
                }
                throw new IllegalArgumentException("No active scenario");
            }
        });
        privateLib.set("setWhitelistedPluginIds", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$39
            /* JADX WARN: Removed duplicated region for block: B:34:0x0128 A[LOOP:2: B:15:0x008f->B:34:0x0128, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:41:0x012f A[EDGE_INSN: B:41:0x012f->B:35:0x012f BREAK  A[LOOP:2: B:15:0x008f->B:34:0x0128], SYNTHETIC] */
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public vm2.LuaValue call(vm2.LuaValue r19, vm2.LuaValue r20) {
                /*
                    Method dump skipped, instruction units count: 319
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$39.call(vm2.LuaValue, vm2.LuaValue):vm2.LuaValue");
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScenarioLibrary(City city, Stapel2DGameContext context) {
        super("libs/Scenario.lua");
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(context, "context");
        this.city = city;
        this.context = context;
    }

    public final ScenarioInfo getInfo() {
        return this.city.getScenarioInfo();
    }

    public final void setInfo(ScenarioInfo scenarioInfo) {
        this.city.setScenarioInfo(scenarioInfo);
    }

    public final ArrayLibrary getArrayLib() {
        return (ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class);
    }

    public final GUILibrary getGuiLib() {
        return (GUILibrary) ScriptingEnvironment.getInstance().getLibrary(GUILibrary.class);
    }

    public final void updateCityStorage() {
        LuaValue luaValueTableOf;
        LuaTable rawLuaStorage = this.city.getRawLuaStorage();
        ScenarioInfo info2 = getInfo();
        if (info2 != null) {
            luaValueTableOf = LuaValue.tableOf();
            luaValueTableOf.set(C3670j8.x, info2.getId());
            luaValueTableOf.set(C3522b4.i.D0, info2.getTitle());
            luaValueTableOf.set(C3522b4.i.K0, info2.getText());
            luaValueTableOf.set("author", info2.getAuthor());
            luaValueTableOf.set("min version", info2.getMinVersion());
            luaValueTableOf.set("time", LuahelpersKt.toLua((int) (TimeUtils.millis() / 1000)));
        } else {
            luaValueTableOf = LuaValue.NIL;
        }
        rawLuaStorage.set("45f674fe-dd47-4484-a9c1-03789d8168e0", luaValueTableOf);
    }
}
