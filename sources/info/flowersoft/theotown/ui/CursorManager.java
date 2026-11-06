package info.flowersoft.theotown.ui;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Cursor;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import com.badlogic.gdx.math.MathUtils;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.BoundedXorInputStream;
import info.flowersoft.theotown.util.BytesCallbackFunction;
import info.flowersoft.theotown.util.FileDecoder;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.PixmapUtil;
import io.blueflower.stapel2d.util.MathUtil;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.IntBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.UInt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: CursorManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CursorManager {
    public static final CursorManager INSTANCE;
    public static Map<CursorType, ? extends Cursor> cursorsByType;
    public static Map<CursorType, ? extends Cursor> darkCursorsByType;
    public static final boolean isSupported;
    public static int loadedScaling;
    public static CursorStyle loadedStyle;

    static {
        CursorManager cursorManager = new CursorManager();
        INSTANCE = cursorManager;
        isSupported = cursorManager.probeCursorSupport();
        loadedScaling = 1;
        cursorsByType = MapsKt__MapsKt.emptyMap();
        darkCursorsByType = MapsKt__MapsKt.emptyMap();
    }

    public final boolean isSupported() {
        return isSupported;
    }

    public final void setCursor(CursorType cursor, boolean z) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        if (isSupported) {
            if (Settings.modifyCursor) {
                CursorStyle selectedStyle = getSelectedStyle();
                int selectedScaling = getSelectedScaling();
                if (selectedStyle != loadedStyle || selectedScaling != loadedScaling) {
                    load(selectedStyle, selectedScaling);
                }
                Cursor cursor2 = (z ? darkCursorsByType : cursorsByType).get(cursor);
                if (cursor2 != null) {
                    Gdx.graphics.setCursor(cursor2);
                    return;
                }
                return;
            }
            Gdx.graphics.setSystemCursor(Cursor.SystemCursor.Arrow);
        }
    }

    public final void load(CursorStyle cursorStyle, int i) {
        if (isSupported) {
            Gdx.graphics.setSystemCursor(Cursor.SystemCursor.Arrow);
            Iterator<Map.Entry<CursorType, ? extends Cursor>> it = cursorsByType.entrySet().iterator();
            while (it.hasNext()) {
                Cursor value = it.next().getValue();
                if (value != null) {
                    value.dispose();
                }
            }
            Iterator<Map.Entry<CursorType, ? extends Cursor>> it2 = darkCursorsByType.entrySet().iterator();
            while (it2.hasNext()) {
                Cursor value2 = it2.next().getValue();
                if (value2 != null) {
                    value2.dispose();
                }
            }
            loadedStyle = cursorStyle;
            loadedScaling = i;
            cursorsByType = loadCursorsWithPalette(cursorStyle.getPalette(), i);
            darkCursorsByType = loadCursorsWithPalette(cursorStyle.getDarkPalette(), i);
        }
    }

    public final Map<CursorType, Cursor> loadCursorsWithPalette(CursorPalette cursorPalette, int i) throws IOException {
        Pixmap pixmap = readPixmap("cursor.lby");
        if (pixmap == null) {
            throw new IllegalStateException();
        }
        applyPalette(pixmap, cursorPalette);
        Map<CursorType, Cursor> mapExtractCursors = extractCursors(pixmap, i);
        pixmap.dispose();
        return mapExtractCursors;
    }

    public final boolean probeCursorSupport() {
        Pixmap pixmap = new Pixmap(32, 32, Pixmap.Format.RGBA8888);
        Cursor cursorNewCursor = Gdx.graphics.newCursor(pixmap, 0, 0);
        if (cursorNewCursor != null) {
            cursorNewCursor.dispose();
        }
        pixmap.dispose();
        return cursorNewCursor != null;
    }

    public final void applyPalette(Pixmap pixmap, CursorPalette cursorPalette) {
        int rgba = cursorPalette.getOutline().toRGBA();
        int rgba2 = cursorPalette.getArea().toRGBA();
        int rgba3 = cursorPalette.getHighlight().toRGBA();
        int rgba4 = cursorPalette.getShadow().toRGBA();
        IntBuffer intBufferAsIntBuffer = pixmap.getPixels().asIntBuffer();
        int iCapacity = intBufferAsIntBuffer.capacity();
        for (int i = 0; i < iCapacity; i++) {
            int i2 = intBufferAsIntBuffer.get(i);
            int iM2792constructorimpl = UInt.m2792constructorimpl(i2);
            if (iM2792constructorimpl == -858993409) {
                i2 = rgba2;
            } else if (iM2792constructorimpl == -1) {
                i2 = rgba3;
            } else if (iM2792constructorimpl == 255) {
                i2 = rgba;
            } else if (iM2792constructorimpl == 2122681599) {
                i2 = rgba4;
            }
            intBufferAsIntBuffer.put(i, i2);
        }
    }

    public final Map<CursorType, Cursor> extractCursors(Pixmap pixmap, int i) {
        return MapsKt__MapsKt.mapOf(TuplesKt.to(CursorType.Normal, extractCursor(pixmap, 48, 0, 16, 24, 0, 0, i)), TuplesKt.to(CursorType.Delete, extractCursor(pixmap, 48, 24, 16, 24, 0, 0, i)), TuplesKt.to(CursorType.Build, extractCursor(pixmap, 88, 24, 24, 24, 0, 0, i)), TuplesKt.to(CursorType.Crosshair, extractCursor(pixmap, 0, 0, 48, 48, 24, 24, i)), TuplesKt.to(CursorType.Hand, extractCursor(pixmap, 64, 24, 24, 24, 8, 2, i)), TuplesKt.to(CursorType.Move, extractCursor(pixmap, 64, 0, 24, 24, 12, 12, i)), TuplesKt.to(CursorType.NotAllowed, extractCursor(pixmap, 88, 0, 24, 24, 12, 12, i)), TuplesKt.to(CursorType.Wait, extractCursor(pixmap, 112, 0, 24, 24, 12, 12, i)), TuplesKt.to(CursorType.NoMoney, extractCursor(pixmap, 112, 24, 24, 24, 0, 0, i)));
    }

    public final CursorStyle getSelectedStyle() {
        String str = Settings.cursorStyle;
        if (str == null || StringsKt__StringsKt.isBlank(str)) {
            return CursorStyle.Default;
        }
        CursorStyle cursorStyle = loadedStyle;
        CursorStyle cursorStyle2 = null;
        if (Intrinsics.areEqual(cursorStyle != null ? cursorStyle.name() : null, str)) {
            CursorStyle cursorStyle3 = loadedStyle;
            Intrinsics.checkNotNull(cursorStyle3);
            return cursorStyle3;
        }
        Iterator<CursorStyle> it = CursorStyle.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CursorStyle next = it.next();
            if (Intrinsics.areEqual(next.name(), str)) {
                cursorStyle2 = next;
                break;
            }
        }
        CursorStyle cursorStyle4 = cursorStyle2;
        return cursorStyle4 == null ? CursorStyle.Default : cursorStyle4;
    }

    public final int getSelectedScaling() {
        return MathUtils.clamp(Settings.cursorScaling, 1, 16);
    }

    public final Cursor extractCursor(Pixmap pixmap, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = i3 * i7;
        int i9 = i4 * i7;
        Pixmap pixmap2 = new Pixmap(MathUtil.nextPowerOfTwo(i8), MathUtil.nextPowerOfTwo(i9), Pixmap.Format.RGBA8888);
        pixmap2.setFilter(Pixmap.Filter.NearestNeighbour);
        pixmap2.drawPixmap(pixmap, i, i2, i3, i4, 0, 0, i8, i9);
        Cursor cursorNewCursor = Gdx.graphics.newCursor(pixmap2, i5 * i7, i6 * i7);
        pixmap2.dispose();
        return cursorNewCursor;
    }

    public final Pixmap readPixmap(String str) throws IOException {
        String strBin2hex;
        byte[] bArrDigest;
        PackedUtils packedUtils = PackedUtils.INSTANCE;
        Files files = Gdx.files;
        String str2 = str + ":ae6bb9dcccb3ee65a2a5e1964c8ca37b";
        try {
            Charset charsetForName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = str2.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            try {
                bArrDigest = MessageDigest.getInstance("md5").digest(bytes);
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                bArrDigest = new byte[0];
            }
            strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            strBin2hex = "";
        }
        FileHandle fileHandleInternal = files.internal(strBin2hex);
        FileDecoder fileDecoder = new FileDecoder();
        InputStream inputStream = fileHandleInternal.read();
        Intrinsics.checkNotNullExpressionValue(inputStream, "read(...)");
        BufferedInputStream bufferedInputStream = inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, 8192);
        BytesCallbackFunction bytesCallbackFunctionDecode = fileDecoder.decode(bufferedInputStream, str);
        bufferedInputStream.skip(bytesCallbackFunctionDecode.getPaddingPrefix());
        BoundedXorInputStream boundedXorInputStream = new BoundedXorInputStream(bufferedInputStream, bytesCallbackFunctionDecode.getMaskBytes(), bytesCallbackFunctionDecode.getLen());
        try {
            Pixmap pixmap = new Pixmap(new Gdx2DPixmap(boundedXorInputStream, 4));
            boundedXorInputStream.close();
            PixmapUtil.premultiplyAlpha(pixmap);
            return pixmap;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }
}
