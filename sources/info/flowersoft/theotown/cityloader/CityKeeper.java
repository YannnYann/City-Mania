package info.flowersoft.theotown.cityloader;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MinimapRenderer;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.resources.WordFilter;
import info.flowersoft.theotown.util.ProgressProvider;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.StopWatch;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Property;
import io.blueflower.stapel2d.util.SessionLogger;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.ValueProperty;
import io.blueflower.stapel2d.util.json.BinaryJsonReader;
import io.blueflower.stapel2d.util.json.BinaryJsonWriter;
import io.blueflower.stapel2d.util.json.DefaultJsonReader;
import io.blueflower.stapel2d.util.json.DefaultJsonWriter;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class CityKeeper {
    public static final List<CityKeeper> SAVING_LIST = new ArrayList();
    public boolean allowPlugins;
    public long authorId;
    public String authorName;
    public File backupFile;
    public Setter<City> beforeCityPreparationCall;
    public City city;
    public File file;
    public FileProvider getActualFileToLoadFrom;
    public Getter<File> getActualFileToSaveTo;

    /* JADX INFO: renamed from: info, reason: collision with root package name */
    public LightCityInfo f3926info;
    public int lastReadHeaderSize;
    public Setter<File> loadedListener;
    public final List<ComponentLoader> loaders;
    public Exception loadingException;
    public boolean online;
    public Pixmap preview;
    public final ProgressVariable progress;
    public boolean savable;
    public Setter<File> savedListener;
    public final Property<String> status;
    public boolean usesOldHeaderSizeFormat;

    public interface FileProvider extends ProgressProvider {
        File get();

        @Override // info.flowersoft.theotown.util.ProgressProvider
        float getProgress();
    }

    public static void reset() {
        SAVING_LIST.clear();
    }

    public CityKeeper(File file, Translator translator) {
        ArrayList arrayList = new ArrayList();
        this.loaders = arrayList;
        this.progress = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.status = new ValueProperty("");
        this.savable = true;
        this.online = false;
        this.allowPlugins = true;
        this.file = file;
        arrayList.add(new CityLoader(translator));
        arrayList.add(new GroundLoader());
        arrayList.add(new SoundLoader());
        arrayList.add(new TreeLoader());
        arrayList.add(new RoadLoader());
        arrayList.add(new BusStopLoader());
        arrayList.add(new RailLoader());
        arrayList.add(new BuildingLoader());
        arrayList.add(new DateLoader());
        arrayList.add(new PeopleLoader());
        arrayList.add(new DemandLoader());
        arrayList.add(new ManagementLoader());
        arrayList.add(new TrafficLoader());
        arrayList.add(new InfluenceLoader());
        arrayList.add(new BudgetLoader());
        arrayList.add(new ZoneSizeLoader());
        arrayList.add(new PowerLoader());
        arrayList.add(new WaterLoader());
        arrayList.add(new NotificatorLoader());
        arrayList.add(new RequirementLoader());
        arrayList.add(new CatastropheLoader());
        arrayList.add(new ToolLoader());
        arrayList.add(new BuildMaskLoader());
        arrayList.add(new WeatherLoader());
        arrayList.add(new TransportationLoader());
        arrayList.add(new TSLoader());
        arrayList.add(new StatisticsLoader());
        arrayList.add(new SignLoader());
        arrayList.add(new AirportLoader());
        arrayList.add(new IdleGameLoader());
        arrayList.add(new NeighborhoodLoader());
        arrayList.add(new ScenarioLoader());
        arrayList.add(new RailPatchLoader());
    }

    public void setGetActualFileToLoadFrom(FileProvider fileProvider) {
        this.getActualFileToLoadFrom = fileProvider;
    }

    public FileProvider getGetActualFileToLoadFrom() {
        return this.getActualFileToLoadFrom;
    }

    public void setGetActualFileToSaveTo(Getter<File> getter) {
        this.getActualFileToSaveTo = getter;
    }

    public void setLoadedListener(Setter<File> setter) {
        this.loadedListener = setter;
    }

    public void setSavedListener(Setter<File> setter) {
        this.savedListener = setter;
    }

    public boolean isSavable() {
        return this.savable;
    }

    public void setSavable(boolean z) {
        this.savable = z;
    }

    public Exception getLoadingException() {
        return this.loadingException;
    }

    public boolean isOnline() {
        return this.online;
    }

    public long getAuthorId() {
        return this.authorId;
    }

    public String getAuthorName() {
        return this.authorName;
    }

    public void setOnline(boolean z, String str, long j, boolean z2) {
        this.online = z;
        this.authorName = str;
        this.authorId = j;
        this.allowPlugins = z2;
    }

    public static boolean isSaving() {
        boolean z;
        List<CityKeeper> list = SAVING_LIST;
        synchronized (list) {
            z = !list.isEmpty();
        }
        return z;
    }

    public static void waitForSaving() {
        synchronized (SAVING_LIST) {
            while (true) {
                try {
                    List<CityKeeper> list = SAVING_LIST;
                    if (list.size() <= 0) {
                        break;
                    } else {
                        list.wait();
                    }
                } catch (InterruptedException e) {
                    TheoTown.analytics.logException("Wait for saving", e);
                }
            }
        }
    }

    public final File getStoreFile(int i) {
        return new File(this.file.getAbsolutePath() + ".store" + i);
    }

    public boolean storeTempBackupFileInTheFuture() {
        File file = this.file;
        if (file == null || !file.exists()) {
            return false;
        }
        int i = 0;
        while (true) {
            File storeFile = getStoreFile(i);
            this.backupFile = storeFile;
            if (!storeFile.exists()) {
                break;
            }
            i++;
        }
        if (i < 3) {
            return true;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 <= i - 3) {
                getStoreFile(i2).delete();
            } else {
                getStoreFile(i2).renameTo(getStoreFile(((i2 - 1) - i) + 3));
            }
        }
        this.backupFile = getStoreFile(2);
        return true;
    }

    public boolean hasTempBackupFile() {
        File file = this.backupFile;
        return file != null && file.exists();
    }

    public boolean restoreTempBackupFile() {
        File file = this.file;
        if (this.getActualFileToSaveTo != null) {
            file = this.getActualFileToLoadFrom.get();
        }
        File file2 = this.backupFile;
        if (file2 != null && file2.exists() && this.backupFile.renameTo(file)) {
            Setter<File> setter = this.savedListener;
            if (setter == null) {
                return true;
            }
            setter.set(file);
            return true;
        }
        this.backupFile = null;
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean removeTempBackupFile() {
        /*
            r5 = this;
            java.io.File r0 = r5.backupFile
            if (r0 == 0) goto L71
            boolean r0 = r0.exists()
            if (r0 == 0) goto L6e
            java.io.File r0 = new java.io.File
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.File r2 = r5.file
            java.lang.String r2 = r2.getAbsolutePath()
            r1.append(r2)
            java.lang.String r2 = ".backup"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            boolean r0 = r0.exists()
            if (r0 == 0) goto L4c
            java.io.File r0 = new java.io.File
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.File r3 = r5.file
            java.lang.String r3 = r3.getAbsolutePath()
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            boolean r0 = r0.delete()
            if (r0 == 0) goto L71
        L4c:
            java.io.File r0 = r5.backupFile
            java.io.File r1 = new java.io.File
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.io.File r4 = r5.file
            java.lang.String r4 = r4.getAbsolutePath()
            r3.append(r4)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            boolean r0 = r0.renameTo(r1)
            if (r0 == 0) goto L71
        L6e:
            r0 = 0
            r5.backupFile = r0
        L71:
            java.io.File r0 = r5.backupFile
            if (r0 != 0) goto L77
            r0 = 1
            return r0
        L77:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.cityloader.CityKeeper.removeTempBackupFile():boolean");
    }

    public void setPreview(Pixmap pixmap) {
        if (this.f3926info == null) {
            buildCityInfo();
        }
        this.preview = pixmap;
        int width = pixmap.getWidth();
        int height = pixmap.getHeight();
        int[] iArr = new int[width * height];
        ByteBuffer pixels = pixmap.getPixels();
        pixels.order(ByteOrder.nativeOrder());
        pixels.asIntBuffer().get(iArr);
        pixels.rewind();
        this.f3926info.setPreviewData(iArr, width, height);
    }

    public void setPreview(int[] iArr, int i, int i2) {
        Pixmap pixmap = new Pixmap(i, i2, Pixmap.Format.RGBA8888);
        ByteBuffer pixels = pixmap.getPixels();
        pixels.order(ByteOrder.nativeOrder());
        pixels.asIntBuffer().put(iArr);
        pixels.rewind();
        setPreview(pixmap);
    }

    public LightCityInfo getInfo() {
        return this.f3926info;
    }

    public File getFile() {
        return this.file;
    }

    public synchronized City getCity() {
        return this.city;
    }

    public synchronized void setCity(City city) {
        this.city = city;
    }

    public synchronized void loadLightInfo() {
        loadLightInfo(false, false);
    }

    public final int readHeaderSize(InputStream inputStream) throws IOException {
        int i = (inputStream.read() << 8) | inputStream.read();
        this.usesOldHeaderSizeFormat = i > 0;
        if (i == 0) {
            return inputStream.read() | (inputStream.read() << 24) | (inputStream.read() << 16) | (inputStream.read() << 8);
        }
        return i;
    }

    public final void writeHeaderSize(OutputStream outputStream, int i) throws IOException {
        if (i >= 65536) {
            outputStream.write(0);
            outputStream.write(0);
            outputStream.write((i >> 24) & 255);
            outputStream.write((i >> 16) & 255);
            outputStream.write((i >> 8) & 255);
            outputStream.write(i & 255);
            return;
        }
        outputStream.write(i >> 8);
        outputStream.write(i & 255);
    }

    public synchronized void loadLightInfo(boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        BufferedInputStream bufferedInputStream;
        IOException e;
        try {
            if (this.file == null) {
                throw new IllegalStateException();
            }
            BufferedInputStream bufferedInputStream2 = null;
            int i4 = 0;
            while (true) {
                if (i4 >= 16) {
                    break;
                }
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(this.file));
                } catch (IOException e2) {
                    bufferedInputStream = bufferedInputStream2;
                    e = e2;
                }
                try {
                    int headerSize = readHeaderSize(bufferedInputStream) + (65536 * i4);
                    this.lastReadHeaderSize = (this.usesOldHeaderSizeFormat ? 2 : 6) + headerSize;
                    if (headerSize <= 0) {
                        bufferedInputStream.close();
                        this.f3926info = null;
                        throw new IllegalStateException("Invalid city file");
                    }
                    byte[] bArr = new byte[headerSize];
                    int i5 = 0;
                    while (i5 < headerSize) {
                        int i6 = bufferedInputStream.read(bArr, i5, headerSize - i5);
                        i5 += i6;
                        if (i6 < 0) {
                            break;
                        }
                    }
                    DefaultJsonReader defaultJsonReader = new DefaultJsonReader(new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), StandardCharsets.UTF_8)));
                    defaultJsonReader.beginObject();
                    this.f3926info = new LightCityInfo(defaultJsonReader);
                    defaultJsonReader.endObject();
                    defaultJsonReader.close();
                    bufferedInputStream2 = bufferedInputStream;
                } catch (IOException e3) {
                    e = e3;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e4) {
                            TheoTown.analytics.logException("Load light", e4);
                        }
                    }
                    if (!this.usesOldHeaderSizeFormat) {
                        throw e;
                    }
                    i4++;
                    bufferedInputStream2 = bufferedInputStream;
                }
                i4++;
                bufferedInputStream2 = bufferedInputStream;
            }
            if (z || z2) {
                DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(this.f3926info.hasCompressedMinimap() ? new GZIPInputStream(bufferedInputStream2) : bufferedInputStream2));
                if (z && this.f3926info.hasMinimap()) {
                    int width = this.f3926info.getWidth() * this.f3926info.getHeight();
                    int[] iArr = new int[width];
                    for (int i7 = 0; i7 < width; i7++) {
                        iArr[i7] = dataInputStream.readInt();
                    }
                    if (this.f3926info.getVersion() <= 160) {
                        for (int i8 = 0; i8 < width; i8++) {
                            int i9 = iArr[i8];
                            iArr[i8] = ((i9 & 255) << 16) | ((-16711936) & i9) | ((i9 >> 16) & 255);
                        }
                    }
                    this.f3926info.setMinimapData(iArr);
                } else if (this.f3926info.hasMinimap()) {
                    for (int width2 = this.f3926info.getWidth() * 4 * this.f3926info.getHeight(); width2 > 0 && dataInputStream.available() > 0; width2 -= dataInputStream.skipBytes(width2)) {
                    }
                }
                if (z2 && this.f3926info.hasPreview()) {
                    int i10 = dataInputStream.readInt();
                    int i11 = dataInputStream.readInt();
                    int i12 = i10 * i11;
                    if (i12 >= 0 && i12 < 16777216) {
                        int[] iArr2 = new int[i12];
                        for (int i13 = 0; i13 < i12; i13++) {
                            iArr2[i13] = dataInputStream.readInt();
                        }
                        this.f3926info.setPreviewData(iArr2, i10, i11);
                    }
                } else if (this.f3926info.hasPreview() && (i3 = (i = dataInputStream.readInt()) * (i2 = dataInputStream.readInt())) >= 0 && i3 < 16777216) {
                    this.f3926info.setPreviewData(null, i, i2);
                }
            } else if (this.f3926info.hasPreview() && this.f3926info.getPreviewData() == null) {
                this.f3926info.setPreviewData(null, 1, 1);
            }
            bufferedInputStream2.close();
            this.f3926info.setSize(this.file.length());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void skip(InputStream inputStream, int i) throws IOException {
        while (i > 0 && inputStream.available() > 0) {
            long j = i;
            i = (int) (j - inputStream.skip(j));
        }
    }

    public synchronized void load() {
        JsonReader binaryJsonReader;
        ComponentLoader componentLoader;
        int width;
        try {
            System.gc();
            File file = this.file;
            FileProvider fileProvider = this.getActualFileToLoadFrom;
            if (fileProvider != null) {
                file = fileProvider.get();
            }
            File file2 = file;
            File file3 = this.file;
            this.file = file2;
            loadLightInfo(true, true);
            this.file = file3;
            this.progress.setProgress(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            this.status.set("");
            this.loadingException = null;
            if (file2 == null) {
                throw new IllegalStateException();
            }
            StopWatch.start("load city");
            this.city = null;
            try {
                this.status.set("Open file");
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2));
                this.status.set("Skip header");
                skip(bufferedInputStream, this.lastReadHeaderSize);
                if (!this.f3926info.hasCompressedMinimap() && this.f3926info.hasMinimap()) {
                    int width2 = this.f3926info.getWidth() * 4 * this.f3926info.getHeight();
                    while (width2 > 0 && bufferedInputStream.available() > 0) {
                        long j = width2;
                        width2 = (int) (j - bufferedInputStream.skip(j));
                    }
                }
                GZIPInputStream gZIPInputStream = new GZIPInputStream(bufferedInputStream);
                this.status.set("Skip preview data");
                int i = 0;
                if (this.f3926info.hasCompressedMinimap()) {
                    if (this.f3926info.hasMinimap()) {
                        width = this.f3926info.getWidth() * 4 * this.f3926info.getHeight();
                        while (width > 0 && gZIPInputStream.available() > 0) {
                            long j2 = width;
                            width = (int) (j2 - gZIPInputStream.skip(j2));
                        }
                    } else {
                        width = 0;
                    }
                    if (this.f3926info.hasPreview()) {
                        DataInputStream dataInputStream = new DataInputStream(gZIPInputStream);
                        int iSkip = width + (dataInputStream.readInt() * 4 * dataInputStream.readInt());
                        while (iSkip > 0 && gZIPInputStream.available() > 0) {
                            long j3 = iSkip;
                            iSkip = (int) (j3 - gZIPInputStream.skip(j3));
                        }
                    }
                }
                this.status.set("Prepare reading");
                if (!this.f3926info.isBinaryFormat()) {
                    binaryJsonReader = new DefaultJsonReader(new BufferedReader(new InputStreamReader(gZIPInputStream, StandardCharsets.UTF_8)));
                } else {
                    binaryJsonReader = new BinaryJsonReader(new DataInputStream(new BufferedInputStream(gZIPInputStream, 16384)));
                }
                binaryJsonReader.beginObject();
                for (ComponentLoader componentLoader2 : this.loaders) {
                    componentLoader2.setInfo(this.f3926info);
                    this.status.set("Load raw " + componentLoader2.getTag());
                    City cityLoadRaw = componentLoader2.loadRaw(binaryJsonReader, this.city);
                    this.city = cityLoadRaw;
                    if (cityLoadRaw != null) {
                        cityLoadRaw.setReadonly(!isSavable());
                        this.city.setOnline(isOnline(), this.authorName, this.authorId, this.allowPlugins);
                    }
                }
                ArrayList<ComponentLoader> arrayList = new ArrayList(this.loaders);
                while (binaryJsonReader.hasNext()) {
                    String strNextName = binaryJsonReader.nextName();
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            componentLoader = null;
                            break;
                        }
                        componentLoader = (ComponentLoader) it.next();
                        if (componentLoader.getTag().equals(strNextName)) {
                            it.remove();
                            break;
                        }
                    }
                    if (componentLoader != null) {
                        this.status.set("Load " + componentLoader.getTag());
                        this.city = componentLoader.loadTag(binaryJsonReader, this.city);
                        StopWatch.step("load city", "Load component " + componentLoader.getClass().getSimpleName());
                    } else {
                        binaryJsonReader.skipValue();
                    }
                    i++;
                    this.progress.setProgress((i / this.loaders.size()) / 2.0f);
                }
                for (ComponentLoader componentLoader3 : arrayList) {
                    this.status.set("Load no source " + componentLoader3.getTag());
                    this.city = componentLoader3.loadNoSource(this.city);
                    StopWatch.step("load city", "Load (n/a) component " + componentLoader3.getClass().getSimpleName());
                }
                for (ComponentLoader componentLoader4 : this.loaders) {
                    this.status.set("Finalize " + componentLoader4.getTag());
                    componentLoader4.afterLoad(this.city);
                }
                this.status.set("Closing");
                binaryJsonReader.close();
            } catch (Exception e) {
                this.status.set("Error " + e);
                e.printStackTrace();
                this.loadingException = e;
                Gdx.app.error("CityKeeper", e.toString());
                TheoTown.analytics.logException("Load city", e);
                this.city = null;
            }
            StopWatch.step("load city", "Read file");
            if (this.city != null) {
                this.status.set("Prepare city");
                Setter<City> setter = this.beforeCityPreparationCall;
                if (setter != null) {
                    setter.set(this.city);
                }
                this.city.prepare(new Setter() { // from class: info.flowersoft.theotown.cityloader.CityKeeper$$ExternalSyntheticLambda0
                    @Override // io.blueflower.stapel2d.util.Setter
                    public final void set(Object obj) {
                        this.f$0.progress.setProgress((((Float) obj).floatValue() * 0.5f) + 0.5f);
                    }
                }, true);
                TheoTown.analytics.logLoadCity(this.city);
            }
            StopWatch.step("load city", "Prepare city");
            StopWatch.stop("load city");
            Setter<File> setter2 = this.loadedListener;
            if (setter2 != null) {
                setter2.set(file2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setBeforeCityPreparationCall(Setter<City> setter) {
        this.beforeCityPreparationCall = setter;
    }

    public final void buildCityInfo() {
        LightCityInfo lightCityInfo = this.f3926info;
        LightCityInfo lightCityInfo2 = new LightCityInfo(this.city, TheoTown.VERSION_CODE, false, true, true);
        this.f3926info = lightCityInfo2;
        if (lightCityInfo2.hasMinimap()) {
            int rotation = this.city.getRotation();
            this.city.setRotation(0);
            MinimapRenderer minimapRenderer = new MinimapRenderer(this.city);
            minimapRenderer.setUseDefaultTool(true);
            minimapRenderer.render(WinterManager.getInstance().isWinter());
            this.f3926info.setMinimapData(minimapRenderer.getData());
            this.city.setRotation(rotation);
        }
        if (lightCityInfo != null && lightCityInfo.hasPreview()) {
            this.f3926info.setPreviewData(lightCityInfo.getPreviewData(), lightCityInfo.getPreviewWidth(), lightCityInfo.getPreviewHeight());
        }
        if (lightCityInfo != null) {
            this.f3926info.setSaveCounter(lightCityInfo.getSaveCounter());
        }
    }

    public void save() {
        save(-1);
    }

    public synchronized void save(int i) {
        ByteArrayOutputStream byteArrayOutputStream;
        JsonWriter defaultJsonWriter;
        Closeable closeable;
        if (this.savable) {
            System.gc();
            this.progress.setProgress(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            this.status.set("");
            if (this.city == null) {
                return;
            }
            File file = this.file;
            Getter<File> getter = this.getActualFileToSaveTo;
            if (getter != null) {
                file = getter.get();
            }
            if (file == null) {
                return;
            }
            StopWatch.start("save city");
            TheoTown.analytics.logSaveCity(this.city);
            Thread thread = new Thread() { // from class: info.flowersoft.theotown.cityloader.CityKeeper.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    synchronized (CityKeeper.this) {
                        Gdx.app.debug("CityKeeper", "Waited for city " + CityKeeper.this.city.getName() + " to be saved before exit.");
                    }
                }
            };
            List<CityKeeper> list = SAVING_LIST;
            synchronized (list) {
                list.add(this);
                Runtime.getRuntime().addShutdownHook(thread);
            }
            CarTrafficHandler carTrafficHandler = (CarTrafficHandler) ((DefaultTraffic) this.city.getComponent(7)).getTrafficHandler(CarTrafficHandler.class);
            Objects.requireNonNull(carTrafficHandler);
            List<Car> cars = carTrafficHandler.getCars();
            this.status.set("Acquire locks");
            synchronized (cars) {
                try {
                    synchronized (this.city) {
                        try {
                            this.status.set("Build info");
                            buildCityInfo();
                            LightCityInfo lightCityInfo = this.f3926info;
                            lightCityInfo.setSaveCounter(lightCityInfo.getSaveCounter() + 1);
                            this.status.set("Write header");
                            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream2, StandardCharsets.UTF_8);
                            try {
                                DefaultJsonWriter defaultJsonWriter2 = new DefaultJsonWriter(outputStreamWriter);
                                defaultJsonWriter2.beginObject();
                                this.f3926info.save(defaultJsonWriter2);
                                defaultJsonWriter2.endObject();
                            } catch (IOException e) {
                                Gdx.app.error("CityKeeper", e.toString());
                                TheoTown.analytics.logException("Save city setup", e);
                            }
                            outputStreamWriter.close();
                            StopWatch.step("save city", "Write header");
                            this.status.set("Write minimap");
                            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream3);
                            int i2 = 0;
                            for (int i3 : this.f3926info.getMinimapData()) {
                                dataOutputStream.writeInt(i3);
                            }
                            dataOutputStream.close();
                            StopWatch.step("save city", "Write Minimap");
                            this.status.set("Write preview");
                            if (!this.f3926info.hasPreview() || this.f3926info.getPreviewData() == null) {
                                byteArrayOutputStream = null;
                            } else {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
                                dataOutputStream2.writeInt(this.f3926info.getPreviewWidth());
                                dataOutputStream2.writeInt(this.f3926info.getPreviewHeight());
                                for (int i4 : this.f3926info.getPreviewData()) {
                                    dataOutputStream2.writeInt(i4);
                                }
                                dataOutputStream2.close();
                            }
                            StopWatch.step("save city", "Write Preview");
                            this.status.set("Prepare writing");
                            if (!file.getParentFile().exists()) {
                                file.getParentFile().mkdirs();
                            }
                            File file2 = new File(file.getParentFile(), file.getName() + ".tmp");
                            if (file2.exists() && !file2.delete()) {
                                file2 = new File(file.getParentFile(), UUID.randomUUID().toString());
                            }
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                            try {
                                this.status.set("Flush header");
                                writeHeaderSize(bufferedOutputStream, byteArrayOutputStream2.size());
                                byteArrayOutputStream2.writeTo(bufferedOutputStream);
                                StopWatch.step("save city", "Actually write header");
                                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(bufferedOutputStream, i) { // from class: info.flowersoft.theotown.cityloader.CityKeeper.2
                                    public final /* synthetic */ int val$compressionLevel;

                                    {
                                        this.val$compressionLevel = i;
                                        ((GZIPOutputStream) this).def.setLevel(i);
                                    }
                                };
                                this.status.set("Flush minimap");
                                byteArrayOutputStream3.writeTo(this.f3926info.hasCompressedMinimap() ? gZIPOutputStream : bufferedOutputStream);
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.writeTo(this.f3926info.hasCompressedMinimap() ? gZIPOutputStream : bufferedOutputStream);
                                }
                                StopWatch.step("save city", "Actually write minimap");
                                this.status.set("Setup stream");
                                if (this.f3926info.isBinaryFormat()) {
                                    DataOutputStream dataOutputStream3 = new DataOutputStream(new BufferedOutputStream(gZIPOutputStream));
                                    defaultJsonWriter = new BinaryJsonWriter(dataOutputStream3);
                                    closeable = dataOutputStream3;
                                } else {
                                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream, StandardCharsets.UTF_8));
                                    defaultJsonWriter = new DefaultJsonWriter(bufferedWriter);
                                    closeable = bufferedWriter;
                                }
                                defaultJsonWriter.beginObject();
                                for (ComponentLoader componentLoader : this.loaders) {
                                    try {
                                        this.status.set("Write raw " + componentLoader.getTag());
                                        componentLoader.saveRaw(defaultJsonWriter, this.city);
                                    } catch (IOException e2) {
                                        Gdx.app.error("CityKeeper", e2.toString());
                                        TheoTown.analytics.logException("Save city, raw " + componentLoader.getTag(), e2);
                                        throw e2;
                                    }
                                }
                                for (ComponentLoader componentLoader2 : this.loaders) {
                                    int size = ((DataOutputStream) closeable).size();
                                    try {
                                        this.status.set("Write " + componentLoader2.getTag());
                                        defaultJsonWriter.name(componentLoader2.getTag());
                                        componentLoader2.saveTag(defaultJsonWriter, this.city);
                                        StopWatch.step("save city", "Write component " + componentLoader2.getClass().getSimpleName());
                                        i2++;
                                        this.progress.setProgress(i2 / this.loaders.size());
                                        Gdx.app.debug("CityKeeper", componentLoader2.getTag() + " wrote " + (((DataOutputStream) closeable).size() - size) + " bytes");
                                    } catch (IOException e3) {
                                        Gdx.app.error("CityKeeper", e3.toString());
                                        TheoTown.analytics.logException("Save city, " + componentLoader2.getTag(), e3);
                                        throw e3;
                                    }
                                }
                                defaultJsonWriter.endObject();
                                StopWatch.step("save city", "Write json object");
                                this.status.set("Flush");
                                defaultJsonWriter.flush();
                                closeable.close();
                                bufferedOutputStream.close();
                                StopWatch.step("save city", "Flush write stream");
                                try {
                                    Thread.sleep(100L);
                                } catch (InterruptedException e4) {
                                    e4.printStackTrace();
                                }
                                if (file2.length() == 0) {
                                    throw new IllegalStateException("Output file has size 0");
                                }
                                if (!file2.exists() || !file2.isFile()) {
                                    throw new IllegalArgumentException("Output file could not be created");
                                }
                                this.status.set("Finalize");
                                if (file.exists()) {
                                    File file3 = this.backupFile;
                                    if (file3 == null || file3.exists()) {
                                        File file4 = new File(file.getPath() + ".backup");
                                        if (file4.exists()) {
                                            file4.delete();
                                        }
                                        Gdx.app.debug("Citykeeper", "Try to backup old city file: " + file.renameTo(file4));
                                    } else {
                                        Gdx.app.debug("CityKeeper", "backup file " + this.backupFile + " does not exist therefore move previous file " + file + " to it");
                                        file.renameTo(this.backupFile);
                                    }
                                }
                                if (file2.renameTo(file)) {
                                    Gdx.app.debug("CityKeeper", "Renamed written file " + file2 + " to target destination " + file);
                                } else {
                                    Gdx.app.error("Citykeeper", "May not rename city file " + file2.getName() + " to " + file.getName());
                                }
                                Gdx.app.debug("CityKeeper", "File size: " + file.length());
                                StopWatch.step("save city", "Rename file");
                                if (Settings.saveMinimap) {
                                    saveBitmap();
                                }
                                StopWatch.step("save city", "write preview");
                                StopWatch.stop("save city");
                                Setter<File> setter = this.savedListener;
                                if (setter != null) {
                                    setter.set(file);
                                }
                                List<CityKeeper> list2 = SAVING_LIST;
                                synchronized (list2) {
                                    list2.remove(this);
                                    try {
                                        Runtime.getRuntime().removeShutdownHook(thread);
                                    } catch (IllegalStateException e5) {
                                        TheoTown.analytics.logException("Release hook", e5);
                                    }
                                    SAVING_LIST.notifyAll();
                                }
                            } catch (Throwable th) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (IOException e6) {
                            Gdx.app.error("CityKeeper", e6.toString());
                            TheoTown.analytics.logException("Save city", e6);
                            this.status.set("Error " + e6);
                            SessionLogger.logException(e6);
                            throw new IllegalStateException(e6);
                        }
                    }
                } catch (Throwable th3) {
                    List<CityKeeper> list3 = SAVING_LIST;
                    synchronized (list3) {
                        list3.remove(this);
                        try {
                            Runtime.getRuntime().removeShutdownHook(thread);
                        } catch (IllegalStateException e7) {
                            TheoTown.analytics.logException("Release hook", e7);
                        }
                        SAVING_LIST.notifyAll();
                        throw th3;
                    }
                }
            }
        }
    }

    public ProgressProvider getProgressProvider() {
        return this.progress;
    }

    public Getter<String> getStateProvider() {
        return this.status;
    }

    public final void saveBitmap() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (this.preview != null) {
            arrayList.add(new File(this.file + ".png"));
            arrayList2.add(this.preview);
        }
        arrayList.add(new File(this.file + "mm.png"));
        arrayList2.add(getMinimapBitmap(this.f3926info));
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                PixmapIO.writePNG(Gdx.files.absolute(((File) arrayList.get(i)).getAbsolutePath()), (Pixmap) arrayList2.get(i));
            } catch (Exception e) {
                TheoTown.analytics.logException("Save bitmap", e);
            }
        }
    }

    public final Pixmap getMinimapBitmap(LightCityInfo lightCityInfo) {
        Pixmap pixmap = new Pixmap(lightCityInfo.getWidth(), lightCityInfo.getHeight(), Pixmap.Format.RGBA8888);
        int[] minimapData = lightCityInfo.getMinimapData();
        int[] iArr = new int[minimapData.length];
        for (int i = 0; i < minimapData.length; i++) {
            int i2 = minimapData[i];
            iArr[i] = ((i2 & 65280) << 8) | ((i2 & 255) << 24) | ((i2 >> 24) & 255) | ((16711680 & i2) >> 8);
        }
        pixmap.getPixels().asIntBuffer().put(iArr);
        pixmap.getPixels().rewind();
        return pixmap;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof CityKeeper)) {
            return ((CityKeeper) obj).file.equals(this.file);
        }
        return false;
    }

    public static boolean isCityNameValid(String str) {
        return str.trim().length() >= 3 && str.length() <= 30 && !WordFilter.getInstance().isForbidden(str);
    }
}
