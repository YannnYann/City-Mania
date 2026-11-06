package info.flowersoft.theotown.scripting.libraries;

import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.api.Api;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptMethod;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.listitem.GadgetListItem;
import info.flowersoft.theotown.util.ThemeManager;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.SensitiveGadget;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.util.Predicate;
import vm2.Globals;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: loaded from: classes4.dex */
public class GUILibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public static final Runnable EMPTY_RUNNER = new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            GUILibrary.m2188$r8$lambda$aLmPH6lGeuEFt7Ri1npd3exEgk();
        }
    };
    public final Stapel2DGameContext context;
    public final Master master;

    /* JADX INFO: renamed from: $r8$lambda$aLmPH6lGeuEFt-7Ri1npd3exEgk, reason: not valid java name */
    public static /* synthetic */ void m2188$r8$lambda$aLmPH6lGeuEFt7Ri1npd3exEgk() {
    }

    public GUILibrary(Master master, Stapel2DGameContext stapel2DGameContext) {
        super("libs/GUI.lua");
        this.master = master;
        this.context = stapel2DGameContext;
    }

    public Master getMaster() {
        return this.master;
    }

    public final Varargs colorToVarargs(Color color) {
        return LuaValue.varargsOf(LuaValue.valueOf(color.getRed()), LuaValue.valueOf(color.getGreen()), LuaValue.valueOf(color.getBlue()));
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(final LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.set("isDarkMode", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.1
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(ThemeManager.INSTANCE.isDarkMode());
            }
        });
        luaValue.set("getSkinColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.2
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                String strCheckjstring = varargs.checkjstring(1);
                strCheckjstring.getClass();
                switch (strCheckjstring) {
                    case "textColorDefault":
                        return GUILibrary.this.colorToVarargs(Resources.skin.cText);
                    case "textColorAccent":
                        return GUILibrary.this.colorToVarargs(Resources.skin.cTextAccent);
                    case "textColorSecondary":
                        return GUILibrary.this.colorToVarargs(Resources.skin.cTextSecondary);
                    case "textColorSelected":
                        return GUILibrary.this.colorToVarargs(Resources.skin.cTextSelected);
                    default:
                        return LuaValue.varargsOf(LuaValue.valueOf(255), LuaValue.valueOf(255), LuaValue.valueOf(255));
                }
            }
        });
        luaValue.set("addGadget", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.3
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Gadget gadgetResolveGadget = GUILibrary.this.resolveGadget(luaValue3);
                if (gadgetResolveGadget instanceof ElementLine) {
                    gadgetResolveGadget = ((ElementLine) gadgetResolveGadget).getFirstPart();
                }
                LuaTable[] luaTableArr = new LuaTable[1];
                LuaTable luaTableOpttable = luaValue4.opttable(LuaValue.tableOf());
                Gadget gadgetAddGadget = GUILibrary.this.addGadget(gadgetResolveGadget, luaTableOpttable, luaValue5.checkjstring(), luaTableArr);
                if (gadgetAddGadget != null) {
                    int iOptint = luaTableOpttable.get("padding").optint(0);
                    int iOptint2 = luaTableOpttable.get("paddingLeft").optint(luaTableOpttable.get("pl").optint(iOptint));
                    int iOptint3 = luaTableOpttable.get("paddingRight").optint(luaTableOpttable.get("pr").optint(iOptint));
                    int iOptint4 = luaTableOpttable.get("paddingTop").optint(luaTableOpttable.get("pt").optint(iOptint));
                    int iOptint5 = luaTableOpttable.get("paddingBottom").optint(luaTableOpttable.get("pb").optint(iOptint));
                    if (iOptint2 != 0 || iOptint3 != 0 || iOptint4 != 0 || iOptint5 != 0) {
                        gadgetAddGadget.setPadding(iOptint2, iOptint4, iOptint3, iOptint5);
                    }
                    boolean zOptboolean = luaTableOpttable.get("listboxBackground").optboolean(true);
                    boolean zOptboolean2 = luaTableOpttable.get("listboxSelectable").optboolean(false);
                    boolean zOptboolean3 = luaTableOpttable.get("postpone").optboolean(false);
                    if (luaTableOpttable.get(C3670j8.x).isstring()) {
                        gadgetAddGadget.setId(luaTableOpttable.get(C3670j8.x).checkjstring());
                    }
                    luaTableArr[0] = GUILibrary.wrap(luaValue, gadgetAddGadget, zOptboolean3);
                    ScriptMethod scriptMethodResolve = ScriptMethod.resolve(luaTableOpttable, "onInit");
                    if (scriptMethodResolve != null) {
                        scriptMethodResolve.call(luaTableArr[0]);
                    }
                    if (gadgetResolveGadget instanceof ListBox) {
                        GadgetListItem gadgetListItem = new GadgetListItem(gadgetAddGadget);
                        gadgetListItem.setDrawBackground(zOptboolean);
                        gadgetListItem.setCanBeSelected(zOptboolean2);
                        ((ListBox) gadgetResolveGadget).addItem(gadgetListItem);
                    }
                    return luaTableArr[0];
                }
                return LuaValue.NIL;
            }
        });
        luaValue.get("_init").call(CoerceJavaToLua.coerce(this.master));
        luaValue.set("createMenu", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.4
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return GUILibrary.this.createMenu(luaValue, luaValue3.checktable());
            }
        });
        luaValue.set("createDialog", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.5
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return GUILibrary.this.createDialog(luaValue, luaValue3.checktable());
            }
        });
        luaValue.set("getTouchPoint", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.6
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                TouchPoint touchPoint;
                Gadget gadgetResolveGadget = GUILibrary.this.resolveGadget(varargs.arg1());
                if ((gadgetResolveGadget instanceof SensitiveGadget) && (touchPoint = ((SensitiveGadget) gadgetResolveGadget).getTouchPoint()) != null) {
                    Engine engine = gadgetResolveGadget.getSkin().engine;
                    float widthRatio = engine.getWidthRatio();
                    float heightRatio = engine.getHeightRatio();
                    return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(touchPoint.getX() * widthRatio), LuaValue.valueOf(touchPoint.getY() * heightRatio), LuaValue.valueOf(touchPoint.getFirstX() * widthRatio), LuaValue.valueOf(touchPoint.getFirstY() * heightRatio), LuaValue.valueOf(touchPoint.getXSpeed() * widthRatio), LuaValue.valueOf(touchPoint.getYSpeed() * heightRatio), LuaValue.valueOf(touchPoint.getTimestamp())});
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("delete", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.7
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Gadget gadgetResolveGadget = GUILibrary.this.resolveGadget(luaValue3);
                if (gadgetResolveGadget != GUILibrary.this.master && gadgetResolveGadget.getParent() != null) {
                    Gadget parent = gadgetResolveGadget.getParent();
                    parent.removeChild(gadgetResolveGadget);
                    if (parent instanceof ListBox) {
                        ListBox listBox = (ListBox) parent;
                        int i = 0;
                        while (true) {
                            if (i >= listBox.countItems()) {
                                break;
                            }
                            ListItem item = listBox.getItem(i);
                            if ((item instanceof GadgetListItem) && ((GadgetListItem) item).getGadget() == gadgetResolveGadget) {
                                listBox.removeItemIndex(i);
                                break;
                            }
                            i++;
                        }
                    }
                    gadgetResolveGadget.free();
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("createRenameDialog", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.8
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return GUILibrary.this.createRenameDialog(luaValue, luaValue3.checktable());
            }
        });
        luaValue.set("getOrig", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.9
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                GUILibrary.this.assertPrivileged("orig");
                if (GUILibrary.this.resolveGadget(luaValue3) != null) {
                    return luaValue3.rawget(SimpleLuaLibrary.origKey);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setMinSize", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.10
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Gadget gadgetResolveGadget = GUILibrary.this.resolveGadget(luaValue3);
                if (gadgetResolveGadget == null) {
                    throw new IllegalArgumentException("Received invalid GUI object");
                }
                int iOptint = luaValue4.optint(0);
                gadgetResolveGadget.setMinimumSize(iOptint, luaValue5.optint(iOptint));
                return LuaValue.NIL;
            }
        });
        luaValue.set("setMaxSize", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.11
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Gadget gadgetResolveGadget = GUILibrary.this.resolveGadget(luaValue3);
                if (gadgetResolveGadget == null) {
                    throw new IllegalArgumentException("Received invalid GUI object");
                }
                int iOptint = luaValue4.optint(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                gadgetResolveGadget.setMaximumSize(iOptint, luaValue5.optint(iOptint));
                return LuaValue.NIL;
            }
        });
        luaValue.set("getMinSize", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.12
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Gadget gadgetResolveGadget = GUILibrary.this.resolveGadget(varargs.arg1());
                if (gadgetResolveGadget == null) {
                    throw new IllegalArgumentException("Received invalid GUI object");
                }
                return LuaValue.varargsOf(LuaValue.valueOf(gadgetResolveGadget.getMinWidth()), LuaValue.valueOf(gadgetResolveGadget.getMinHeight()));
            }
        });
        luaValue.set("getMaxSize", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.13
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Gadget gadgetResolveGadget = GUILibrary.this.resolveGadget(varargs.arg1());
                if (gadgetResolveGadget == null) {
                    throw new IllegalArgumentException("Received invalid GUI object");
                }
                return LuaValue.varargsOf(LuaValue.valueOf(gadgetResolveGadget.getMaxWidth()), LuaValue.valueOf(gadgetResolveGadget.getMaxHeight()));
            }
        });
    }

    public final LuaValue createMenu(LuaValue luaValue, LuaTable luaTable) {
        LuaValue luaValue2;
        final LuaTable[] luaTableArr = new LuaTable[1];
        LuaTable luaTableOpttable = luaTable.get("source").opttable(null);
        Gadget gadgetResolveGadget = luaTableOpttable != null ? resolveGadget(luaTableOpttable) : null;
        int iOptint = luaTable.get("x").optint(0);
        int iOptint2 = luaTable.get("y").optint(0);
        int iOptint3 = luaTable.get("w").optint(luaTable.get("width").optint(0));
        int iOptint4 = luaTable.get("h").optint(luaTable.get("height").optint(0));
        LuaTable luaTableChecktable = luaTable.get("actions").checktable();
        PopupBuilder popupBuilder = new PopupBuilder(this.master);
        if (gadgetResolveGadget != null) {
            popupBuilder.setSource(gadgetResolveGadget.getAbsoluteX(), gadgetResolveGadget.getAbsoluteY(), gadgetResolveGadget.getWidth(), gadgetResolveGadget.getHeight());
        } else {
            popupBuilder.setSource(iOptint, iOptint2, iOptint3, iOptint4);
        }
        LuaValue luaValue3 = luaTableChecktable.get(1);
        if (luaValue3 == LuaValue.NIL) {
            luaValue3 = luaTableChecktable;
        }
        int i = 1;
        while (true) {
            luaValue2 = LuaValue.NIL;
            if (luaValue3 == luaValue2) {
                break;
            }
            if (luaValue3 == LuaValue.FALSE) {
                i++;
                luaValue3 = luaTableChecktable.get(i);
            } else {
                luaValue3.checktable();
                int iOptint5 = luaValue3.get(C3522b4.i.H0).optint(0);
                String strOptjstring = luaValue3.get(C3522b4.i.K0).optjstring("");
                final ScriptMethod scriptMethodResolve = ScriptMethod.resolve(luaValue3, "onClick");
                boolean zOptboolean = luaValue3.get("enabled").optboolean(true);
                if (iOptint5 == 0 && (strOptjstring == null || strOptjstring.isEmpty())) {
                    popupBuilder.addSeparator();
                } else {
                    popupBuilder.addItem(iOptint5, strOptjstring, new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            GUILibrary.$r8$lambda$W6xQpvGE2h2bCfjbGCKcr1VV6Zo(scriptMethodResolve, luaTableArr);
                        }
                    }, zOptboolean);
                }
                i++;
                luaValue3 = luaTableChecktable.get(i);
            }
        }
        Panel panelBuild = popupBuilder.build();
        if (panelBuild == null) {
            return luaValue2;
        }
        LuaTable luaTableWrap = wrap(luaValue, panelBuild, false);
        luaTableArr[0] = luaTableWrap;
        return luaTableWrap;
    }

    public static /* synthetic */ void $r8$lambda$W6xQpvGE2h2bCfjbGCKcr1VV6Zo(ScriptMethod scriptMethod, LuaTable[] luaTableArr) {
        if (scriptMethod != null) {
            scriptMethod.call(luaTableArr[0]);
        }
    }

    public final LuaValue createRenameDialog(LuaValue luaValue, LuaTable luaTable) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(this.master, this.context.getTranslator(), this.context.getKey());
        int iOptint = luaTable.get(C3522b4.i.H0).optint(0);
        String strOptjstring = luaTable.get(C3522b4.i.D0).optjstring("");
        String strOptjstring2 = luaTable.get(C3522b4.i.K0).optjstring("");
        String strOptjstring3 = luaTable.get(C3522b4.i.X).optjstring("");
        boolean zOptboolean = luaTable.get("password").optboolean(false);
        String strOptjstring4 = luaTable.get("okText").optjstring(null);
        String strOptjstring5 = luaTable.get("cancelText").optjstring(null);
        final ScriptMethod scriptMethodResolve = ScriptMethod.resolve(luaTable, "onOk");
        final ScriptMethod scriptMethodResolve2 = ScriptMethod.resolve(luaTable, "onCancel");
        final ScriptMethod scriptMethodResolve3 = ScriptMethod.resolve(luaTable, "onClose");
        final ScriptMethod scriptMethodResolve4 = ScriptMethod.resolve(luaTable, "filter");
        final LuaTable luaTableTableOf = LuaValue.tableOf();
        if (strOptjstring4 != null) {
            renameDialogBuilder.setOkText(strOptjstring4);
        }
        if (strOptjstring5 != null) {
            renameDialogBuilder.setCancelText(strOptjstring5);
        }
        if (scriptMethodResolve4 != null) {
            renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda5
                @Override // io.blueflower.stapel2d.util.Predicate
                public final boolean apply(Object obj) {
                    return scriptMethodResolve4.call(LuaValue.valueOf((String) obj)).optboolean(true);
                }
            });
        }
        if (scriptMethodResolve != null) {
            renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda6
                @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
                public final void accept(Object obj) {
                    scriptMethodResolve.call(LuaValue.valueOf((String) obj));
                }
            });
        }
        if (scriptMethodResolve2 != null) {
            renameDialogBuilder.setOnCancel(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    scriptMethodResolve2.call();
                }
            });
        }
        renameDialogBuilder.setPassword(zOptboolean);
        final Dialog dialogBuild = renameDialogBuilder.build(iOptint, strOptjstring, strOptjstring2, strOptjstring3);
        dialogBuild.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                GUILibrary.$r8$lambda$JnvDQINljXIZeQUS5XoEicJq60Q(scriptMethodResolve3, luaTableTableOf, dialogBuild);
            }
        });
        dialogBuild.setVisible(true);
        wrapDialog(dialogBuild, luaValue, luaTableTableOf);
        return luaTableTableOf;
    }

    public static /* synthetic */ void $r8$lambda$JnvDQINljXIZeQUS5XoEicJq60Q(ScriptMethod scriptMethod, LuaTable luaTable, Dialog dialog) {
        if (scriptMethod != null) {
            scriptMethod.call(luaTable);
        }
        dialog.free();
    }

    public final LuaValue createDialog(LuaValue luaValue, LuaTable luaTable) {
        int iOptint = luaTable.get(C3522b4.i.H0).optint(0);
        String strOptjstring = luaTable.get(C3522b4.i.D0).optjstring("");
        String strOptjstring2 = luaTable.get(C3522b4.i.K0).optjstring("");
        int iOptint2 = luaTable.get("width").optint(luaTable.get("w").optint(300));
        int iOptint3 = luaTable.get("height").optint(luaTable.get("h").optint(AdSize.WIDE_SKYSCRAPER_WIDTH));
        boolean zOptboolean = luaTable.get("closeable").optboolean(true);
        boolean zOptboolean2 = luaTable.get("pause").optboolean(true);
        LuaTable luaTableOpttable = luaTable.get("actions").opttable(null);
        boolean zOptboolean3 = luaTable.get("distribute").optboolean(false);
        ScriptMethod scriptMethodResolve = ScriptMethod.resolve(luaTable, "onInit");
        final ScriptMethod scriptMethodResolve2 = ScriptMethod.resolve(luaTable, "onUpdate");
        final ScriptMethod scriptMethodResolve3 = ScriptMethod.resolve(luaTable, "onClose");
        final ScriptMethod scriptMethodResolve4 = ScriptMethod.resolve(luaTable, "onCancel");
        final LuaTable luaTableTableOf = LuaValue.tableOf();
        final Dialog dialog = new Dialog(iOptint, strOptjstring, strOptjstring2, iOptint2, iOptint3, this.master);
        dialog.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GUILibrary.m2186$r8$lambda$GbmP15qrHAy9Cp39kXpiboP4wY(scriptMethodResolve3, luaTableTableOf, dialog);
            }
        });
        dialog.setDrawBackground(!zOptboolean2);
        if (zOptboolean) {
            dialog.addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    GUILibrary.m2189$r8$lambda$mPtfChrhJEwUvjjcTpB2EYxd2Y(scriptMethodResolve4, luaTableTableOf);
                }
            });
        }
        new Gadget(0, 0, 0, 0, dialog.getContentPane()) { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.14
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                ScriptMethod scriptMethod = scriptMethodResolve2;
                if (scriptMethod != null) {
                    scriptMethod.call(luaTableTableOf);
                }
            }
        };
        if (luaTableOpttable != null) {
            String str = null;
            LuaTable luaTableOpttable2 = luaTableOpttable.get(1).opttable(null);
            int i = 1;
            while (luaTableOpttable2 != null) {
                int iOptint4 = luaTableOpttable2.get(C3522b4.i.H0).optint(0);
                String strOptjstring3 = luaTableOpttable2.get(C3670j8.x).optjstring(str);
                String strOptjstring4 = luaTableOpttable2.get(C3522b4.i.K0).optjstring("");
                final ScriptMethod scriptMethodResolve5 = ScriptMethod.resolve(luaTableOpttable2, "onClick");
                boolean zOptboolean4 = luaTableOpttable2.get("autoClose").optboolean(true);
                boolean zOptboolean5 = luaTableOpttable2.get("golden").optboolean(false);
                ScriptMethod scriptMethodResolve6 = ScriptMethod.resolve(luaTableOpttable2, "onInit");
                GoldButton goldButtonAddButton = dialog.addButton(iOptint4, strOptjstring4, false, zOptboolean4, true, new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        GUILibrary.$r8$lambda$CeYQNAT6tJNY5JAzoifva4k7yXY(scriptMethodResolve5, luaTableTableOf);
                    }
                });
                if (strOptjstring3 != null) {
                    goldButtonAddButton.setId(strOptjstring3);
                }
                goldButtonAddButton.setGolden(zOptboolean5);
                if (scriptMethodResolve6 != null) {
                    scriptMethodResolve6.call(luaTableTableOf, wrap(luaValue, goldButtonAddButton, false));
                }
                i++;
                luaTableOpttable2 = luaTableOpttable.get(i).opttable(null);
                str = null;
            }
            if (zOptboolean3) {
                dialog.distributeButtons();
            }
        } else {
            dialog.removeControlLine();
        }
        wrapDialog(dialog, luaValue, luaTableTableOf);
        dialog.setVisible(true);
        if (scriptMethodResolve != null) {
            scriptMethodResolve.call(luaTableTableOf);
        }
        return luaTableTableOf;
    }

    /* JADX INFO: renamed from: $r8$lambda$GbmP15qrHAy9Cp39kXp-iboP4wY, reason: not valid java name */
    public static /* synthetic */ void m2186$r8$lambda$GbmP15qrHAy9Cp39kXpiboP4wY(ScriptMethod scriptMethod, LuaTable luaTable, Dialog dialog) {
        if (scriptMethod != null) {
            scriptMethod.call(luaTable);
        }
        dialog.free();
    }

    /* JADX INFO: renamed from: $r8$lambda$mPtfChrhJEwUvjjcTpB2E-Yxd2Y, reason: not valid java name */
    public static /* synthetic */ void m2189$r8$lambda$mPtfChrhJEwUvjjcTpB2EYxd2Y(ScriptMethod scriptMethod, LuaTable luaTable) {
        if (scriptMethod != null) {
            scriptMethod.call(luaTable);
        }
    }

    public static /* synthetic */ void $r8$lambda$CeYQNAT6tJNY5JAzoifva4k7yXY(ScriptMethod scriptMethod, LuaTable luaTable) {
        if (scriptMethod != null) {
            scriptMethod.call(luaTable);
        }
    }

    public static LuaTable wrap(Gadget gadget) {
        return wrap(gadget, false);
    }

    public static LuaTable wrap(Gadget gadget, boolean z) {
        return wrap(ScriptingEnvironment.getInstance().getGlobals().get("GUI"), gadget, z);
    }

    public static LuaTable wrap(LuaValue luaValue, Gadget gadget, boolean z) {
        return luaValue.invokemethod("_new", new LuaValue[]{CoerceJavaToLua.coerce(gadget), LuaValue.valueOf(z)}).arg1().checktable();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final io.blueflower.stapel2d.gui.Gadget addGadget(io.blueflower.stapel2d.gui.Gadget r26, vm2.LuaTable r27, java.lang.String r28, final vm2.LuaTable[] r29) {
        /*
            Method dump skipped, instruction units count: 594
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.scripting.libraries.GUILibrary.addGadget(io.blueflower.stapel2d.gui.Gadget, vm2.LuaTable, java.lang.String, vm2.LuaTable[]):io.blueflower.stapel2d.gui.Gadget");
    }

    public static void wrapDialog(final Dialog dialog, LuaValue luaValue, LuaTable luaTable) {
        luaTable.set(C3522b4.i.D0, wrap(luaValue, dialog.getTitleLabel(), false));
        luaTable.set(C3522b4.i.K0, wrap(luaValue, dialog.getTextFrame(), false));
        luaTable.set(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, wrap(luaValue, dialog.getContentPane(), false));
        luaTable.set("controls", wrap(luaValue, dialog.getControlLine(), false));
        luaTable.set("close", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.GUILibrary.21
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                dialog.setVisible(false);
                return LuaValue.NIL;
            }
        });
    }

    public static LuaTable wrapDialog(Dialog dialog) {
        LuaValue luaValue = ScriptingEnvironment.getInstance().getGlobals().get("GUI");
        LuaTable luaTableTableOf = LuaValue.tableOf();
        wrapDialog(dialog, luaValue, luaTableTableOf);
        return luaTableTableOf;
    }

    public final Gadget resolveGadget(LuaValue luaValue) {
        if (luaValue.isnil()) {
            return null;
        }
        return (Gadget) CoerceLuaToJava.coerce(luaValue.rawget(SimpleLuaLibrary.origKey), Gadget.class);
    }
}
