package info.flowersoft.theotown.scripting.libraries;

import com.badlogic.gdx.utils.Base64Coder;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.Hex;
import io.blueflower.stapel2d.drawing.Color;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import vm2.Globals;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.VarArgFunction;

/* JADX INFO: loaded from: classes4.dex */
public class UtilLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public Color tempColor;

    public UtilLibrary() {
        super("libs/Util.lua");
        this.tempColor = new Color();
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.set("urlEncode", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.1
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                try {
                    return LuaValue.valueOf(URLEncoder.encode(luaValue3.checkjstring(), "UTF-8").replace("+", "%20"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    return LuaValue.NIL;
                }
            }
        });
        luaValue.set("urlDecode", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.2
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                try {
                    return LuaValue.valueOf(URLDecoder.decode(luaValue3.checkjstring(), "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    return LuaValue.NIL;
                }
            }
        });
        luaValue.set("hex2color", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.3
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Color colorFromHexRGB = Color.fromHexRGB(varargs.arg1().checkjstring(), null, UtilLibrary.this.tempColor);
                if (colorFromHexRGB != null) {
                    return LuaValue.varargsOf(LuaValue.valueOf(colorFromHexRGB.getRed()), LuaValue.valueOf(colorFromHexRGB.getGreen()), LuaValue.valueOf(colorFromHexRGB.getBlue()));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("color2hex", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.4
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iOptint = luaValue4.optint(iCheckint);
                UtilLibrary.this.tempColor.setTo(iCheckint, iOptint, luaValue5.optint(iOptint), 255);
                return LuaValue.valueOf(UtilLibrary.this.tempColor.toHexRGB());
            }
        });
        luaValue.set("rgb2hsv", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.5
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Color color = DrawingLibrary.parseColor(varargs.arg(1), varargs.arg(2), varargs.arg(3));
                return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(((color.getHue() * 57.295776f) + 360.0f) % 360.0f), LuaValue.valueOf(color.getSaturation()), LuaValue.valueOf(color.getValue())});
            }
        });
        luaValue.set("hsv2rgb", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.6
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Color colorFromHSV = Color.fromHSV((float) (varargs.checkdouble(1) * 0.01745329238474369d), (float) varargs.checkdouble(2), (float) varargs.checkdouble(3));
                return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(colorFromHSV.getRed()), LuaValue.valueOf(colorFromHSV.getGreen()), LuaValue.valueOf(colorFromHSV.getBlue())});
            }
        });
        luaValue.set("base64Encode", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.7
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(Base64Coder.encodeString(luaValue3.checkjstring()));
            }
        });
        luaValue.set("sha256", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.UtilLibrary.8
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                LuaString luaStringCheckstring = luaValue3.checkstring();
                return LuaValue.valueOf(Hex.bin2hex(Hashing.sha(luaStringCheckstring.m_bytes, luaStringCheckstring.m_offset, luaStringCheckstring.m_length)));
            }
        });
    }
}
