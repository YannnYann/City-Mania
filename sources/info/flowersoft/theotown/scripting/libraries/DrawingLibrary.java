package info.flowersoft.theotown.scripting.libraries;

import com.badlogic.gdx.math.Rectangle;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.util.ThemeManager;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import vm2.Globals;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: loaded from: classes4.dex */
public class DrawingLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public static final Color tempColor = new Color();
    public City city;
    public final Stapel2DGameContext context;
    public float cursorX;
    public float cursorY;
    public Font defaultFont;
    public Drawer drawer;
    public float flowHeight;
    public IsoConverter iso;
    public float originX;
    public float originY;
    public boolean rtl;
    public final Rectangle textFrameRect;
    public Tiles tiles;

    public static float map(float f, float f2, float f3) {
        return ((1.0f - f) * f2) + (f * f3);
    }

    public static /* synthetic */ float access$1016(DrawingLibrary drawingLibrary, float f) {
        float f2 = drawingLibrary.cursorX + f;
        drawingLibrary.cursorX = f2;
        return f2;
    }

    public static /* synthetic */ float access$1216(DrawingLibrary drawingLibrary, float f) {
        float f2 = drawingLibrary.flowHeight + f;
        drawingLibrary.flowHeight = f2;
        return f2;
    }

    public DrawingLibrary(Stapel2DGameContext stapel2DGameContext) {
        super("libs/Drawing.lua");
        this.textFrameRect = new Rectangle();
        this.context = stapel2DGameContext;
        this.rtl = stapel2DGameContext.getTranslator().prefersRTL();
    }

    public void setCity(City city) {
        this.city = city;
        if (city != null) {
            this.tiles = city.getTiles();
            this.drawer = city.getDrawer();
            this.iso = city.getIsoConverter();
        }
        this.originX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.originY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.defaultFont = Resources.skin.fontDefault;
        this.rtl = this.context.getTranslator().prefersRTL();
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary, info.flowersoft.theotown.scripting.LuaLibrary
    public void unload(Globals globals) {
        super.unload(globals);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        final Engine engine = this.context.getEngine();
        luaValue.set("getDaytime", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.1
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(DrawingLibrary.this.drawer.daytime);
            }
        });
        luaValue.set("getDaytimeColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.2
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(DrawingLibrary.this.drawer.shadingRed), LuaValue.valueOf(DrawingLibrary.this.drawer.shadingGreen), LuaValue.valueOf(DrawingLibrary.this.drawer.shadingBlue));
            }
        });
        luaValue.set("getSize", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.3
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(engine.getVirtualWidth()), LuaValue.valueOf(engine.getVirtualHeight()));
            }
        });
        luaValue.set("setScale", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.4
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                float fCheckdouble = (float) luaValue3.checkdouble();
                engine.setScale(fCheckdouble, (float) luaValue4.optdouble(fCheckdouble));
                return LuaValue.NIL;
            }
        });
        luaValue.set("getScale", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.5
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(engine.getScaleX()), LuaValue.valueOf(engine.getScaleY()));
            }
        });
        luaValue.set("setTile", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.6
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int baseTerrainHeight;
                DrawingLibrary.this.assertCity();
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                DrawingLibrary.this.drawer.setRealTile(iCheckint, iCheckint2);
                float fOptdouble = (float) varargs.arg(3).optdouble(0.0d);
                float fOptdouble2 = (float) varargs.arg(4).optdouble(0.0d);
                if (DrawingLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = DrawingLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    if (building == null) {
                        baseTerrainHeight = DrawingLibrary.this.city.getTiles().getBaseTerrainHeight(iCheckint, iCheckint2);
                    } else {
                        baseTerrainHeight = building.getMaxTerrainLevel();
                    }
                    fOptdouble2 -= baseTerrainHeight * 12;
                }
                float fOptdouble3 = (float) varargs.arg(5).optdouble(1.0d);
                float fOptdouble4 = (float) varargs.arg(6).optdouble(1.0d);
                float absScaleX = DrawingLibrary.this.iso.getAbsScaleX();
                float absScaleY = DrawingLibrary.this.iso.getAbsScaleY();
                int iOriginalToRotatedX = DrawingLibrary.this.city.originalToRotatedX(iCheckint, iCheckint2);
                int iOriginalToRotatedY = DrawingLibrary.this.city.originalToRotatedY(iCheckint, iCheckint2);
                DrawingLibrary drawingLibrary = DrawingLibrary.this;
                float f = iOriginalToRotatedX;
                float f2 = iOriginalToRotatedY;
                float f3 = fOptdouble3 * absScaleX;
                drawingLibrary.originX = drawingLibrary.iso.isoToAbsX(f, f2) + (fOptdouble * f3);
                DrawingLibrary drawingLibrary2 = DrawingLibrary.this;
                float f4 = fOptdouble4 * absScaleY;
                drawingLibrary2.originY = drawingLibrary2.iso.isoToAbsY(f, f2) + (fOptdouble2 * f4);
                engine.setScale(f3, f4);
                return LuaValue.NIL;
            }
        });
        luaValue.set("reset", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.7
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                engine.reset();
                DrawingLibrary.this.originX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                DrawingLibrary.this.originY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                DrawingLibrary.this.defaultFont = Resources.skin.fontDefault;
                return LuaValue.NIL;
            }
        });
        luaValue.set("resetClipping", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.8
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                engine.resetClipping();
                return LuaValue.NIL;
            }
        });
        luaValue.set("setClipping", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.9
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                engine.setClipRect((int) (varargs.optdouble(1, 0.0d) + ((double) DrawingLibrary.this.originX)), (int) (varargs.optdouble(2, 0.0d) + ((double) DrawingLibrary.this.originY)), (int) (varargs.checkint(3) * engine.getScaleX()), (int) (varargs.checkint(4) * engine.getScaleY()));
                return LuaValue.NIL;
            }
        });
        luaValue.set("setColor", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.10
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                engine.setColor(DrawingLibrary.parseColor(luaValue3, luaValue4, luaValue5));
                return LuaValue.NIL;
            }
        });
        luaValue.set("addColor", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.11
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iOptint = luaValue4.optint(iCheckint);
                int iOptint2 = luaValue4.optint(iOptint);
                Engine engine2 = engine;
                engine2.setColor(engine2.getRed() + iCheckint, engine.getGreen() + iOptint, engine.getBlue() + iOptint2);
                return null;
            }
        });
        luaValue.set("getColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.12
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(engine.getRed()), LuaValue.valueOf(engine.getGreen()), LuaValue.valueOf(engine.getBlue()));
            }
        });
        luaValue.set("setAlpha", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.13
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                engine.setTransparency(Math.round(((float) luaValue3.checkdouble()) * 255.0f));
                return LuaValue.NIL;
            }
        });
        luaValue.set("getAlpha", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.14
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(engine.getTransparency() / 255.0f);
            }
        });
        luaValue.set("setAdditive", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.15
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                engine.setAdditive(Math.round(((float) luaValue3.checkdouble()) * 255.0f));
                return LuaValue.NIL;
            }
        });
        luaValue.set("getAdditive", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.16
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(engine.getAdditive() / 255.0f);
            }
        });
        luaValue.set("getTextSize", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.17
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Font font;
                String strCheckjstring = varargs.checkjstring(1);
                LuaValue luaValueArg = varargs.arg(2);
                if (luaValueArg.isnil()) {
                    font = DrawingLibrary.this.defaultFont;
                } else {
                    font = (Font) CoerceLuaToJava.coerce(luaValueArg, Font.class);
                }
                return LuaValue.varargsOf(LuaValue.valueOf(font.getWidth(strCheckjstring)), LuaValue.valueOf(font.getHeight(strCheckjstring)));
            }
        });
        luaValue.set("getImageSize", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.18
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iResolveFrame = DrawingLibrary.this.resolveFrame(varargs.arg1());
                return LuaValue.varargsOf(LuaValue.valueOf(Resources.IMAGE_WORLD.getWidth(iResolveFrame)), LuaValue.valueOf(Resources.IMAGE_WORLD.getHeight(iResolveFrame)));
            }
        });
        luaValue.set("getImageHandle", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.19
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iResolveFrame = DrawingLibrary.this.resolveFrame(varargs.arg1());
                return LuaValue.varargsOf(LuaValue.valueOf(Resources.IMAGE_WORLD.getHandleX(iResolveFrame)), LuaValue.valueOf(Resources.IMAGE_WORLD.getHandleY(iResolveFrame)));
            }
        });
        luaValue.set("drawText", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.20
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Font font;
                String strCheckjstring = varargs.checkjstring(1);
                float fCheckdouble = ((float) varargs.checkdouble(2)) + DrawingLibrary.this.originX;
                float fCheckdouble2 = ((float) varargs.checkdouble(3)) + DrawingLibrary.this.originY;
                LuaValue luaValueArg = varargs.arg(4);
                float fOptdouble = (float) varargs.optdouble(5, 0.0d);
                float fOptdouble2 = (float) varargs.optdouble(6, 0.0d);
                if (luaValueArg.isnil()) {
                    if (DrawingLibrary.this.defaultFont == null) {
                        DrawingLibrary.this.defaultFont = Resources.skin.fontDefault;
                    }
                    font = DrawingLibrary.this.defaultFont;
                } else {
                    font = (Font) CoerceLuaToJava.coerce(luaValueArg, Font.class);
                }
                Font font2 = font;
                if (font2 == null) {
                    return LuaValue.NIL;
                }
                if (fOptdouble == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && fOptdouble2 == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    engine.drawText(font2, strCheckjstring, fCheckdouble, fCheckdouble2);
                } else {
                    engine.drawText(font2, strCheckjstring, fCheckdouble, fCheckdouble2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fOptdouble, fOptdouble2);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setFont", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.21
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                if (luaValue3.isnil()) {
                    DrawingLibrary.this.defaultFont = Resources.skin.fontDefault;
                    return null;
                }
                DrawingLibrary.this.defaultFont = (Font) CoerceLuaToJava.coerce(luaValue3, Font.class);
                return null;
            }
        });
        luaValue.set("setTextFrame", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.22
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                DrawingLibrary.this.textFrameRect.set(((float) varargs.checkdouble(1)) + DrawingLibrary.this.originX, ((float) varargs.checkdouble(2)) + DrawingLibrary.this.originX, (float) varargs.checkdouble(3), (float) varargs.checkdouble(4));
                DrawingLibrary.this.cursorX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                DrawingLibrary.this.cursorY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                DrawingLibrary.this.flowHeight = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                return LuaValue.NIL;
            }
        });
        luaValue.set("flowText", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.23
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                String strCheckjstring = luaValue3.checkjstring();
                float width = DrawingLibrary.this.defaultFont.getWidth(strCheckjstring);
                float fMin = Math.min(width, DrawingLibrary.this.textFrameRect.width);
                float height = DrawingLibrary.this.defaultFont.getHeight();
                DrawingLibrary drawingLibrary = DrawingLibrary.this;
                drawingLibrary.flowHeight = Math.max(drawingLibrary.flowHeight, DrawingLibrary.this.cursorY + height);
                if (DrawingLibrary.this.cursorX > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && DrawingLibrary.this.cursorX + fMin >= DrawingLibrary.this.textFrameRect.width) {
                    DrawingLibrary.this.cursorX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    DrawingLibrary drawingLibrary2 = DrawingLibrary.this;
                    drawingLibrary2.cursorY = drawingLibrary2.flowHeight;
                    DrawingLibrary.access$1216(DrawingLibrary.this, height);
                }
                float f = DrawingLibrary.this.textFrameRect.x + DrawingLibrary.this.cursorX;
                float f2 = DrawingLibrary.this.textFrameRect.y + DrawingLibrary.this.cursorY;
                DrawingLibrary.access$1016(DrawingLibrary.this, fMin);
                if (DrawingLibrary.this.rtl) {
                    f = (DrawingLibrary.this.textFrameRect.x + DrawingLibrary.this.textFrameRect.width) - DrawingLibrary.this.cursorX;
                }
                if (fMin >= width) {
                    engine.drawText(DrawingLibrary.this.defaultFont, strCheckjstring, f, f2);
                    return null;
                }
                float scaleX = engine.getScaleX();
                Engine engine2 = engine;
                engine2.setScale(fMin / width, engine2.getScaleY());
                engine.drawText(DrawingLibrary.this.defaultFont, strCheckjstring, f, f2);
                Engine engine3 = engine;
                engine3.setScale(scaleX, engine3.getScaleY());
                return null;
            }
        });
        luaValue.set("flowImage", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.24
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                int iResolveFrame = DrawingLibrary.this.resolveFrame(luaValue3);
                float height = DrawingLibrary.this.defaultFont.getHeight();
                float width = (Resources.IMAGE_WORLD.getWidth(iResolveFrame) * height) / Resources.IMAGE_WORLD.getHeight(iResolveFrame);
                DrawingLibrary drawingLibrary = DrawingLibrary.this;
                drawingLibrary.flowHeight = Math.max(drawingLibrary.flowHeight, DrawingLibrary.this.cursorY + height);
                if (DrawingLibrary.this.cursorX > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && DrawingLibrary.this.cursorX + width >= DrawingLibrary.this.textFrameRect.width) {
                    DrawingLibrary.this.cursorX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    DrawingLibrary drawingLibrary2 = DrawingLibrary.this;
                    drawingLibrary2.cursorY = drawingLibrary2.flowHeight;
                    DrawingLibrary.access$1216(DrawingLibrary.this, height);
                }
                float f = DrawingLibrary.this.textFrameRect.x + DrawingLibrary.this.cursorX;
                float f2 = DrawingLibrary.this.textFrameRect.y + DrawingLibrary.this.cursorY;
                DrawingLibrary.access$1016(DrawingLibrary.this, width);
                if (DrawingLibrary.this.rtl) {
                    f = (DrawingLibrary.this.textFrameRect.x + DrawingLibrary.this.textFrameRect.width) - DrawingLibrary.this.cursorX;
                }
                engine.drawImage(Resources.IMAGE_WORLD, f, f2, width, height, iResolveFrame);
                return null;
            }
        });
        luaValue.set("nl", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.25
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                float height = DrawingLibrary.this.defaultFont.getHeight();
                DrawingLibrary drawingLibrary = DrawingLibrary.this;
                drawingLibrary.flowHeight = Math.max(drawingLibrary.flowHeight, DrawingLibrary.this.cursorY + height) + ((float) luaValue3.optdouble(0.0d));
                DrawingLibrary.this.cursorX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                DrawingLibrary drawingLibrary2 = DrawingLibrary.this;
                drawingLibrary2.cursorY = drawingLibrary2.flowHeight;
                return null;
            }
        });
        luaValue.set("getFlowHeight", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.26
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(DrawingLibrary.this.flowHeight);
            }
        });
        luaValue.set("drawImage", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.27
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iResolveFrame = DrawingLibrary.this.resolveFrame(luaValue3);
                engine.drawImage(Resources.IMAGE_WORLD, ((float) luaValue4.optdouble(0.0d)) + DrawingLibrary.this.originX, ((float) luaValue5.optdouble(0.0d)) + DrawingLibrary.this.originY, iResolveFrame);
                return LuaValue.NIL;
            }
        });
        luaValue.set("getFrameType", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.28
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(engine.getType());
            }
        });
        luaValue.set("setFrameType", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.29
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                int type = engine.getType();
                engine.setType(luaValue3.checkint());
                return LuaValue.valueOf(type);
            }
        });
        luaValue.set("drawTileFrame", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.30
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                int iCheckint = luaValue3.checkint();
                if (DrawingLibrary.this.drawer != null) {
                    DrawingLibrary.this.drawer.ground.drawFrameOnSlope(DrawingLibrary.this.drawer, Resources.IMAGE_WORLD, iCheckint);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("drawImageRect", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.31
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iResolveFrame = DrawingLibrary.this.resolveFrame(varargs.arg(1));
                engine.drawImage(Resources.IMAGE_WORLD, ((float) varargs.arg(2).optdouble(0.0d)) + DrawingLibrary.this.originX, ((float) varargs.arg(3).optdouble(0.0d)) + DrawingLibrary.this.originY, (float) varargs.arg(4).optdouble(0.0d), (float) varargs.arg(5).optdouble(0.0d), iResolveFrame);
                return LuaValue.NIL;
            }
        });
        luaValue.set("drawNinePatch", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.32
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iResolveFrame = DrawingLibrary.this.resolveFrame(varargs.arg(1));
                float fOptdouble = ((float) varargs.arg(2).optdouble(0.0d)) + DrawingLibrary.this.originX;
                float fOptdouble2 = ((float) varargs.arg(3).optdouble(0.0d)) + DrawingLibrary.this.originY;
                float fOptdouble3 = (float) varargs.arg(4).optdouble(0.0d);
                float fOptdouble4 = (float) varargs.arg(5).optdouble(0.0d);
                if (varargs.arg(6).optboolean(false)) {
                    engine.drawSparseNinePatch(Resources.IMAGE_WORLD, fOptdouble, fOptdouble2, fOptdouble3, fOptdouble4, iResolveFrame);
                } else {
                    engine.drawNinePatch(Resources.IMAGE_WORLD, fOptdouble, fOptdouble2, fOptdouble3, fOptdouble4, iResolveFrame);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("drawRect", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.33
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                engine.drawImage(Resources.IMAGE_WORLD, ((float) varargs.arg(1).optdouble(0.0d)) + DrawingLibrary.this.originX, ((float) varargs.arg(2).optdouble(0.0d)) + DrawingLibrary.this.originY, (float) varargs.arg(3).optdouble(0.0d), (float) varargs.arg(4).optdouble(0.0d), Resources.FRAME_RECT);
                return LuaValue.NIL;
            }
        });
        luaValue.set("drawCircle", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.34
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                float fOptdouble = ((float) varargs.arg(1).optdouble(0.0d)) + DrawingLibrary.this.originX;
                float fOptdouble2 = ((float) varargs.arg(2).optdouble(0.0d)) + DrawingLibrary.this.originY;
                float fOptdouble3 = (float) varargs.arg(3).optdouble(0.0d);
                float fOptdouble4 = (float) varargs.arg(4).optdouble(0.0d);
                float fOptdouble5 = (float) varargs.arg(5).optdouble(1.0d);
                float f = fOptdouble3 * 0.5f;
                float f2 = fOptdouble4 * 0.5f;
                Drawing.getInstance().drawCircle(fOptdouble + f, fOptdouble2 + f2, 1.0f - fOptdouble5, 1.0f, (float) varargs.arg(6).optdouble(0.0d), (float) varargs.arg(7).optdouble(6.283185307179586d), f, f2, engine);
                return LuaValue.NIL;
            }
        });
        luaValue.set("drawLine", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.35
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Drawing.getInstance().drawLine(((float) varargs.arg(1).checkdouble()) + DrawingLibrary.this.originX, ((float) varargs.arg(2).checkdouble()) + DrawingLibrary.this.originY, ((float) varargs.arg(3).checkdouble()) + DrawingLibrary.this.originX, ((float) varargs.arg(4).checkdouble()) + DrawingLibrary.this.originY, (float) varargs.arg(5).optdouble(1.0d), engine);
                return LuaValue.NIL;
            }
        });
        luaValue.set("drawTriangle", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.36
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Image image = Resources.IMAGE_WORLD;
                float fCheckdouble = ((float) varargs.arg(1).checkdouble()) + DrawingLibrary.this.originX;
                float fCheckdouble2 = ((float) varargs.arg(2).checkdouble()) + DrawingLibrary.this.originY;
                float fCheckdouble3 = ((float) varargs.arg(3).checkdouble()) + DrawingLibrary.this.originX;
                float fCheckdouble4 = ((float) varargs.arg(4).checkdouble()) + DrawingLibrary.this.originY;
                float fCheckdouble5 = ((float) varargs.arg(5).checkdouble()) + DrawingLibrary.this.originX;
                float fCheckdouble6 = ((float) varargs.arg(6).checkdouble()) + DrawingLibrary.this.originY;
                int iResolveFrameOpt = DrawingLibrary.this.resolveFrameOpt(varargs.arg(7), Resources.FRAME_RECT);
                float[] uVStream = image.getUVStream();
                int uVStreamPos = image.getUVStreamPos(iResolveFrameOpt);
                float f = uVStream[uVStreamPos];
                float f2 = uVStream[uVStreamPos + 1];
                float f3 = uVStream[uVStreamPos + 2];
                float f4 = uVStream[uVStreamPos + 3];
                engine.drawTextureTriangle(image.getTexture(iResolveFrameOpt), fCheckdouble, fCheckdouble2, fCheckdouble3, fCheckdouble4, fCheckdouble5, fCheckdouble6, DrawingLibrary.map((float) varargs.arg(8).optdouble(0.0d), f, f3), DrawingLibrary.map((float) varargs.arg(9).optdouble(0.0d), f2, f4), DrawingLibrary.map((float) varargs.arg(10).optdouble(0.0d), f, f3), DrawingLibrary.map((float) varargs.arg(11).optdouble(1.0d), f2, f4), DrawingLibrary.map((float) varargs.arg(12).optdouble(1.0d), f, f3), DrawingLibrary.map((float) varargs.arg(13).optdouble(0.0d), f2, f4), 0);
                return LuaValue.NIL;
            }
        });
        luaValue.set("drawQuad", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.37
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Image image = Resources.IMAGE_WORLD;
                float fCheckdouble = ((float) varargs.arg(1).checkdouble()) + DrawingLibrary.this.originX;
                float fCheckdouble2 = ((float) varargs.arg(2).checkdouble()) + DrawingLibrary.this.originY;
                float fCheckdouble3 = ((float) varargs.arg(3).checkdouble()) + DrawingLibrary.this.originX;
                float fCheckdouble4 = ((float) varargs.arg(4).checkdouble()) + DrawingLibrary.this.originY;
                float fCheckdouble5 = ((float) varargs.arg(5).checkdouble()) + DrawingLibrary.this.originX;
                float fCheckdouble6 = ((float) varargs.arg(6).checkdouble()) + DrawingLibrary.this.originY;
                float fCheckdouble7 = ((float) varargs.arg(7).checkdouble()) + DrawingLibrary.this.originX;
                float fCheckdouble8 = ((float) varargs.arg(8).checkdouble()) + DrawingLibrary.this.originY;
                int iResolveFrameOpt = DrawingLibrary.this.resolveFrameOpt(varargs.arg(9), Resources.FRAME_RECT);
                float[] uVStream = image.getUVStream();
                int uVStreamPos = image.getUVStreamPos(iResolveFrameOpt);
                float f = uVStream[uVStreamPos];
                float f2 = uVStream[uVStreamPos + 1];
                float f3 = uVStream[uVStreamPos + 2];
                float f4 = uVStream[uVStreamPos + 3];
                engine.drawTextureRect(image.getTexture(iResolveFrameOpt), fCheckdouble, fCheckdouble2, fCheckdouble3, fCheckdouble4, fCheckdouble5, fCheckdouble6, fCheckdouble7, fCheckdouble8, DrawingLibrary.map((float) varargs.arg(10).optdouble(0.0d), f, f3), DrawingLibrary.map((float) varargs.arg(11).optdouble(0.0d), f2, f4), DrawingLibrary.map((float) varargs.arg(12).optdouble(1.0d), f, f3), DrawingLibrary.map((float) varargs.arg(13).optdouble(1.0d), f2, f4), 0);
                return LuaValue.NIL;
            }
        });
        luaValue.set("setUniform", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.38
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                String strCheckjstring = varargs.checkjstring(1);
                if (varargs.isnumber(2)) {
                    float fCheckdouble = (float) varargs.checkdouble(2);
                    if (varargs.isnumber(3)) {
                        float fCheckdouble2 = (float) varargs.checkdouble(3);
                        if (varargs.isnumber(4)) {
                            float fCheckdouble3 = (float) varargs.checkdouble(4);
                            if (varargs.isnumber(5)) {
                                engine.setUniform(strCheckjstring, fCheckdouble, fCheckdouble2, fCheckdouble3, (float) varargs.checkdouble(5));
                            } else {
                                engine.setUniform(strCheckjstring, fCheckdouble, fCheckdouble2, fCheckdouble3);
                            }
                        } else {
                            engine.setUniform(strCheckjstring, fCheckdouble, fCheckdouble2);
                        }
                    } else {
                        engine.setUniform(strCheckjstring, fCheckdouble);
                    }
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(engine.removeUniform(strCheckjstring));
            }
        });
        luaValue.set("flush", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.39
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                engine.flush();
                return LuaValue.NIL;
            }
        });
        luaValue.set("adjustColor", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DrawingLibrary.40
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Color color = DrawingLibrary.parseColor(luaValue3, luaValue4, luaValue5);
                ThemeManager.INSTANCE.transformColorInplace(color);
                return LuaValue.valueOf(color.toHexRGB());
            }
        });
    }

    public final int resolveFrame(LuaValue luaValue) {
        if (luaValue.istable()) {
            LuaValue luaValue2 = SimpleLuaLibrary.origKey;
            if (!luaValue.get(luaValue2).isnil()) {
                int[] iArr = ((AnimationDraft) CoerceLuaToJava.coerce(luaValue.get(luaValue2), AnimationDraft.class)).frames;
                if (iArr.length == 0) {
                    throw new IllegalArgumentException("Draft has no frames");
                }
                return iArr[(this.drawer.time / 200) % iArr.length];
            }
        }
        return luaValue.checkint();
    }

    public final int resolveFrameOpt(LuaValue luaValue, int i) {
        if (luaValue.istable()) {
            LuaValue luaValue2 = SimpleLuaLibrary.origKey;
            if (!luaValue.get(luaValue2).isnil()) {
                int[] iArr = ((AnimationDraft) CoerceLuaToJava.coerce(luaValue.get(luaValue2), AnimationDraft.class)).frames;
                if (iArr.length == 0) {
                    throw new IllegalArgumentException("Draft has no frames");
                }
                return iArr[(this.drawer.time / 200) % iArr.length];
            }
        }
        return luaValue.optint(i);
    }

    public final void assertCity() {
        if (this.city == null) {
            throw new IllegalStateException("Not allowed to use Drawing library here");
        }
    }

    public static Color parseColor(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        if (luaValue.isstring() && luaValue2.isnil() && luaValue3.isnil()) {
            Color.fromHex(luaValue.checkjstring(), Colors.WHITE, tempColor);
        } else {
            tempColor.setTo(luaValue.checkint(), luaValue2.checkint(), luaValue3.checkint());
        }
        return tempColor;
    }
}
