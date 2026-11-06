package info.flowersoft.theotown.scripting.libraries;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.LuahelpersKt;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.util.PixmapUtil;
import io.blueflower.stapel2d.drawing.Texture;
import kotlin.jvm.internal.Intrinsics;
import vm2.Globals;
import vm2.LuaInteger;
import vm2.LuaTable;
import vm2.LuaUserdata;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: compiled from: PixmapLibrary.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PixmapLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public PixmapLibrary() {
        super("libs/Pixmap.lua");
    }

    public final Pixmap loadPixmap(byte[] bArr, Pixmap.Format format) {
        return new Pixmap(new Gdx2DPixmap(bArr, 0, bArr.length, Pixmap.Format.toGdx2DPixmapFormat(format)));
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue lib, LuaValue privateLib, Globals globals) {
        Intrinsics.checkNotNullParameter(lib, "lib");
        Intrinsics.checkNotNullParameter(privateLib, "privateLib");
        Intrinsics.checkNotNullParameter(globals, "globals");
        lib.set("create", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$1
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg1, LuaValue arg2) {
                Intrinsics.checkNotNullParameter(arg1, "arg1");
                Intrinsics.checkNotNullParameter(arg2, "arg2");
                LuaUserdata luaUserdataWrapPixmap = this.this$0.wrapPixmap(new Pixmap(arg1.checkint(), arg2.checkint(), Pixmap.Format.RGBA8888));
                return luaUserdataWrapPixmap == null ? LuaValue.NIL : luaUserdataWrapPixmap;
            }
        });
        lib.set("load", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$2
            /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public vm2.LuaValue call(vm2.LuaValue r4) throws java.io.IOException {
                /*
                    r3 = this;
                    java.lang.String r0 = "arg"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                    boolean r0 = r4.isstring()
                    if (r0 == 0) goto L33
                    java.lang.String r0 = r4.checkjstring()
                    int r0 = r0.length()
                    r1 = 64
                    if (r0 < r1) goto L33
                    java.lang.String r0 = r4.checkjstring()     // Catch: java.lang.IllegalArgumentException -> L2f
                    byte[] r0 = com.badlogic.gdx.utils.Base64Coder.decode(r0)     // Catch: java.lang.IllegalArgumentException -> L2f
                    info.flowersoft.theotown.scripting.libraries.PixmapLibrary r1 = r3.this$0     // Catch: java.lang.IllegalArgumentException -> L2f
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: java.lang.IllegalArgumentException -> L2f
                    com.badlogic.gdx.graphics.Pixmap$Format r2 = com.badlogic.gdx.graphics.Pixmap.Format.RGBA8888     // Catch: java.lang.IllegalArgumentException -> L2f
                    com.badlogic.gdx.graphics.Pixmap r0 = info.flowersoft.theotown.scripting.libraries.PixmapLibrary.access$loadPixmap(r1, r0, r2)     // Catch: java.lang.IllegalArgumentException -> L2f
                    vm2.LuaUserdata r4 = info.flowersoft.theotown.scripting.libraries.PixmapLibrary.access$wrapPixmap(r1, r0)     // Catch: java.lang.IllegalArgumentException -> L2f
                    goto L5c
                L2f:
                    r0 = move-exception
                    r0.printStackTrace()
                L33:
                    info.flowersoft.theotown.util.vfs.AbstractFile r4 = info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.readPath(r4)
                    if (r4 == 0) goto L5a
                    boolean r0 = r4.isFile()
                    if (r0 == 0) goto L5a
                    byte[] r4 = r4.readBytes()     // Catch: java.io.IOError -> L53
                    info.flowersoft.theotown.scripting.libraries.PixmapLibrary r0 = r3.this$0     // Catch: java.io.IOError -> L53
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r4)     // Catch: java.io.IOError -> L53
                    com.badlogic.gdx.graphics.Pixmap$Format r1 = com.badlogic.gdx.graphics.Pixmap.Format.RGBA8888     // Catch: java.io.IOError -> L53
                    com.badlogic.gdx.graphics.Pixmap r4 = info.flowersoft.theotown.scripting.libraries.PixmapLibrary.access$loadPixmap(r0, r4, r1)     // Catch: java.io.IOError -> L53
                    vm2.LuaUserdata r4 = info.flowersoft.theotown.scripting.libraries.PixmapLibrary.access$wrapPixmap(r0, r4)     // Catch: java.io.IOError -> L53
                    goto L5c
                L53:
                    r4 = move-exception
                    r4.printStackTrace()
                    vm2.LuaValue r4 = vm2.LuaValue.NIL
                    goto L5c
                L5a:
                    vm2.LuaValue r4 = vm2.LuaValue.NIL
                L5c:
                    if (r4 != 0) goto L60
                    vm2.LuaValue r4 = vm2.LuaValue.NIL
                L60:
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$2.call(vm2.LuaValue):vm2.LuaValue");
            }
        });
        lib.set("download", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$3
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg1, LuaValue arg2) {
                Intrinsics.checkNotNullParameter(arg1, "arg1");
                Intrinsics.checkNotNullParameter(arg2, "arg2");
                ScriptingEnvironment.getInstance().assertPrivileged("Pixmap.download");
                boolean zOptboolean = arg2.optboolean(true);
                int iResolveFrame = this.this$0.resolveFrame(arg1);
                int textureId = Resources.IMAGE_WORLD.getTextureId(iResolveFrame);
                Resources.IMAGE_WORLD.selectTexture(textureId);
                int x = (int) Resources.IMAGE_WORLD.getX(iResolveFrame);
                int y = (int) Resources.IMAGE_WORLD.getY(iResolveFrame);
                Texture textureOfId = Resources.IMAGE_WORLD.getTextureOfId(textureId);
                Pixmap pixmap = new Pixmap((int) Resources.IMAGE_WORLD.getWidth(iResolveFrame), (int) Resources.IMAGE_WORLD.getHeight(iResolveFrame), Pixmap.Format.RGBA8888);
                textureOfId.getSource().download(Resources.skin.engine, pixmap, x, y, 0);
                if (zOptboolean) {
                    PixmapUtil.reversePremultiplyAlpha(pixmap);
                }
                LuaUserdata luaUserdataWrapPixmap = this.this$0.wrapPixmap(pixmap);
                return luaUserdataWrapPixmap == null ? LuaValue.NIL : luaUserdataWrapPixmap;
            }
        });
        lib.set("packColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$4
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                LuaValue luaValueArg = args.arg(1);
                Intrinsics.checkNotNullExpressionValue(luaValueArg, "arg(...)");
                LuaValue luaValueArg2 = args.arg(2);
                Intrinsics.checkNotNullExpressionValue(luaValueArg2, "arg(...)");
                LuaValue luaValueArg3 = args.arg(3);
                Intrinsics.checkNotNullExpressionValue(luaValueArg3, "arg(...)");
                LuaValue luaValueArg4 = args.arg(4);
                Intrinsics.checkNotNullExpressionValue(luaValueArg4, "arg(...)");
                LuaInteger lua = LuahelpersKt.toLua(luaValueArg4.optint(255) | (luaValueArg.checkint() << 24) | (luaValueArg2.checkint() << 16) | (luaValueArg3.checkint() << 8));
                return lua != null ? lua : LuaValue.NIL;
            }
        });
        lib.set("unpackColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary.inject.5
            public final LuaValue[] returnValues;
            public final Varargs varargs;

            {
                LuaValue[] luaValueArr = new LuaValue[4];
                for (int i = 0; i < 4; i++) {
                    luaValueArr[i] = LuaValue.NIL;
                }
                this.returnValues = luaValueArr;
                this.varargs = LuaValue.varargsOf(luaValueArr);
            }

            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                int iCheckint = args.arg1().checkint();
                this.returnValues[0] = LuaValue.valueOf(iCheckint >>> 24);
                this.returnValues[1] = LuaValue.valueOf((iCheckint >>> 16) & 255);
                this.returnValues[2] = LuaValue.valueOf((iCheckint >>> 8) & 255);
                this.returnValues[3] = LuaValue.valueOf(iCheckint & 255);
                Varargs varargs = this.varargs;
                Intrinsics.checkNotNullExpressionValue(varargs, "varargs");
                return varargs;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int resolveFrame(LuaValue luaValue) {
        if (luaValue.istable()) {
            LuaValue luaValue2 = SimpleLuaLibrary.origKey;
            if (!luaValue.get(luaValue2).isnil()) {
                Object objCoerce = CoerceLuaToJava.coerce(luaValue.get(luaValue2), AnimationDraft.class);
                Intrinsics.checkNotNull(objCoerce, "null cannot be cast to non-null type info.flowersoft.theotown.draft.AnimationDraft");
                int[] iArr = ((AnimationDraft) objCoerce).frames;
                if (iArr.length == 0) {
                    throw new IllegalArgumentException("Draft has no frames");
                }
                return iArr[0];
            }
        }
        return luaValue.checkint();
    }

    public final LuaUserdata wrapPixmap(Pixmap pixmap) {
        pixmap.setBlending(Pixmap.Blending.None);
        LuaUserdata luaUserdataUserdataOf = LuaValue.userdataOf(pixmap);
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("__index", getPixmapTable(pixmap));
        luaUserdataUserdataOf.setmetatable(luaTableTableOf);
        Intrinsics.checkNotNull(luaUserdataUserdataOf);
        return luaUserdataUserdataOf;
    }

    public final LuaTable getPixmapTable(final Pixmap pixmap) {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("getWidth", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$1
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                LuaInteger lua = LuahelpersKt.toLua(pixmap.getWidth());
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        luaTableTableOf.set("getHeight", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$2
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                LuaInteger lua = LuahelpersKt.toLua(pixmap.getHeight());
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        luaTableTableOf.set("getSize", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary.getPixmapTable.3
            public final LuaValue[] returnValues;
            public final Varargs varargs;

            {
                LuaValue[] luaValueArr = new LuaValue[3];
                for (int i = 0; i < 3; i++) {
                    luaValueArr[i] = LuaValue.NIL;
                }
                this.returnValues = luaValueArr;
                this.varargs = LuaValue.varargsOf(luaValueArr);
            }

            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                this.returnValues[0] = LuahelpersKt.toLua(pixmap.getWidth());
                this.returnValues[1] = LuahelpersKt.toLua(pixmap.getHeight());
                Varargs varargs = this.varargs;
                Intrinsics.checkNotNullExpressionValue(varargs, "varargs");
                return varargs;
            }
        });
        luaTableTableOf.set("setPixel", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$3
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                Intrinsics.checkNotNullExpressionValue(args.arg(1), "arg(...)");
                LuaValue luaValueArg = args.arg(2);
                Intrinsics.checkNotNullExpressionValue(luaValueArg, "arg(...)");
                LuaValue luaValueArg2 = args.arg(3);
                Intrinsics.checkNotNullExpressionValue(luaValueArg2, "arg(...)");
                LuaValue luaValueArg3 = args.arg(4);
                Intrinsics.checkNotNullExpressionValue(luaValueArg3, "arg(...)");
                pixmap.drawPixel(luaValueArg.checkint(), luaValueArg2.checkint(), luaValueArg3.checkint());
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("getPixel", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$4
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg1, LuaValue arg2, LuaValue arg3) {
                Intrinsics.checkNotNullParameter(arg1, "arg1");
                Intrinsics.checkNotNullParameter(arg2, "arg2");
                Intrinsics.checkNotNullParameter(arg3, "arg3");
                LuaInteger lua = LuahelpersKt.toLua(pixmap.getPixel(arg2.checkint(), arg3.checkint()));
                return lua == null ? LuaValue.NIL : lua;
            }
        });
        luaTableTableOf.set("draw", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary.getPixmapTable.6
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                Object objCheckuserdata = args.arg(2).checkuserdata(Pixmap.class);
                Intrinsics.checkNotNull(objCheckuserdata, "null cannot be cast to non-null type com.badlogic.gdx.graphics.Pixmap");
                Pixmap pixmap2 = (Pixmap) objCheckuserdata;
                int iCheckint = args.arg(3).checkint();
                int iCheckint2 = args.arg(4).checkint();
                int iOptint = args.arg(5).optint(1);
                int iOptint2 = args.arg(6).optint(0);
                int iOptint3 = args.arg(7).optint(0);
                int iOptint4 = args.arg(8).optint(pixmap2.getWidth());
                int iOptint5 = args.arg(9).optint(pixmap2.getHeight());
                if (iOptint == 0) {
                    pixmap.setBlending(Pixmap.Blending.None);
                } else if (iOptint == 1) {
                    pixmap.setBlending(Pixmap.Blending.SourceOver);
                }
                if (iOptint == 0 || iOptint == 1) {
                    pixmap.drawPixmap(pixmap2, iCheckint, iCheckint2, iOptint2, iOptint3, iOptint4, iOptint5);
                    pixmap.setBlending(Pixmap.Blending.None);
                } else if (iOptint == 2) {
                    PixmapUtil.blendPixmap(pixmap, iCheckint, iCheckint2, pixmap2, iOptint2, iOptint3, iOptint4, iOptint5);
                } else if (iOptint == 3) {
                    PixmapUtil.blendPixmapOverlay(pixmap, iCheckint, iCheckint2, pixmap2, iOptint2, iOptint3, iOptint4, iOptint5);
                } else {
                    throw new IllegalArgumentException("Unknown blending option " + iOptint);
                }
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("upload", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary.getPixmapTable.7
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg1, LuaValue arg2, LuaValue arg3) {
                Intrinsics.checkNotNullParameter(arg1, "arg1");
                Intrinsics.checkNotNullParameter(arg2, "arg2");
                Intrinsics.checkNotNullParameter(arg3, "arg3");
                ScriptingEnvironment.getInstance().assertPrivileged("Pixmap:upload");
                int iResolveFrame = PixmapLibrary.this.resolveFrame(arg2);
                boolean zOptboolean = arg3.optboolean(true);
                int textureId = Resources.IMAGE_WORLD.getTextureId(iResolveFrame);
                Resources.IMAGE_WORLD.selectTexture(textureId);
                int x = (int) Resources.IMAGE_WORLD.getX(iResolveFrame);
                int y = (int) Resources.IMAGE_WORLD.getY(iResolveFrame);
                Texture textureOfId = Resources.IMAGE_WORLD.getTextureOfId(textureId);
                if (zOptboolean) {
                    Pixmap pixmap2 = new Pixmap(pixmap.getWidth(), pixmap.getHeight(), pixmap.getFormat());
                    pixmap2.setBlending(Pixmap.Blending.None);
                    pixmap2.drawPixmap(pixmap, 0, 0);
                    PixmapUtil.premultiplyAlpha(pixmap2);
                    textureOfId.getSource().upload(pixmap2, x, y, 0);
                    pixmap2.dispose();
                } else {
                    textureOfId.getSource().upload(pixmap, x, y, 0);
                }
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("premultiplyAlpha", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$5
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                PixmapUtil.premultiplyAlpha(pixmap);
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("reversePremultiplyAlpha", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$6
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                PixmapUtil.reversePremultiplyAlpha(pixmap);
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("dispose", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$7
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue arg) {
                Intrinsics.checkNotNullParameter(arg, "arg");
                pixmap.dispose();
                return LuaValue.NIL;
            }
        });
        Intrinsics.checkNotNull(luaTableTableOf);
        return luaTableTableOf;
    }
}
