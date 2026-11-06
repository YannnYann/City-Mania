package info.flowersoft.theotown.draftloader;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.Base64Coder;
import com.google.android.gms.common.api.Api;
import com.ironsource.C3878ud;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.util.ExternalPluginImporter;
import info.flowersoft.theotown.util.Parallel;
import info.flowersoft.theotown.util.PixmapUtil;
import info.flowersoft.theotown.util.ProgressSetter;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Texture;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class PluginHelper {
    public static ExternalPluginImporter.ExternalPluginData EXTERNAL_PLUGIN_DATA;
    public static AbstractFile FILE;
    public static LocalPluginManifest MANIFEST;
    public static AbstractFile PARENT_FILE;
    public static AbstractFile PATH;
    public static int PLUGIN_ID;
    public static boolean PRIVATE;
    public static boolean USE_PREFETCH;
    public static int currentAreaId;
    public static String error;
    public static AbstractFile errorFile;
    public static AbstractFile errorParentFile;
    public static String errorSrc;
    public static int filledPixels;
    public static int nextAreaId;
    public static OutOfSpaceHandler outOfSpaceHandler;
    public static int textureId;
    public static final List<String> pluginsWithoutManifest = new ArrayList();
    public static int targetX = 0;
    public static int targetY = 0;
    public static int targetWidth = 0;
    public static int targetHeight = 0;
    public static final FrameList areas = new FrameList();
    public static final FrameList cache = new FrameList();
    public static final FrameList newCache = new FrameList();
    public static int cacheIndex = 0;
    public static Runnable cacheMissHandler = new Runnable() { // from class: info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            PluginHelper.$r8$lambda$n8cuivQzDI3ZwxTbjmPhf1Dt9Gs();
        }
    };
    public static final Map<String, Parcel> addedBitmaps = new HashMap();
    public static final OccupationTester occupation = new OccupationTester(32);
    public static final Map<String, int[]> imageSizeCache = new HashMap();
    public static final Map<FileHandle, Integer> loadedSounds = new HashMap();

    public interface OutOfSpaceHandler {
        boolean handle();
    }

    public static /* synthetic */ void $r8$lambda$aD07j_Jf5jy0HYLMAW8w3sZ0g5s() {
    }

    public static /* synthetic */ void $r8$lambda$n8cuivQzDI3ZwxTbjmPhf1Dt9Gs() {
    }

    public static void addTextureArea(int i, int i2, int i3, int i4, int i5) {
        textureId = i;
        targetX = i2;
        targetY = i3;
        targetWidth = i4;
        targetHeight = i5;
        occupation.setup(i4, i5);
        filledPixels = 0;
        areas.add(i, i2, i3, i4, i5);
        int i6 = nextAreaId;
        currentAreaId = i6;
        nextAreaId = i6 + 1;
        Gdx.app.debug("PluginHelper", StringFormatter.format("Use now texture area %d, %d, %d, %d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)));
    }

    public static int countTextureAreas() {
        return areas.size();
    }

    public static void loadCache() {
        FrameList frameList = cache;
        frameList.clear();
        cacheIndex = 0;
        String string = Gdx.app.getPreferences(SSP.migratePrefFile("plugin_placement_cache")).getString("cache", null);
        if (string == null || string.isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            int i = jSONObject.getInt("version");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(C3878ud.c);
            if (i != 3 || jSONArrayOptJSONArray == null) {
                return;
            }
            frameList.load(jSONArrayOptJSONArray);
            if (frameList.matches(0, -1, targetX, targetY, targetWidth, targetHeight)) {
                cacheIndex++;
            } else {
                frameList.clear();
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void saveCache() {
        Preferences preferences = Gdx.app.getPreferences(SSP.migratePrefFile("plugin_placement_cache"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("version", 3);
            jSONObject.put(C3878ud.c, newCache.save());
            preferences.putString("cache", jSONObject.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        preferences.flush();
    }

    public static int getTextureId(int i) {
        return areas.getAreaId(i);
    }

    public static int getTargetX(int i) {
        return areas.getX(i);
    }

    public static int getTargetY(int i) {
        return areas.getY(i);
    }

    public static int getTargetWidth(int i) {
        return areas.getWidth(i);
    }

    public static int getTargetHeight(int i) {
        return areas.getHeight(i);
    }

    public static boolean isPlugin() {
        return FILE != null;
    }

    public static Map<String, Parcel> getAddedBitmaps() {
        return addedBitmaps;
    }

    public static int loadSound(String str) {
        FileHandle fileHandleAbsolute;
        AbstractFile abstractFileResolveFile = resolveFile(str);
        int iLoadSound = 0;
        if (abstractFileResolveFile == null) {
            return 0;
        }
        if (abstractFileResolveFile instanceof RealFile) {
            fileHandleAbsolute = Gdx.files.absolute(((RealFile) abstractFileResolveFile).getRealFile().getAbsolutePath());
        } else {
            FileHandle fileHandleAbsolute2 = Gdx.files.absolute(Resources.getTempFile(abstractFileResolveFile.getName()).getAbsolutePath());
            try {
                fileHandleAbsolute2.write(abstractFileResolveFile.read(), false);
            } catch (IOException unused) {
            }
            fileHandleAbsolute = fileHandleAbsolute2;
        }
        Map<FileHandle, Integer> map = loadedSounds;
        Integer num = map.get(fileHandleAbsolute);
        if (num != null) {
            return num.intValue();
        }
        try {
            iLoadSound = SoundPlayer.getInstance().loadSound(fileHandleAbsolute);
            map.put(fileHandleAbsolute, Integer.valueOf(iLoadSound));
            return iLoadSound;
        } catch (Exception unused2) {
            return iLoadSound;
        }
    }

    public static AbstractFile getMusicPath(String str) {
        return resolveFile(str);
    }

    public static AbstractFile resolveFile(String str) {
        AbstractFile file = PATH.getFile(str);
        return (file == null || !file.isFile()) ? PATH.getFile(str.toLowerCase(Locale.ENGLISH)) : file;
    }

    public static boolean isBinary(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                if (str.length() >= 64 && !str.contains(".")) {
                    Base64Coder.decode(str);
                    return true;
                }
                return false;
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                Gdx.app.debug("PluginHelper", "Path: " + str);
            }
        }
        return false;
    }

    public static Pixmap getBinaryBitmap(String str, boolean z) {
        byte[] bArrDecode = Base64Coder.decode(str);
        Pixmap pixmap = new Pixmap(bArrDecode, 0, bArrDecode.length);
        if (z) {
            PixmapUtil.premultiplyAlpha(pixmap);
        }
        return pixmap;
    }

    public static int[] getImageSize(AbstractFile abstractFile, String str) {
        int[] iArr;
        if (abstractFile != null && abstractFile.isFile()) {
            String lowerCase = abstractFile.toString().toLowerCase(Locale.ENGLISH);
            Map<String, int[]> map = imageSizeCache;
            synchronized (map) {
                iArr = map.get(lowerCase);
            }
            if (iArr != null) {
                return iArr;
            }
            try {
                byte[] bytes = abstractFile.readBytes();
                Pixmap pixmap = new Pixmap(bytes, 0, bytes.length);
                int width = pixmap.getWidth();
                int height = pixmap.getHeight();
                pixmap.dispose();
                int[] iArr2 = {width, height};
                synchronized (map) {
                    map.put(lowerCase, iArr2);
                }
                return iArr2;
            } catch (Exception e) {
                throw new IllegalStateException("Could not load image `" + abstractFile + "`.\nThe image may be damaged or unsupported. Try reinstalling the plugin, or disable it using the menu if the issue continues.\n\nFile size: " + abstractFile.length() + " bytes\nDetails: " + e.getMessage(), e);
            }
        }
        if (!isBinary(str)) {
            return null;
        }
        Pixmap binaryBitmap = getBinaryBitmap(str, false);
        int width2 = binaryBitmap.getWidth();
        int height2 = binaryBitmap.getHeight();
        binaryBitmap.dispose();
        return new int[]{width2, height2};
    }

    public static AbstractBitmapTextureSource getTextureSource(final AbstractFile abstractFile, final String str, final boolean z) {
        if (abstractFile != null && abstractFile.isFile()) {
            return new AbstractBitmapTextureSource() { // from class: info.flowersoft.theotown.draftloader.PluginHelper.1
                @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
                public Pixmap getBitmap(Texture texture) {
                    try {
                        return PixmapUtil.loadPAPixmap(abstractFile.read(), 4);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                }

                @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
                public boolean isAsync() {
                    return z;
                }
            };
        }
        return new AbstractBitmapTextureSource() { // from class: info.flowersoft.theotown.draftloader.PluginHelper.2
            @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
            public Pixmap getBitmap(Texture texture) {
                return PluginHelper.getBinaryBitmap(str, true);
            }

            @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
            public boolean isAsync() {
                return z;
            }
        };
    }

    public static void preloadImages(List<AbstractFile> list, ProgressSetter progressSetter) {
        boolean z;
        if (USE_PREFETCH) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            final ArrayList arrayList = new ArrayList(new HashSet(list));
            final ArrayList arrayList2 = new ArrayList();
            Parallel.computeParallel(Parallel.autoThreadCount(), arrayList.size(), new Parallel.Worker() { // from class: info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda2
                @Override // info.flowersoft.theotown.util.Parallel.Worker
                public final void work(int i, int i2, int i3) {
                    PluginHelper.$r8$lambda$NsTc9JB1XvS9UFZeY4XAObTjdno(arrayList, arrayList2, i, i2, i3);
                }
            });
            Collections.sort(arrayList2);
            OutOfSpaceHandler outOfSpaceHandler2 = outOfSpaceHandler;
            Runnable runnable = cacheMissHandler;
            try {
                try {
                    int size = arrayList2.size();
                    boolean z2 = true;
                    final int[] iArr = new int[1];
                    outOfSpaceHandler = new OutOfSpaceHandler() { // from class: info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda3
                        @Override // info.flowersoft.theotown.draftloader.PluginHelper.OutOfSpaceHandler
                        public final boolean handle() {
                            return PluginHelper.$r8$lambda$ATasJ17FYYKoD1cFqdsdyPb1000();
                        }
                    };
                    cacheMissHandler = new Runnable() { // from class: info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            PluginHelper.m2138$r8$lambda$ZoS0NDZI4yuLhFbMAuzAgIrCZs(iArr);
                        }
                    };
                    int i = 0;
                    int iMin = 0;
                    int i2 = 0;
                    while (i < size && iMin >= -1) {
                        while (i < size) {
                            try {
                                AbstractFile abstractFile = ((PluginImageFile) arrayList2.get(i)).path;
                                z = z2;
                                try {
                                    addBitmapFrame(abstractFile, abstractFile.getName(), null);
                                    i2++;
                                    progressSetter.set(i2, arrayList2.size());
                                    i++;
                                    iMin++;
                                    z2 = z;
                                } catch (OutOfSpaceException unused) {
                                }
                            } catch (OutOfSpaceException unused2) {
                                z = z2;
                            }
                        }
                        z = z2;
                        while (true) {
                            int i3 = size - 1;
                            if (i < i3) {
                                try {
                                    AbstractFile abstractFile2 = ((PluginImageFile) arrayList2.get(i3)).path;
                                    addBitmapFrame(abstractFile2, abstractFile2.getName(), null);
                                    i2++;
                                    progressSetter.set(i2, arrayList2.size());
                                    size--;
                                    iMin++;
                                } catch (OutOfSpaceException unused3) {
                                    if (!outOfSpaceHandler2.handle()) {
                                        break;
                                    }
                                    FrameList frameList = cache;
                                    if (!frameList.isEmpty()) {
                                        if (frameList.getAreaId(cacheIndex) != -1 || frameList.getX(cacheIndex) != targetX || frameList.getY(cacheIndex) != targetY || frameList.getWidth(cacheIndex) != targetWidth || frameList.getHeight(cacheIndex) != targetHeight) {
                                            frameList.clear();
                                        } else {
                                            cacheIndex++;
                                        }
                                    }
                                    newCache.add(-1, targetX, targetY, targetWidth, targetHeight);
                                    iMin = Math.min(iMin - 1, 0);
                                }
                            }
                        }
                        z2 = z;
                    }
                    Gdx.app.debug("PluginHelper", "Finished preloading in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms, " + iArr[0] + " cache miss(es) occurred");
                } catch (Exception e) {
                    e.printStackTrace();
                    clearFrames();
                }
            } finally {
                outOfSpaceHandler = outOfSpaceHandler2;
                cacheMissHandler = runnable;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$NsTc9JB1XvS9UFZeY4XAObTjdno(List list, List list2, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        while (i2 < i3) {
            AbstractFile abstractFile = (AbstractFile) list.get(i2);
            if (abstractFile != null && abstractFile.isFile()) {
                try {
                    int[] imageSize = getImageSize(abstractFile, null);
                    if (imageSize != null) {
                        int i4 = imageSize[0];
                        int i5 = PluginImageFile.MAX_SIZE;
                        if (i4 <= i5 && imageSize[1] <= i5) {
                            PluginImageFile pluginImageFile = new PluginImageFile();
                            pluginImageFile.path = abstractFile;
                            pluginImageFile.w = imageSize[0];
                            pluginImageFile.h = imageSize[1];
                            arrayList.add(pluginImageFile);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            i2++;
        }
        synchronized (list2) {
            list2.addAll(arrayList);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$ATasJ17FYYKoD1cFqdsdyPb1000() {
        throw new OutOfSpaceException();
    }

    /* JADX INFO: renamed from: $r8$lambda$ZoS0NDZI4yuLhFbMAuzAgIrCZ-s, reason: not valid java name */
    public static /* synthetic */ void m2138$r8$lambda$ZoS0NDZI4yuLhFbMAuzAgIrCZs(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static boolean findPlace(int i, int i2, int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        int[] iArr2 = {Api.BaseClientBuilder.API_PRIORITY_OTHER};
        occupation.prepareQuery(iArr, i, i2, iArr2);
        boolean zQuery = true;
        while (zQuery && iArr[0] + i <= targetWidth && iArr[1] + i2 <= targetHeight) {
            zQuery = occupation.query(iArr, i, i2, iArr2);
        }
        return zQuery;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static info.flowersoft.theotown.draftloader.PluginHelper.Parcel addBitmapFrame(info.flowersoft.theotown.util.vfs.AbstractFile r13, java.lang.String r14, int[] r15) {
        /*
            Method dump skipped, instruction units count: 629
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.PluginHelper.addBitmapFrame(info.flowersoft.theotown.util.vfs.AbstractFile, java.lang.String, int[]):info.flowersoft.theotown.draftloader.PluginHelper$Parcel");
    }

    public static void clearFrames() {
        addedBitmaps.clear();
        occupation.clearAndRelease();
    }

    public static float getFillRatio(int i) {
        int targetWidth2 = getTargetWidth(i) * getTargetHeight(i);
        Iterator<Map.Entry<String, Parcel>> it = addedBitmaps.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Parcel value = it.next().getValue();
            if (value.areaId == i) {
                i2 += value.w * value.h;
            }
        }
        return (i2 * 100.0f) / targetWidth2;
    }

    public static boolean reportError(Exception exc, String str) {
        int i;
        int i2;
        errorSrc = PRIVATE ? null : str;
        AbstractFile abstractFile = FILE;
        errorFile = abstractFile;
        errorParentFile = PARENT_FILE;
        if (abstractFile == null) {
            return false;
        }
        File file = new File(Resources.getPluginDir().getPath() + "/error.log");
        try {
            String string = exc.toString();
            Matcher matcher = Pattern.compile("at character ([0-9]+) of").matcher(string);
            if (matcher.find() && str != null) {
                int i3 = Integer.parseInt(matcher.group(1));
                int i4 = 0;
                int i5 = 1;
                int i6 = 1;
                while (true) {
                    i = i3 - 1;
                    if (i4 >= i || i4 >= str.length()) {
                        break;
                    }
                    if (str.charAt(i4) == '\n') {
                        i6++;
                        i5 = 1;
                    } else {
                        i5++;
                    }
                    i4++;
                }
                int i7 = i;
                while (i7 > 0) {
                    int i8 = i7 - 1;
                    if (i8 >= str.length() || str.charAt(i8) == '\n') {
                        break;
                    }
                    i7--;
                }
                do {
                    i7--;
                    if (i7 <= 0 || i7 - 1 >= str.length()) {
                        break;
                    }
                } while (str.charAt(i2) != '\n');
                int i9 = i;
                while (i9 >= 0) {
                    int i10 = i9 + 1;
                    if (i10 >= str.length() || str.charAt(i10) == '\n') {
                        break;
                    }
                    i9 = i10;
                }
                string = matcher.replaceFirst("at line " + i6 + ", char " + i5 + ". Excerpt: \n" + Matcher.quoteReplacement(str.substring(Math.max(i7, 0), Math.max(Math.min(i, str.length()), 0)) + "--ERROR->>>" + str.substring(Math.max(Math.min(i, str.length() - 1), 0), Math.min(i9 + 1, str.length()))) + "\n\nFull source:");
            }
            AbstractFile abstractFile2 = FILE;
            if (PRIVATE) {
                abstractFile2 = errorParentFile;
            }
            error = "In " + abstractFile2 + ":\n\n" + string;
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            bufferedWriter.write(error);
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return true;
    }

    public static boolean errorOccured() {
        return error != null;
    }

    public static String getErrorMessage() {
        return error;
    }

    public static String getErrorSource() {
        return errorSrc;
    }

    public static AbstractFile getErrorParentFile() {
        return errorParentFile;
    }

    public static String getErrorSourceId() {
        AbstractFile abstractFile = errorFile;
        if (abstractFile == null) {
            return null;
        }
        return abstractFile.getName() + ":" + error.length();
    }

    public static void reportPluginWithoutManifest(String str) {
        pluginsWithoutManifest.add(str);
    }

    public static boolean hasPluginsWithoutManifest() {
        return !pluginsWithoutManifest.isEmpty();
    }

    public static List<String> getPluginsWithoutManifest() {
        return pluginsWithoutManifest;
    }

    public static void afterLoading() {
        occupation.clearAndRelease();
        cache.clearAndRelease();
        imageSizeCache.clear();
        newCache.clearAndRelease();
    }

    public static void dispose() {
        textureId = 0;
        nextAreaId = 0;
        MANIFEST = null;
        PLUGIN_ID = 0;
        PATH = null;
        FILE = null;
        PARENT_FILE = null;
        EXTERNAL_PLUGIN_DATA = null;
        PRIVATE = false;
        filledPixels = 0;
        error = null;
        errorSrc = null;
        errorFile = null;
        errorParentFile = null;
        pluginsWithoutManifest.clear();
        targetX = 0;
        targetY = 0;
        targetWidth = 0;
        targetHeight = 0;
        areas.clear();
        cache.clear();
        newCache.clear();
        cacheIndex = 0;
        outOfSpaceHandler = null;
        cacheMissHandler = new Runnable() { // from class: info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PluginHelper.$r8$lambda$aD07j_Jf5jy0HYLMAW8w3sZ0g5s();
            }
        };
        addedBitmaps.clear();
        occupation.clearAndRelease();
        imageSizeCache.clear();
        loadedSounds.clear();
    }

    public static class OutOfSpaceException extends RuntimeException {
        public OutOfSpaceException() {
        }
    }

    public static class Parcel {
        public final int areaId;
        public final int h;
        public final int textureId;
        public final int w;
        public final int x;
        public final int y;

        public Parcel(int i, int i2, int i3, int i4, int i5, int i6) {
            this.x = i;
            this.y = i2;
            this.w = i3;
            this.h = i4;
            this.textureId = i5;
            this.areaId = i6;
        }
    }
}
