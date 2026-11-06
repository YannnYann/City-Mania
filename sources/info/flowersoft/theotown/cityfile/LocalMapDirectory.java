package info.flowersoft.theotown.cityfile;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class LocalMapDirectory extends MapDirectory {
    public List<File> mapFiles;
    public boolean noMemoryAccess;
    public final boolean region;
    public final JSONArray sourceZipContent;
    public final FileHandle sourceZipFile;

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public float getLoadingProgress() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean isOnline() {
        return false;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean loadingFailed() {
        return false;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean requiresPassword() {
        return false;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public void update() {
    }

    public static List<String> collectRegions() {
        File regionsDir = Resources.getRegionsDir();
        ArrayList arrayList = new ArrayList();
        if (regionsDir.exists() && regionsDir.isDirectory() && regionsDir.canWrite()) {
            for (File file : regionsDir.listFiles()) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    public LocalMapDirectory(String str, Stapel2DGameContext stapel2DGameContext, FileHandle fileHandle, JSONArray jSONArray, boolean z) {
        super(stapel2DGameContext);
        this.mapFiles = new ArrayList();
        this.context = stapel2DGameContext;
        this.sourceZipFile = fileHandle;
        this.sourceZipContent = jSONArray;
        this.region = z;
        this.dir = new File(Resources.getTheoTownDir(), str);
        File file = new File(Resources.getPrivateTheoTownDir(), str);
        if (!this.dir.exists()) {
            this.dir.mkdirs();
        }
        if (!this.dir.exists() || !this.dir.canWrite()) {
            this.noMemoryAccess = true;
            this.dir = file;
            if (!file.exists()) {
                this.dir.mkdirs();
            }
        } else {
            Resources.createNoMediaFile(this.dir);
        }
        if (!this.dir.equals(file)) {
            migrateCities(file, this.dir);
        }
        collectCities();
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean canReset(CityKeeper cityKeeper) {
        return hasSource() || new File(getOriginBackupDirectory(), cityKeeper.getFile().getName()).exists();
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean reset(CityKeeper cityKeeper) {
        if (hasSource()) {
            restoreFromZipSource(cityKeeper.getFile());
            return true;
        }
        File file = new File(getOriginBackupDirectory(), cityKeeper.getFile().getName());
        if (file.exists() && file.length() > 0) {
            File file2 = cityKeeper.getFile();
            File tempFile = Resources.getTempFile();
            if (!file2.renameTo(tempFile)) {
                file2.delete();
            }
            if (Files.copyFile(file, file2)) {
                return true;
            }
            if (tempFile.exists()) {
                tempFile.renameTo(file2);
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public RegionInformation getRegionInformation() {
        RegionInformation regionInformation;
        JSONException e;
        RegionInformation regionInformation2;
        String textFile;
        File regionFile = getRegionFile();
        if (!regionFile.exists() || (textFile = Files.readTextFile(Gdx.files.absolute(regionFile.getAbsolutePath()))) == null) {
            regionInformation = null;
        } else {
            try {
                regionInformation = new RegionInformation(new JSONObject(textFile), this.maps);
            } catch (JSONException e2) {
                TheoTown.analytics.logException("Get region", e2);
                regionInformation = null;
            }
        }
        if (regionInformation != null) {
            return regionInformation;
        }
        try {
            regionInformation2 = new RegionInformation(new JSONObject(), this.maps);
            try {
                saveRegionInformation(regionInformation2);
                return regionInformation2;
            } catch (JSONException e3) {
                e = e3;
                TheoTown.analytics.logException("Info", e);
                return regionInformation2;
            }
        } catch (JSONException e4) {
            RegionInformation regionInformation3 = regionInformation;
            e = e4;
            regionInformation2 = regionInformation3;
        }
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean saveRegionInformation(RegionInformation regionInformation) {
        try {
            return Files.writeTextFileSecured(getRegionFile(), regionInformation.getJson().toString());
        } catch (JSONException e) {
            TheoTown.analytics.logException("Save region information", e);
            return false;
        }
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public void loadMaps(Runnable runnable, Setter<String> setter) {
        if (!this.maps.isEmpty()) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(4);
        int i = 0;
        for (final File file : this.mapFiles) {
            Runnable runnable2 = new Runnable() { // from class: info.flowersoft.theotown.cityfile.LocalMapDirectory$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LocalMapDirectory.$r8$lambda$Ja_mUFeNH3Tp2XrZwgDhT2Xz8dM(this.f$0, file);
                }
            };
            if (i == 0) {
                runnable2.run();
            } else {
                executorServiceNewFixedThreadPool.submit(runnable2);
            }
            i++;
        }
        executorServiceNewFixedThreadPool.shutdown();
        try {
            executorServiceNewFixedThreadPool.awaitTermination(9999L, TimeUnit.DAYS);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Collections.sort(this.maps, new Comparator<CityKeeper>() { // from class: info.flowersoft.theotown.cityfile.LocalMapDirectory.1
            @Override // java.util.Comparator
            public int compare(CityKeeper cityKeeper, CityKeeper cityKeeper2) {
                return (int) Math.signum(cityKeeper2.getInfo().getLastModified() - cityKeeper.getInfo().getLastModified());
            }
        });
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$Ja_mUFeNH3Tp2XrZwgDhT2Xz8dM(LocalMapDirectory localMapDirectory, File file) {
        localMapDirectory.getClass();
        CityKeeper cityKeeper = new CityKeeper(file, localMapDirectory.context.getTranslator());
        try {
            cityKeeper.loadLightInfo();
        } catch (Exception unused) {
            if (localMapDirectory.canRecoverFile(cityKeeper.getFile()) && localMapDirectory.recoverFile(cityKeeper.getFile())) {
                try {
                    cityKeeper.loadLightInfo();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        if (cityKeeper.getInfo() != null) {
            synchronized (localMapDirectory.maps) {
                localMapDirectory.maps.add(cityKeeper);
            }
        }
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean isLoaded() {
        return !this.maps.isEmpty();
    }

    public final File getRegionFile() {
        return new File(this.dir, "region.json");
    }

    public void deleteAnything() {
        File[] fileArrListFiles = this.dir.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
    }

    public boolean hasSource() {
        return this.sourceZipFile != null;
    }

    public void restoreFromZipSource() {
        restoreFromZipSource(null);
    }

    public void restoreFromZipSource(File file) {
        int i;
        FileHandle fileHandle = this.sourceZipFile;
        if (fileHandle == null || !fileHandle.exists()) {
            return;
        }
        String str = this.dir.getName() + "/";
        int i2 = 0;
        if (this.sourceZipContent != null) {
            i = 0;
            for (int i3 = 0; i3 < this.sourceZipContent.length(); i3++) {
                JSONObject jSONObjectOptJSONObject = this.sourceZipContent.optJSONObject(i3);
                if (!jSONObjectOptJSONObject.optBoolean("dir")) {
                    String strOptString = jSONObjectOptJSONObject.optString("name");
                    if (strOptString.startsWith(str)) {
                        File file2 = new File(this.dir, strOptString.substring(str.length()));
                        if ((file == null && !file2.exists()) || (file != null && file.equals(file2))) {
                            i++;
                        }
                    }
                }
            }
        } else {
            i = -1;
        }
        if (i != 0) {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(this.context.openStream(this.sourceZipFile)));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    String name = nextEntry.getName();
                    if (name.startsWith(str) && !nextEntry.isDirectory()) {
                        File file3 = new File(this.dir, name.substring(str.length()));
                        if (file != null || file3.exists()) {
                            if (file == null || !file.equals(file3)) {
                            }
                        }
                        i2++;
                        if (file3.exists() && !file3.delete()) {
                            break;
                        }
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file3));
                        StreamCopyUtil.copyTo(zipInputStream, bufferedOutputStream);
                        bufferedOutputStream.close();
                        Gdx.app.debug("MapDirectory", "Restored file " + file3.getName());
                    }
                } catch (IOException e) {
                    TheoTown.analytics.logException("Restore region zip", e);
                }
            }
            zipInputStream.close();
        }
        if (i2 > 0) {
            collectCities();
            loadMaps(null, null);
        }
    }

    public void collectCities() {
        this.mapFiles.clear();
        this.maps.clear();
        Gdx.app.debug("MapDirectory", "Files in " + this.dir.getPath());
        File[] fileArrListFiles = this.dir.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isFile() && file.getName().endsWith(".city") && (!this.region || MapDirectory.isValidRegionCityFileName(file.getName()))) {
                    this.mapFiles.add(file);
                }
            }
        }
    }

    public boolean hasNoMemoryAccess() {
        return this.noMemoryAccess;
    }

    public final void migrateCities(File file, File file2) {
        if (file.exists() && file2.exists()) {
            int i = 0;
            int i2 = 0;
            for (File file3 : file.listFiles()) {
                if (file3.isFile() && file3.getName().endsWith(".city")) {
                    if (Files.copyFile(file3, new File(file2, file3.getName()))) {
                        file3.delete();
                        i++;
                    } else {
                        i2++;
                    }
                }
            }
            Gdx.app.debug("MAP MIGRATION", "Migrated " + i + " maps, failed on " + i2);
            if (file.delete()) {
                Gdx.app.debug("MAP MIGRATION", "Migration successful");
            } else {
                Gdx.app.error("MAP MIGRATION", "Failed on directory removement");
            }
        }
    }

    public File newRegionCityFile(int i, int i2, int i3) {
        if (i3 == 0) {
            return findFileForNewCity(i + "_" + i2);
        }
        return findFileForNewCity(i + "_" + i2 + "_" + i3);
    }

    public File findFileForNewCity(String str) {
        String strReplaceAll = str.replaceAll("[^a-zA-Z0-9_]", "");
        File file = new File(this.dir, strReplaceAll + ".city");
        if (!file.exists()) {
            return file;
        }
        int i = 0;
        while (true) {
            File file2 = new File(this.dir, strReplaceAll + "_" + i + ".city");
            if (!file2.exists()) {
                return file2;
            }
            i++;
        }
    }

    public File getOriginBackupDirectory() {
        return new File(this.dir, ".origin");
    }

    public boolean canRecoverFile(File file) {
        File file2 = new File(file.getPath() + ".backup");
        return file2.exists() && file2.length() >= 1000;
    }

    public boolean recoverFile(File file) {
        Gdx.app.debug("FileRecovery", "Recover " + file);
        if (!file.exists()) {
            return false;
        }
        File file2 = new File(file.getPath() + ".backup");
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(file.getPath() + "_damaged");
        file.renameTo(file3);
        boolean zRenameTo = file2.renameTo(file);
        if (!zRenameTo) {
            file3.renameTo(file);
        }
        return zRenameTo;
    }

    public static LocalMapDirectory getDefault(Stapel2DGameContext stapel2DGameContext) {
        return new LocalMapDirectory("maps", stapel2DGameContext, null, null, false);
    }

    public static LocalMapDirectory getScenario(Stapel2DGameContext stapel2DGameContext) {
        return new LocalMapDirectory("scenarios", stapel2DGameContext, null, null, false);
    }

    public static LocalMapDirectory getRegion(String str, Stapel2DGameContext stapel2DGameContext) {
        return getRegion(str, stapel2DGameContext, null, null);
    }

    public static LocalMapDirectory getNewRegion(String str, Stapel2DGameContext stapel2DGameContext) {
        List<String> listCollectRegions = collectRegions();
        String strReplaceAll = str.replaceAll("[^a-zA-Z0-9-_.]", "_");
        if (listCollectRegions.contains(strReplaceAll)) {
            int i = 0;
            while (true) {
                if (!listCollectRegions.contains(strReplaceAll + "_" + i)) {
                    break;
                }
                i++;
            }
            strReplaceAll = strReplaceAll + "_" + i;
        }
        return getRegion(strReplaceAll, stapel2DGameContext);
    }

    public static LocalMapDirectory getRegion(String str, Stapel2DGameContext stapel2DGameContext, FileHandle fileHandle, JSONArray jSONArray) {
        return new LocalMapDirectory("regions" + File.separator + str, stapel2DGameContext, fileHandle, jSONArray, true);
    }
}
