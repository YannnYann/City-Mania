package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.ViewportDraft;
import info.flowersoft.theotown.draftloader.ContentLoader;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import vm2.Globals;
import vm2.LuaError;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: loaded from: classes4.dex */
public class DraftLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final DraftLocalizer localizer;

    public DraftLibrary(Stapel2DGameContext stapel2DGameContext) {
        super("libs/Draft.lua");
        this.localizer = new DraftLocalizer(stapel2DGameContext, "");
    }

    public void setCityName(String str) {
        this.localizer.setCityName(str);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.set("getDraft", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.1
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                if (draftResolveDraft != null) {
                    return draftResolveDraft.luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getDrafts", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.2
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Collection<Draft> collectionValues;
                if (luaValue3.isstring()) {
                    collectionValues = Drafts.getDraftsWithTag(luaValue3.checkjstring(), Draft.class);
                } else {
                    collectionValues = Drafts.ALL.values();
                }
                ArrayList arrayList = new ArrayList(collectionValues.size());
                for (Draft draft : collectionValues) {
                    LuaValue luaValue4 = draft.luaRepr;
                    if (luaValue4 != null && draft.index) {
                        arrayList.add(luaValue4);
                    }
                }
                return ((ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class)).createArray(arrayList);
            }
        });
        luaValue.set("getAllDrafts", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.3
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Collection<Draft> collectionValues;
                ScriptingEnvironment.getInstance().assertSuperPrivileged("all drafts");
                if (luaValue3.isstring()) {
                    collectionValues = Drafts.getDraftsWithTag(luaValue3.checkjstring(), Draft.class);
                } else {
                    collectionValues = Drafts.ALL.values();
                }
                ArrayList arrayList = new ArrayList(collectionValues.size());
                Iterator<Draft> it = collectionValues.iterator();
                while (it.hasNext()) {
                    LuaValue luaValue4 = it.next().luaRepr;
                    if (luaValue4 != null) {
                        arrayList.add(luaValue4);
                    }
                }
                return ((ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class)).createArray(arrayList);
            }
        });
        luaValue.set("getTitle", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.4
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(DraftLibrary.this.localizer.getTitle(DraftLibrary.resolveDraft(luaValue3, Draft.class)));
            }
        });
        luaValue.set("getText", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.5
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(DraftLibrary.this.localizer.getText(DraftLibrary.resolveDraft(luaValue3, Draft.class)));
            }
        });
        luaValue.set("getFrameCount", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.6
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ViewportDraft viewportDraft = (ViewportDraft) DraftLibrary.resolveDraft(luaValue3, ViewportDraft.class);
                if (viewportDraft != null) {
                    int[] iArr = viewportDraft.frames;
                    if (iArr.length != 0) {
                        return LuaValue.valueOf(iArr.length);
                    }
                }
                return LuaValue.ZERO;
            }
        });
        luaValue.set("getFrame", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.7
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                ViewportDraft viewportDraft = (ViewportDraft) DraftLibrary.resolveDraft(luaValue3, ViewportDraft.class);
                if (viewportDraft == null || viewportDraft.frames.length == 0) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(viewportDraft.frames[Math.min(Math.max(luaValue4.optint(1) - 1, 0), viewportDraft.frames.length - 1)]);
            }
        });
        luaValue.set("setFrame", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.8
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                ViewportDraft viewportDraft = (ViewportDraft) DraftLibrary.resolveDraft(luaValue3, ViewportDraft.class);
                if (viewportDraft == null || viewportDraft.frames.length == 0) {
                    return LuaValue.NIL;
                }
                viewportDraft.frames[Math.min(Math.max(luaValue4.optint(1) - 1, 0), viewportDraft.frames.length - 1)] = luaValue5.optint(0);
                return LuaValue.NIL;
            }
        });
        luaValue.set("getOverlayFrameCount", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.9
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                int[] iArr;
                CarDraft carDraft = (CarDraft) DraftLibrary.resolveDraft(luaValue3, CarDraft.class);
                if (carDraft == null || (iArr = carDraft.overlayFrames) == null || iArr.length == 0) {
                    return LuaValue.ZERO;
                }
                return LuaValue.valueOf(iArr.length);
            }
        });
        luaValue.set("getOverlayFrame", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.10
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int[] iArr;
                CarDraft carDraft = (CarDraft) DraftLibrary.resolveDraft(luaValue3, CarDraft.class);
                if (carDraft == null || (iArr = carDraft.overlayFrames) == null || iArr.length == 0) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(carDraft.overlayFrames[Math.min(Math.max(luaValue4.optint(1) - 1, 0), carDraft.overlayFrames.length - 1)]);
            }
        });
        luaValue.set("getColors", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.11
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Color[] colorArr;
                CarDraft carDraft = (CarDraft) DraftLibrary.resolveDraft(luaValue3, CarDraft.class);
                if (carDraft == null || (colorArr = carDraft.colors) == null || colorArr.length == 0) {
                    return LuaValue.NIL;
                }
                ArrayList arrayList = new ArrayList(carDraft.colors.length);
                int i = 0;
                while (true) {
                    Color[] colorArr2 = carDraft.colors;
                    if (i < colorArr2.length) {
                        arrayList.add(LuaValue.valueOf(colorArr2[i].toHexRGB()));
                        i++;
                    } else {
                        return ((ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class)).createArray(arrayList);
                    }
                }
            }
        });
        luaValue.set("getOverlayColors", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.12
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Color[] colorArr;
                CarDraft carDraft = (CarDraft) DraftLibrary.resolveDraft(luaValue3, CarDraft.class);
                if (carDraft == null || (colorArr = carDraft.overlayColors) == null || colorArr.length == 0) {
                    return LuaValue.NIL;
                }
                ArrayList arrayList = new ArrayList(carDraft.overlayColors.length);
                int i = 0;
                while (true) {
                    Color[] colorArr2 = carDraft.overlayColors;
                    if (i < colorArr2.length) {
                        arrayList.add(LuaValue.valueOf(colorArr2[i].toHexRGB()));
                        i++;
                    } else {
                        return ((ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class)).createArray(arrayList);
                    }
                }
            }
        });
        luaValue.set("getFrameType", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.13
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                ViewportDraft viewportDraft = (ViewportDraft) DraftLibrary.resolveDraft(luaValue3, ViewportDraft.class);
                if (viewportDraft == null) {
                    throw new IllegalArgumentException("Unsuited draft for getFrameType");
                }
                return LuaValue.valueOf(Resources.IMAGE_WORLD.getType(viewportDraft.frames[Math.min(Math.max(luaValue4.optint(1) - 1, 0), viewportDraft.frames.length - 1)]));
            }
        });
        luaValue.set("setFrameType", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.14
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                ViewportDraft viewportDraft = (ViewportDraft) DraftLibrary.resolveDraft(luaValue3, ViewportDraft.class);
                if (viewportDraft == null) {
                    throw new IllegalArgumentException("Unsuited draft for setFrameType");
                }
                int iMin = Math.min(Math.max(luaValue4.optint(1) - 1, 0), viewportDraft.frames.length - 1);
                int type = Resources.IMAGE_WORLD.getType(viewportDraft.frames[iMin]);
                Resources.IMAGE_WORLD.setType(viewportDraft.frames[iMin], luaValue5.checkint());
                return LuaValue.valueOf(type);
            }
        });
        luaValue.set("getPluginTitle", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.15
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                if (draftResolveDraft != null && draftResolveDraft.pluginId != 0) {
                    return LuaValue.valueOf(ManagedPluginsController.getInstance().getManagedPluginFile(draftResolveDraft.pluginId).getTitle());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getPluginText", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.16
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                if (draftResolveDraft != null && draftResolveDraft.pluginId != 0) {
                    return LuaValue.valueOf(ManagedPluginsController.getInstance().getManagedPluginFile(draftResolveDraft.pluginId).getText());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getPluginAuthor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.17
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(varargs.arg1(), Draft.class);
                if (draftResolveDraft != null && draftResolveDraft.pluginId != 0) {
                    ManagedPluginFile managedPluginFile = ManagedPluginsController.getInstance().getManagedPluginFile(draftResolveDraft.pluginId);
                    return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(managedPluginFile.getAuthor()), LuaValue.valueOf(managedPluginFile.getAuthorId())});
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getDiamondPrice", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.18
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                if (draftResolveDraft == null) {
                    return LuaValue.NIL;
                }
                if (draftResolveDraft instanceof BuildingDraft) {
                    return LuaValue.valueOf(((BuildingDraft) draftResolveDraft).diamondPrice.get());
                }
                if (draftResolveDraft instanceof UpgradeDraft) {
                    return LuaValue.valueOf(((UpgradeDraft) draftResolveDraft).diamondPrice.get());
                }
                if (draftResolveDraft instanceof FlyingObjectDraft) {
                    return LuaValue.valueOf(((FlyingObjectDraft) draftResolveDraft).diamondPrice.get());
                }
                if (draftResolveDraft instanceof FeatureDraft) {
                    return LuaValue.valueOf(((FeatureDraft) draftResolveDraft).diamondPrice.get());
                }
                return LuaValue.NIL;
            }
        });
        luaValue2.set("assertPrivileged", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.19
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                if (!ScriptingEnvironment.getInstance().isPrivileged()) {
                    throw new LuaError("Privileged context was expected");
                }
                return LuaValue.NIL;
            }
        });
        luaValue2.set("assertSuperPrivileged", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.20
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                if (!ScriptingEnvironment.getInstance().isSuperPrivileged()) {
                    throw new LuaError("Super Privileged context was expected");
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("callAll", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.21
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull(varargs.arg(1).checkjstring());
                if (methodClusterOrNull != null) {
                    methodClusterOrNull.invoke(varargs.subargs(2));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("call", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.22
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(varargs.arg(1), Draft.class);
                MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull(varargs.arg(2).checkjstring(), draftResolveDraft);
                if (methodClusterOrNull != null) {
                    methodClusterOrNull.invoke(varargs.subargs(3));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getOrig", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.23
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                DraftLibrary.this.assertPrivileged("orig");
                if (DraftLibrary.resolveDraft(luaValue3, Draft.class) != null) {
                    return luaValue3.rawget(SimpleLuaLibrary.origKey);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("append", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.24
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                OneArgFunction oneArgFunction = ContentLoader.appendFunction;
                if (oneArgFunction != null) {
                    return oneArgFunction.call(luaValue3);
                }
                throw new IllegalStateException("Cannot call append function after initialization phase");
            }
        });
        luaValue.set("merge", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.25
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                ThreeArgFunction threeArgFunction = ContentLoader.mergeFunction;
                if (threeArgFunction != null) {
                    return threeArgFunction.call(luaValue3, luaValue4, luaValue5);
                }
                throw new IllegalStateException("Cannot call merge function after initialization phase");
            }
        });
        luaValue.set("getTail", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.26
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CarDraft carDraft = (CarDraft) DraftLibrary.resolveDraft(luaValue3, CarDraft.class);
                if (carDraft == null || carDraft.tail == null) {
                    return LuaValue.NIL;
                }
                ArrayList arrayList = new ArrayList(carDraft.tail.length);
                int i = 0;
                while (true) {
                    CarDraft[] carDraftArr = carDraft.tail;
                    if (i < carDraftArr.length) {
                        arrayList.add(carDraftArr[i].luaRepr);
                        i++;
                    } else {
                        return ((ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class)).createArray(arrayList);
                    }
                }
            }
        });
        luaValue.set("getSpeed", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.27
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                if (((CarDraft) DraftLibrary.resolveDraft(luaValue3, CarDraft.class)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(r3.speed);
            }
        });
        luaValue.set("getCapacity", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.28
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                if (draftResolveDraft == null) {
                    return LuaValue.NIL;
                }
                if (draftResolveDraft instanceof CarDraft) {
                    return LuaValue.valueOf(((CarDraft) draftResolveDraft).capacity);
                }
                if (draftResolveDraft instanceof BuildingDraft) {
                    return LuaValue.valueOf(((BuildingDraft) draftResolveDraft).capacity);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getDepotCapacity", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DraftLibrary.29
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                if (draftResolveDraft == null || !(draftResolveDraft instanceof BuildingDraft)) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(((BuildingDraft) draftResolveDraft).depotCapacity);
            }
        });
    }

    public static <T extends Draft> T resolveDraft(LuaValue luaValue, Class<T> cls) {
        if (luaValue == null) {
            return null;
        }
        if (luaValue.istable()) {
            return (T) CoerceLuaToJava.coerce(luaValue.rawget(SimpleLuaLibrary.origKey), cls);
        }
        if (luaValue.isstring()) {
            return (T) Drafts.get(luaValue.checkjstring(), cls);
        }
        if (luaValue.isuserdata(cls)) {
            return (T) CoerceLuaToJava.coerce(luaValue, cls);
        }
        return null;
    }

    public static <T extends Draft> T resolveDraftOpt(LuaValue luaValue, Class<T> cls) {
        if (luaValue == null) {
            return null;
        }
        if (luaValue.istable()) {
            return (T) CoerceLuaToJava.coerce(luaValue.rawget(SimpleLuaLibrary.origKey), cls);
        }
        if (luaValue.isstring()) {
            return (T) Drafts.get(luaValue.checkjstring(), cls);
        }
        if (luaValue.isuserdata(cls)) {
            return (T) CoerceLuaToJava.coerce(luaValue, cls);
        }
        return null;
    }

    public static <T extends Draft> List<T> resolveDraftListOpt(LuaValue luaValue, Class<T> cls) {
        if (luaValue == null) {
            return null;
        }
        if (luaValue.istable()) {
            ArrayList arrayList = new ArrayList();
            int i = 1;
            while (true) {
                LuaValue luaValue2 = luaValue.get(i);
                if (luaValue2.isnil()) {
                    return arrayList;
                }
                Draft draftResolveDraftOpt = resolveDraftOpt(luaValue2, cls);
                if (draftResolveDraftOpt != null) {
                    arrayList.add(draftResolveDraftOpt);
                }
                i++;
            }
        } else {
            if (luaValue.isnil()) {
                return null;
            }
            return Collections.singletonList(resolveDraft(luaValue, cls));
        }
    }
}
