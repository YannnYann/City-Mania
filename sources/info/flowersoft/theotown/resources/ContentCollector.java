package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import com.badlogic.gdx.utils.Base64Coder;
import com.ironsource.R6;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.ManifestIndex;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draftloader.Generator;
import info.flowersoft.theotown.stages.RecoveryMode;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.util.DecInputStream;
import info.flowersoft.theotown.util.ExternalPluginImporter;
import info.flowersoft.theotown.util.LuaKeyImplementation;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.PluginFileDecoder;
import info.flowersoft.theotown.util.ProgressSetter;
import info.flowersoft.theotown.util.SignatureVerifier;
import info.flowersoft.theotown.util.StopWatch;
import info.flowersoft.theotown.util.TempLua;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import info.flowersoft.theotown.util.vfs.VirtualFile;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.StaticBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import vm2.Globals;
import vm2.LuaClosure;

/* JADX INFO: loaded from: classes4.dex */
public final class ContentCollector {
    public static File tempPluginsDir;
    public ExternalPluginImporter externalPluginImporter;
    public int pluginCount;
    public static final Pattern IMAGE_PATTERN = Pattern.compile("\"bmp\"\\s*:\\s*\"([^\"]*)\"");
    public static final Comparator<AbstractFile> fileComparator = new Comparator() { // from class: info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ContentCollector.$r8$lambda$cifllGi66bGvTuBe9VB3_dTJeKY((AbstractFile) obj, (AbstractFile) obj2);
        }
    };
    public static final String uuid = UUID.randomUUID().toString();

    public interface ZipDataSource {
        ZipInputStream get() throws IOException;
    }

    public static /* synthetic */ int $r8$lambda$cifllGi66bGvTuBe9VB3_dTJeKY(AbstractFile abstractFile, AbstractFile abstractFile2) {
        String name = abstractFile.getName();
        Locale locale = Locale.ENGLISH;
        return name.toLowerCase(locale).compareTo(abstractFile2.getName().toLowerCase(locale));
    }

    public static List<String> getPatchStrings() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getResContent("patches.lby"));
        return arrayList;
    }

    public void collect(final List<ContentData> list, final List<AbstractFile> list2, final Stapel2DGameContext stapel2DGameContext, final ProgressSetter progressSetter) {
        StopWatch.start("Collector content strings");
        StopWatch.start("Collector prepare plugin dir");
        prepareInternalPluginDir();
        StopWatch.stop("Collector prepare plugin dir");
        StopWatch.start("Collector native contents");
        addContents(list, stapel2DGameContext);
        StopWatch.stop("Collector native contents");
        StopWatch.start("Collector generated");
        addGenerated(list);
        StopWatch.stop("Collector generated");
        StopWatch.start("Parsing plugin dir");
        RealFile realFile = RealFile.parse(Resources.getPluginDir(), "plugins", true);
        StopWatch.stop("Parsing plugin dir");
        StopWatch.start("Collector plugins");
        this.pluginCount = 0;
        addPlugins(list, list2, realFile, null, false, true, -1);
        TheoTown.analytics.logEvent("PluginCount", "" + this.pluginCount, "");
        StopWatch.stop("Collector plugins");
        StopWatch.start("Collector managed plugins");
        ManagedPluginsController.getInstance().duringUpdates(new Runnable() { // from class: info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ContentCollector.$r8$lambda$9sN4ovSRyFKZTVAExaLKOa7b5Io(this.f$0, list, list2, stapel2DGameContext, progressSetter);
            }
        });
        StopWatch.stop("Collector managed plugins");
        StopWatch.stop("Collector content strings");
        ManagedCache.INSTANCE.removeUnusedOfType("ct");
        ManifestIndex.INSTANCE.unload();
        Gdx.app.log("ContentCollector", "Loaded " + VirtualFile.loadedSize + " / " + (VirtualFile.loadedSize + VirtualFile.volatileSize));
    }

    public static /* synthetic */ void $r8$lambda$9sN4ovSRyFKZTVAExaLKOa7b5Io(ContentCollector contentCollector, List list, List list2, Stapel2DGameContext stapel2DGameContext, ProgressSetter progressSetter) {
        contentCollector.pluginCount = 0;
        contentCollector.addManagedPlugins(list, list2, ManagedPluginsController.getInstance().getDownloadedPlugins(), stapel2DGameContext, progressSetter);
        TheoTown.analytics.logEvent("ManagedPluginCount", "" + contentCollector.pluginCount, "");
    }

    public static void prepareInternalPluginDir() {
        final File tempPluginsDir2 = getTempPluginsDir();
        deleteDir(tempPluginsDir2);
        tempPluginsDir2.mkdirs();
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: info.flowersoft.theotown.resources.ContentCollector.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                ContentCollector.deleteDir(tempPluginsDir2);
            }
        });
    }

    public static void deleteDir(File file) {
        if (file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory() && !file2.getName().equals(".") && !file2.getName().equals("..")) {
                        deleteDir(file2);
                    } else if (file2.isFile()) {
                        file2.delete();
                    }
                }
            }
            file.delete();
        }
    }

    public static void addContents(List<ContentData> list, Stapel2DGameContext stapel2DGameContext) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("content_scripts.lby");
        arrayList.add("content_template.lby");
        arrayList.add("content_achievements.lby");
        arrayList.add("content_topics.lby");
        arrayList.add("content_helpful_topics.lby");
        arrayList.add("content_biome.lby");
        arrayList.add("content_budget.lby");
        arrayList.add("content_category.lby");
        arrayList.add("content_tool.lby");
        arrayList.add("content_feature.lby");
        arrayList.add("content_pressure.lby");
        arrayList.add("content_influence.lby");
        arrayList.add("content_rank.lby");
        arrayList.add("content_zone.lby");
        arrayList.add("content_fence.lby");
        arrayList.add("content_weather.lby");
        arrayList.add("content_smoke.lby");
        arrayList.add("content_animation.lby");
        arrayList.add("content_icon.lby");
        arrayList.add("content_buildingicon.lby");
        arrayList.add("content_light.lby");
        arrayList.add("content_construction.lby");
        arrayList.add("content_ts_core.lby");
        arrayList.add("content_car.lby");
        arrayList.add("content_buses.lby");
        arrayList.add("content_ship.lby");
        arrayList.add("content_train.lby");
        arrayList.add("content_elevatedrailway.lby");
        arrayList.add("content_metro.lby");
        arrayList.add("content_monorail.lby");
        arrayList.add("content_helicopter.lby");
        arrayList.add("content_airplane.lby");
        arrayList.add("content_pedestrian.lby");
        arrayList.add("content_ground.lby");
        arrayList.add("content_tree.lby");
        arrayList.add("content_energy.lby");
        arrayList.add("content_water.lby");
        arrayList.add("content_road_decoration.lby");
        arrayList.add("content_road.lby");
        arrayList.add("content_intersections.lby");
        arrayList.add("content_residential.lby");
        arrayList.add("content_commercial.lby");
        arrayList.add("content_industrial.lby");
        arrayList.add("content_farm.lby");
        arrayList.add("content_harbor.lby");
        arrayList.add("content_generic_pier.lby");
        arrayList.add("content_park.lby");
        arrayList.add("content_sport.lby");
        arrayList.add("content_public.lby");
        arrayList.add("content_religion.lby");
        arrayList.add("content_award.lby");
        arrayList.add("content_landmark.lby");
        arrayList.add("content_firebrigade.lby");
        arrayList.add("content_police.lby");
        arrayList.add("content_medic.lby");
        arrayList.add("content_education.lby");
        arrayList.add("content_destruction.lby");
        arrayList.add("content_busbuildings.lby");
        arrayList.add("content_decoration.lby");
        arrayList.add("content_wintertime.lby");
        arrayList.add("content_firework.lby");
        arrayList.add("content_terrain.lby");
        arrayList.add("content_disaster.lby");
        arrayList.add("content_railway.lby");
        arrayList.add("content_body_disposal.lby");
        arrayList.add("content_waste_disposal.lby");
        arrayList.add("content_terrain_premium.lby");
        arrayList.add("content_residential_premium.lby");
        arrayList.add("content_commercial_premium.lby");
        arrayList.add("content_industrial_premium.lby");
        arrayList.add("content_award_premium.lby");
        arrayList.add("content_park_premium.lby");
        arrayList.add("content_religion_premium.lby");
        arrayList.add("content_sport_premium.lby");
        arrayList.add("content_public_premium.lby");
        arrayList.add("content_decoration_premium.lby");
        arrayList.add("content_military.lby");
        arrayList.add("content_airport.lby");
        arrayList.add("content_biome_impl.lby");
        arrayList.add("content_notification.lby");
        arrayList.add("content_task.lby");
        if (TheoTown.DEBUG) {
            arrayList.add("content_test.lby");
        }
        for (int i = 0; i < arrayList.size(); i++) {
            list.add(new JsonContentData(getResContent((String) arrayList.get(i))));
        }
    }

    public static String getResContent(String str) {
        return PackedUtils.INSTANCE.readInternalText(str);
    }

    public static void addGenerated(List<ContentData> list) {
        try {
            Generator.getInstance().addLightDefinitions(new JSONArray(getResContent("generated_patches.lby")));
            list.add(new JsonContentData(Generator.getInstance().generateResidentialContent()));
            list.add(new JsonContentData(Generator.getInstance().generateCommercialContent()));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    public final boolean ignoreName(String str) {
        return !str.isEmpty() && (str.charAt(0) == '_' || str.charAt(0) == '.');
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addPlugins(java.util.List<info.flowersoft.theotown.resources.ContentData> r20, java.util.List<info.flowersoft.theotown.util.vfs.AbstractFile> r21, info.flowersoft.theotown.util.vfs.AbstractFile r22, info.flowersoft.theotown.util.vfs.AbstractFile r23, boolean r24, boolean r25, int r26) {
        /*
            Method dump skipped, instruction units count: 785
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.ContentCollector.addPlugins(java.util.List, java.util.List, info.flowersoft.theotown.util.vfs.AbstractFile, info.flowersoft.theotown.util.vfs.AbstractFile, boolean, boolean, int):void");
    }

    /* JADX INFO: renamed from: $r8$lambda$DO18w2vvF-ujKM7X5jV3BnWGvg4, reason: not valid java name */
    public static /* synthetic */ byte[] m2173$r8$lambda$DO18w2vvFujKM7X5jV3BnWGvg4(AbstractFile abstractFile) {
        try {
            return abstractFile.readBytes();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void filterZipFiles(AbstractFile abstractFile, List<AbstractFile> list) {
        AbstractFile file;
        int i = 0;
        while (i < list.size()) {
            AbstractFile abstractFile2 = list.get(i);
            String name = abstractFile2.getName();
            if (name.endsWith(".zip") && (file = abstractFile.getFile(name.substring(0, name.length() - 4))) != null && file.isDirectory() && file.countChildren() > 0) {
                Gdx.app.debug("ContentCollector", "Ignore \"" + abstractFile2 + "\" because folder of same name was found");
                list.remove(i);
                i += -1;
            }
            i++;
        }
    }

    public final AbstractFile getTempPluginTarget(AbstractFile abstractFile, String str, boolean z) {
        if (PCPS.isAvailable() || z) {
            return VirtualFile.createDirectory(str, abstractFile);
        }
        return RealFile.createDirectory(new File(getTempPluginsDir(), str), abstractFile);
    }

    public final void addManagedPlugins(List<ContentData> list, List<AbstractFile> list2, List<ManagedPluginFile> list3, final Stapel2DGameContext stapel2DGameContext, ProgressSetter progressSetter) {
        if (list3.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        boolean active = RecoveryMode.INSTANCE.getActive();
        for (int i = 0; i < list3.size(); i++) {
            ManagedPluginFile managedPluginFile = list3.get(i);
            if (managedPluginFile.isActive() && managedPluginFile.isValid()) {
                if (managedPluginFile.isPermanent() || !active) {
                    arrayList.add(managedPluginFile);
                } else {
                    managedPluginFile.setLastActive(false);
                }
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda4
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ContentCollector.m2175$r8$lambda$fYtHwwBvLafW2Eb9nQ1RiP8VjQ((ManagedPluginFile) obj, (ManagedPluginFile) obj2);
            }
        });
        final int size = arrayList.size();
        final ProgressSetter progressSetter2 = progressSetter;
        progressSetter2.set(0, size);
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        final ArrayList arrayList2 = new ArrayList(size);
        final ArrayList arrayList3 = new ArrayList(size);
        final int[] iArr = {0};
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(new ArrayList());
            arrayList3.add(new ArrayList());
        }
        int i3 = 0;
        while (i3 < iAvailableProcessors) {
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    ContentCollector.m2174$r8$lambda$e7pjHo0gxyExj0GwOG3nE2Mjo(this.f$0, arrayList, iArr, size, progressSetter2, arrayList2, arrayList3, stapel2DGameContext);
                }
            });
            threadArr[i3] = thread;
            thread.start();
            i3++;
            progressSetter2 = progressSetter;
        }
        for (int i4 = 0; i4 < iAvailableProcessors; i4++) {
            try {
                threadArr[i4].join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        for (int i5 = 0; i5 < size; i5++) {
            list.addAll((Collection) arrayList2.get(i5));
            list2.addAll((Collection) arrayList3.get(i5));
        }
        Drafts.LOADED_PLUGINS.addAll(arrayList);
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            ManagedPluginFile managedPluginFile2 = (ManagedPluginFile) arrayList.get(i6);
            Drafts.LOADED_PLUGINS.add(managedPluginFile2);
            Drafts.LOADED_PLUGINS_BY_ID.put(managedPluginFile2.getPluginId(), managedPluginFile2);
            managedPluginFile2.setLastVersion(managedPluginFile2.getVersion());
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$fYtHwwBvLafW2Eb9nQ1R-iP8VjQ, reason: not valid java name */
    public static /* synthetic */ int m2175$r8$lambda$fYtHwwBvLafW2Eb9nQ1RiP8VjQ(ManagedPluginFile managedPluginFile, ManagedPluginFile managedPluginFile2) {
        int pluginId;
        int pluginId2;
        if (managedPluginFile == managedPluginFile2) {
            return 0;
        }
        if (managedPluginFile.getOrder() != managedPluginFile2.getOrder()) {
            pluginId = managedPluginFile.getOrder();
            pluginId2 = managedPluginFile2.getOrder();
        } else {
            pluginId = managedPluginFile.getPluginId();
            pluginId2 = managedPluginFile2.getPluginId();
        }
        return pluginId - pluginId2;
    }

    /* JADX INFO: renamed from: $r8$lambda$e7pjHo0gxyExj0G-wOG3-nE2Mjo, reason: not valid java name */
    public static /* synthetic */ void m2174$r8$lambda$e7pjHo0gxyExj0GwOG3nE2Mjo(ContentCollector contentCollector, List list, int[] iArr, int i, ProgressSetter progressSetter, List list2, List list3, Stapel2DGameContext stapel2DGameContext) throws Throwable {
        int i2;
        ManagedPluginFile managedPluginFile;
        contentCollector.getClass();
        while (true) {
            synchronized (list) {
                try {
                    i2 = iArr[0];
                    if (i2 >= i) {
                        return;
                    }
                    managedPluginFile = (ManagedPluginFile) list.get(i2);
                    progressSetter.set(i2, i);
                    iArr[0] = iArr[0] + 1;
                } catch (Throwable th) {
                    throw th;
                }
            }
            try {
                contentCollector.loadManagedPluginFile((List) list2.get(i2), (List) list3.get(i2), managedPluginFile, stapel2DGameContext);
            } catch (Exception e) {
                managedPluginFile.setError(e.toString());
                e.printStackTrace();
            }
        }
    }

    public final void loadManagedPluginFile(List<ContentData> list, List<AbstractFile> list2, final ManagedPluginFile managedPluginFile, Stapel2DGameContext stapel2DGameContext) throws Throwable {
        List<ContentData> list3;
        File file = managedPluginFile.getFile();
        AbstractFile tempPluginTarget = getTempPluginTarget(null, managedPluginFile.getFile().getName(), managedPluginFile.isPermanent());
        try {
            ZipDataSource zipDataSource = new ZipDataSource() { // from class: info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda6
                @Override // info.flowersoft.theotown.resources.ContentCollector.ZipDataSource
                public final ZipInputStream get() {
                    return ContentCollector.$r8$lambda$BotQdpEZkdYky92pzptk7CITFFM(managedPluginFile);
                }
            };
            ZipInputStream zipInputStream = zipDataSource.get();
            long jCurrentTimeMillis = System.currentTimeMillis();
            extractZip(zipInputStream, tempPluginTarget, zipDataSource);
            Gdx.app.debug("ContentCollector", "needed " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms to decrypt " + managedPluginFile.getTitle());
            list.add(new RootPluginFile(RealFile.createFile(file, null)));
            this.pluginCount = this.pluginCount + 1;
            list.add(new PluginIdContentData(managedPluginFile.getPluginId()));
            int size = list.size();
            managedPluginFile.setError(null);
            list3 = list;
            try {
                try {
                    addPlugins(list3, list2, tempPluginTarget, null, true, false, 0);
                    if (list3.size() == size) {
                        managedPluginFile.setError(new IllegalArgumentException("No content provided!").toString());
                        TheoTown.analytics.logEvent("Managed Plugins", "No content", "" + managedPluginFile.getPluginId() + " : " + managedPluginFile.getTitle());
                    }
                    if (!managedPluginFile.isPermanent()) {
                        String title = managedPluginFile.getTitle();
                        String text = managedPluginFile.getText();
                        if (Settings.translatePlugins) {
                            title = managedPluginFile.translateInline(title);
                            text = managedPluginFile.translateInline(text);
                        }
                        addCategory(new Getter() { // from class: info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda7
                            @Override // io.blueflower.stapel2d.util.Getter
                            public final Object get() {
                                return managedPluginFile.getImageData();
                            }
                        }, "" + managedPluginFile.getPluginId(), managedPluginFile.getRevisionId() + "+1", "$mpf_cat_" + managedPluginFile.getPluginId() + ":" + managedPluginFile.getRevisionId(), title, text);
                    }
                    list3.add(PluginIdContentData.Companion.getEmpty());
                } catch (IOException e) {
                    e = e;
                    IOException iOException = e;
                    iOException.printStackTrace();
                    TheoTown.analytics.logException(iOException);
                    managedPluginFile.setError(iOException.toString());
                    list3.add(PluginIdContentData.Companion.getEmpty());
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                list3.add(PluginIdContentData.Companion.getEmpty());
                throw th2;
            }
        } catch (IOException e2) {
            e = e2;
            list3 = list;
        } catch (Throwable th3) {
            th = th3;
            list3 = list;
            Throwable th22 = th;
            list3.add(PluginIdContentData.Companion.getEmpty());
            throw th22;
        }
    }

    public static /* synthetic */ ZipInputStream $r8$lambda$BotQdpEZkdYky92pzptk7CITFFM(ManagedPluginFile managedPluginFile) {
        return new ZipInputStream(managedPluginFile.openPlugin());
    }

    public static void addCategory(Getter<byte[]> getter, String str, String str2, String str3, String str4, String str5) {
        Pixmap pixmap;
        Pixmap pixmap2;
        try {
            byte[] bArr = ManagedCache.INSTANCE.get("ct", str, str2);
            if (bArr != null) {
                try {
                    pixmap = new Pixmap(new Gdx2DPixmap(bArr, 0, bArr.length, 4));
                } catch (Exception e) {
                    e.printStackTrace();
                    pixmap = null;
                }
            } else {
                pixmap = null;
            }
            if (pixmap == null) {
                byte[] bArr2 = getter.get();
                Pixmap pixmap3 = new Pixmap(new Gdx2DPixmap(bArr2, 0, bArr2.length, 4));
                int width = pixmap3.getWidth();
                int height = pixmap3.getHeight();
                int iMin = Math.min(width, height);
                int i = (width * Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) / iMin;
                int i2 = (height * Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) / iMin;
                Pixmap pixmap4 = new Pixmap(i, i2, pixmap3.getFormat());
                pixmap4.setBlending(Pixmap.Blending.None);
                pixmap4.drawPixmap(pixmap3, 0, 0, pixmap3.getWidth(), pixmap3.getHeight(), 0, 0, i, i2);
                pixmap3.dispose();
                PixmapIO.PNG png = new PixmapIO.PNG((int) (i * i2 * 1.5f));
                try {
                    png.setFlipY(false);
                    png.setCompression(-1);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    png.write(byteArrayOutputStream, pixmap4);
                    ManagedCache.INSTANCE.put("ct", str, str2, byteArrayOutputStream.toByteArray());
                    png.dispose();
                    pixmap2 = pixmap4;
                } catch (Throwable th) {
                    png.dispose();
                    throw th;
                }
            } else {
                pixmap2 = pixmap;
            }
            Pixmap pixmap5 = new Pixmap(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, pixmap2.getFormat());
            pixmap5.setBlending(Pixmap.Blending.None);
            pixmap5.drawPixmap(pixmap2, (pixmap2.getWidth() - Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) / 2, (pixmap2.getHeight() - Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) / 2, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, 0, 0, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            pixmap2.dispose();
            synchronized (Resources.IMAGE_WORLD) {
                int selectedTexture = Resources.IMAGE_WORLD.getSelectedTexture();
                Resources.IMAGE_WORLD.selectTexture(Resources.IMAGE_WORLD.addTexture(new Texture(new StaticBitmapTextureSource(pixmap5, false))));
                Image image = Resources.IMAGE_WORLD;
                float f = Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
                int iAddFrame = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, f);
                Resources.IMAGE_WORLD.selectTexture(selectedTexture);
                CategoryDraft categoryDraft = new CategoryDraft();
                categoryDraft.id = str3;
                categoryDraft.title = str4;
                categoryDraft.text = str5;
                categoryDraft.frames = new int[]{iAddFrame};
                Drafts.ALL.put(str3, categoryDraft);
            }
        } catch (Exception e2) {
            TheoTown.analytics.logException(e2);
        }
    }

    public static void extractContentFiles(String str, AbstractFile abstractFile, List<AbstractFile> list) {
        if (str.contains("\"place ") && (str.contains("\"place x\"") || str.contains("\"place y\""))) {
            return;
        }
        Matcher matcher = IMAGE_PATTERN.matcher(str);
        while (matcher.find()) {
            AbstractFile file = abstractFile.getFile(matcher.group(1).toLowerCase(Locale.ENGLISH));
            if (file != null) {
                list.add(file);
            }
        }
    }

    public static File getTempPluginsDir() {
        if (tempPluginsDir == null) {
            if (Gdx.app.getType() == Application.ApplicationType.Desktop && !TheoTown.DEBUG) {
                tempPluginsDir = new File(System.getProperty("java.io.tmpdir"), uuid);
            } else {
                tempPluginsDir = new File(Resources.getPrivateTheoTownDir(), "plugins");
            }
        }
        return tempPluginsDir;
    }

    public static void extractZipDir(String str, String str2) {
        IntList intList = new IntList();
        for (int i = 0; i < str.length() * 10; i++) {
            for (int i2 = 0; i2 < str2.length() * 10; i2++) {
                int length = (i * 10 * str2.length()) + i2 + 2;
                int i3 = 0;
                while (true) {
                    if (i3 < intList.size()) {
                        if (length % intList.get(i3) == 0) {
                            break;
                        } else {
                            i3++;
                        }
                    } else {
                        intList.add(length);
                        Gdx.app.debug("Extract", "" + length);
                        break;
                    }
                }
            }
        }
        TheoTown.analytics.logEvent("Extract", "extracted", "" + intList.size());
    }

    public static InputStream acquireStream(AbstractFile abstractFile) throws IOException {
        if (abstractFile.getName().endsWith(".plugin") || abstractFile.getName().endsWith(".pcap")) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(abstractFile.read(), StandardCharsets.UTF_8));
            String line = bufferedReader.readLine();
            bufferedReader.close();
            if (line == null) {
                return abstractFile.read();
            }
            InputStream inputStream = abstractFile.read();
            int length = line.length() + 1;
            while (length > 0) {
                long j = length;
                length = (int) (j - inputStream.skip(j));
            }
            return new DecInputStream(inputStream, 0);
        }
        return abstractFile.read();
    }

    public final ExternalPluginImporter getPluginImporter() {
        ExternalPluginImporter externalPluginImporter = this.externalPluginImporter;
        if (externalPluginImporter != null) {
            return externalPluginImporter;
        }
        Globals globals = TempLua.INSTANCE.getGlobals();
        LuaClosure luaClosureCheckclosure = globals.load(new ByteArrayInputStream(Base64Coder.decode("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")), ".", "b", globals).checkclosure();
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = Resources.getSpecificConfig(R6.L).getJSONArray("plugin sigs");
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(Base64Coder.decode(jSONArray.getString(i)));
            }
            ExternalPluginImporter externalPluginImporter2 = new ExternalPluginImporter(new SignatureVerifier(arrayList, SignatureVerifier.Companion.getDEFAULT_MAGIC_BYTES()), new PluginFileDecoder(new LuaKeyImplementation(luaClosureCheckclosure)));
            this.externalPluginImporter = externalPluginImporter2;
            return externalPluginImporter2;
        } catch (JSONException unused) {
            throw new IllegalStateException("Could not read keys");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final info.flowersoft.theotown.util.ExternalPluginImporter.ExternalPluginData extractExternalPluginFile(info.flowersoft.theotown.util.vfs.AbstractFile r6, info.flowersoft.theotown.util.vfs.AbstractFile r7) throws java.lang.Throwable {
        /*
            r5 = this;
            info.flowersoft.theotown.util.ExternalPluginImporter r0 = r5.getPluginImporter()
            r1 = 0
            byte[] r2 = r6.readBytes()     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            info.flowersoft.theotown.util.ExternalPluginImporter$ExternalPluginData r0 = r0.load(r2)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            java.util.zip.ZipInputStream r2 = new java.util.zip.ZipInputStream     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            byte[] r4 = r0.getContent()     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            java.util.Objects.requireNonNull(r4)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            byte[] r4 = (byte[]) r4     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            extractZip(r2, r7, r1)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r0.setContent(r1)
            return r0
        L27:
            r6 = move-exception
            goto L53
        L29:
            r7 = move-exception
            goto L30
        L2b:
            r6 = move-exception
            r0 = r1
            goto L53
        L2e:
            r7 = move-exception
            r0 = r1
        L30:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L27
            info.flowersoft.theotown.crossplatform.Analytics r2 = info.flowersoft.theotown.crossplatform.TheoTown.analytics     // Catch: java.lang.Throwable -> L27
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L27
            r3.<init>()     // Catch: java.lang.Throwable -> L27
            java.lang.String r4 = "Load "
            r3.append(r4)     // Catch: java.lang.Throwable -> L27
            java.lang.String r6 = r6.getName()     // Catch: java.lang.Throwable -> L27
            r3.append(r6)     // Catch: java.lang.Throwable -> L27
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L27
            r2.logException(r6, r7)     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L52
            r0.setContent(r1)
        L52:
            return r0
        L53:
            if (r0 == 0) goto L58
            r0.setContent(r1)
        L58:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.ContentCollector.extractExternalPluginFile(info.flowersoft.theotown.util.vfs.AbstractFile, info.flowersoft.theotown.util.vfs.AbstractFile):info.flowersoft.theotown.util.ExternalPluginImporter$ExternalPluginData");
    }

    public void defaultFileHandler(final AbstractFile abstractFile, AbstractFile abstractFile2) {
        ZipDataSource zipDataSource = new ZipDataSource() { // from class: info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.resources.ContentCollector.ZipDataSource
            public final ZipInputStream get() {
                return ContentCollector.$r8$lambda$qNaFgItfiDbp6KulLA0NkI_MnKo(abstractFile);
            }
        };
        try {
            extractZip(zipDataSource.get(), abstractFile2, zipDataSource);
        } catch (Exception e) {
            e.printStackTrace();
            TheoTown.analytics.logException("Load " + abstractFile.getName(), e);
        }
    }

    public static /* synthetic */ ZipInputStream $r8$lambda$qNaFgItfiDbp6KulLA0NkI_MnKo(AbstractFile abstractFile) {
        return new ZipInputStream(acquireStream(abstractFile));
    }

    public static void extractZip(ZipInputStream zipInputStream, AbstractFile abstractFile, ZipDataSource zipDataSource) throws IOException {
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                String lowerCase = nextEntry.getName().toLowerCase(Locale.ENGLISH);
                if (lowerCase.contains("/../") || lowerCase.startsWith("../") || lowerCase.endsWith("/..") || lowerCase.equals("..") || lowerCase.startsWith("/")) {
                    break;
                }
                long time = nextEntry.getTime();
                if (!nextEntry.isDirectory()) {
                    abstractFile.newFile(lowerCase, zipInputStream).setModificationTime(time);
                }
            } finally {
                zipInputStream.close();
            }
        }
    }

    public static String readPluginLines(AbstractFile abstractFile) {
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder(Math.max(abstractFile.length(), 16));
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(abstractFile.read(), StandardCharsets.UTF_8));
        } catch (IOException e) {
            e.printStackTrace();
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            String strRemoveComments = removeComments(line.replace((char) 160, ' '));
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(strRemoveComments);
            return sb.toString();
        }
        bufferedReader.close();
        return sb.toString();
    }

    public static String removeComments(String str) {
        char c = 0;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\'' || cCharAt == '\"') {
                if (c == 0) {
                    c = cCharAt;
                } else if (c == cCharAt) {
                    c = 0;
                }
            } else if (cCharAt == '/' && i > 0) {
                int i2 = i - 1;
                if (str.charAt(i2) == '/' && c == 0) {
                    return str.substring(0, i2);
                }
            }
        }
        return str;
    }
}
