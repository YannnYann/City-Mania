package info.flowersoft.theotown.cityfile;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.online.OnlineRegionStore;
import info.flowersoft.theotown.online.RegionSettings;
import info.flowersoft.theotown.online.RegionUploader;
import info.flowersoft.theotown.online.VirtualCity;
import info.flowersoft.theotown.online.VirtualRegion;
import info.flowersoft.theotown.online.VirtualUser;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.OnlineFileStore;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineMapDirectory extends MapDirectory {
    public byte[] currentRegionHeaders;
    public boolean enteringRegion;
    public final Map<Integer, CityKeeper> idToMap;
    public String loadedRegionHeadersFile;
    public boolean loadingFailed;
    public float loadingProgress;
    public final Map<CityKeeper, Integer> mapToId;
    public final OnlineFileStore ofs;
    public final int regionId;
    public final OnlineRegionStore regionStore;
    public final RegionUploader regionUploader;

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean canReset(CityKeeper cityKeeper) {
        return false;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean isOnline() {
        return true;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean reset(CityKeeper cityKeeper) {
        return false;
    }

    public OnlineMapDirectory(Stapel2DGameContext stapel2DGameContext, OnlineRegionStore onlineRegionStore, RegionUploader regionUploader, int i, OnlineFileStore onlineFileStore) {
        super(stapel2DGameContext);
        this.idToMap = new HashMap();
        this.mapToId = new HashMap();
        this.regionStore = onlineRegionStore;
        this.regionUploader = regionUploader;
        this.regionId = i;
        this.ofs = onlineFileStore;
        this.dir = Resources.getOnlineRegionsDir();
        final File file = new File(this.dir, "" + i);
        this.dir = file;
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Files.deleteFile(file);
            }
        });
    }

    public OnlineRegionStore getRegionStore() {
        return this.regionStore;
    }

    public RegionUploader getRegionUploader() {
        return this.regionUploader;
    }

    public void clearReports(Service.Handler handler) {
        this.regionUploader.clearRegionReports(this.regionId, handler);
    }

    public void clearReports(CityKeeper cityKeeper, Service.Handler handler) {
        synchronized (this.idToMap) {
            try {
                Integer num = this.mapToId.get(cityKeeper);
                if (num != null) {
                    this.regionUploader.clearCityRequests(num.intValue(), handler);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getCityId(CityKeeper cityKeeper) {
        int iIntValue;
        synchronized (this.idToMap) {
            try {
                Integer num = this.mapToId.get(cityKeeper);
                iIntValue = num != null ? num.intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public CityKeeper getCityById(int i) {
        CityKeeper cityKeeper;
        synchronized (this.idToMap) {
            cityKeeper = this.idToMap.get(Integer.valueOf(i));
        }
        return cityKeeper;
    }

    public void setCityProtection(CityKeeper cityKeeper, boolean z, Service.Handler handler) {
        int cityId = getCityId(cityKeeper);
        if (cityId > 0) {
            this.regionUploader.setCityProtected(cityId, z, handler);
        }
    }

    public void applySettings(RegionSettings regionSettings, Service.Handler handler) {
        this.regionUploader.applyRegionSettings(this.regionId, regionSettings, handler);
    }

    public void fetchComments(final Setter<JSONObject> setter, final Setter<Exception> setter2) {
        this.regionStore.fetchRegionComments(this.regionId, this.password, new Service.Handler() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.2
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                setter.set(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                setter2.set(new RuntimeException(jSONObject.optString("hint", jSONObject.optString("status"))));
            }
        });
    }

    public void fetchCityComments(CityKeeper cityKeeper, final Setter<JSONObject> setter, final Setter<Exception> setter2) {
        synchronized (this.idToMap) {
            try {
                Integer num = this.mapToId.get(cityKeeper);
                if (num != null) {
                    this.regionStore.fetchCityComments(num.intValue(), this.password, new Service.Handler() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.3
                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onSuccess(JSONObject jSONObject) {
                            setter.set(jSONObject);
                        }

                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onFailure(JSONObject jSONObject) {
                            setter2.set(new RuntimeException(jSONObject.optString("hint", jSONObject.optString("status"))));
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRegionAllowComments(final boolean z, final Service.Handler handler) {
        this.regionUploader.setRegionAllowComments(this.regionId, z, new Service.Handler() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.4
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                OnlineMapDirectory.this.getRegion().setAllowComments(z);
                handler.onSuccess(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                handler.onFailure(jSONObject);
            }
        });
    }

    public void setCityAllowComments(CityKeeper cityKeeper, final boolean z, final Service.Handler handler) {
        synchronized (this.idToMap) {
            Integer num = this.mapToId.get(cityKeeper);
            int iIntValue = num.intValue();
            final VirtualCity virtualCity = getRegion().getIdToCity().get(num);
            this.regionUploader.setCityAllowComments(iIntValue, z, new Service.Handler() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.5
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject) {
                    VirtualCity virtualCity2 = virtualCity;
                    if (virtualCity2 != null) {
                        virtualCity2.setAllowComments(z);
                    }
                    handler.onSuccess(jSONObject);
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject) {
                    handler.onFailure(jSONObject);
                }
            });
        }
    }

    public void comment(String str, Service.Handler handler) {
        this.regionUploader.commentRegion(this.regionId, this.password, str, handler);
    }

    public void commentCity(CityKeeper cityKeeper, String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionUploader.commentCity(this.mapToId.get(cityKeeper).intValue(), this.password, str, handler);
        }
    }

    public void resetCity(CityKeeper cityKeeper, String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionUploader.resetCity(this.mapToId.get(cityKeeper).intValue(), str, handler);
        }
    }

    public void removeOwner(CityKeeper cityKeeper, String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionUploader.removeOwner(this.mapToId.get(cityKeeper).intValue(), str, handler);
        }
    }

    public void transferCityOwnership(CityKeeper cityKeeper, int i, String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionUploader.transferCity(this.mapToId.get(cityKeeper).intValue(), i, str, handler);
        }
    }

    public void transferRegionOwnership(int i, String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionUploader.transferRegion(this.regionId, i, str, handler);
        }
    }

    public void reportCity(CityKeeper cityKeeper, String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionStore.reportCity(this.mapToId.get(cityKeeper).intValue(), str, handler);
        }
    }

    public void reportRegion(String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionStore.reportRegion(this.regionId, str, handler);
        }
    }

    public void deleteRegion(String str, Service.Handler handler) {
        synchronized (this.idToMap) {
            this.regionUploader.deleteRegion(this.regionId, str, handler);
        }
    }

    public int getRegionId() {
        return this.regionId;
    }

    public VirtualRegion getVirtualRegion() {
        return this.regionStore.getRegion(this.regionId);
    }

    public int getOwnerId() {
        VirtualUser owner = getRegion().getOwner();
        if (owner != null) {
            return owner.getId();
        }
        return 0;
    }

    public String getAuthorName() {
        VirtualUser owner = getRegion().getOwner();
        return owner != null ? owner.getName() : "";
    }

    public Color getAuthorColor() {
        VirtualUser owner = getRegion().getOwner();
        return owner != null ? owner.getColor() : Colors.GRAY;
    }

    public boolean allowsComments() {
        return getRegion().allowsComments();
    }

    public int getCityOwnerId(CityKeeper cityKeeper) {
        int id;
        synchronized (this.idToMap) {
            try {
                VirtualCity city = getRegion().getCity(this.mapToId.get(cityKeeper));
                VirtualUser owner = city != null ? city.getOwner() : null;
                id = owner != null ? owner.getId() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return id;
    }

    public boolean isCityCommentsAllowed(CityKeeper cityKeeper) {
        boolean z;
        synchronized (this.idToMap) {
            try {
                VirtualCity city = getRegion().getCity(this.mapToId.get(cityKeeper));
                z = city != null && city.allowsComments();
            } finally {
            }
        }
        return z;
    }

    public boolean isCityProtected(CityKeeper cityKeeper) {
        boolean z;
        synchronized (this.idToMap) {
            try {
                VirtualCity city = getRegion().getCity(this.mapToId.get(cityKeeper));
                z = city != null && city.isProtected();
            } finally {
            }
        }
        return z;
    }

    public String getCityAuthor(CityKeeper cityKeeper) {
        String name;
        synchronized (this.idToMap) {
            try {
                VirtualCity city = getRegion().getCity(this.mapToId.get(cityKeeper));
                VirtualUser owner = city != null ? city.getOwner() : null;
                name = owner != null ? owner.getName() : "";
            } catch (Throwable th) {
                throw th;
            }
        }
        return name;
    }

    public Color getCityAuthorColor(CityKeeper cityKeeper) {
        Color color;
        synchronized (this.idToMap) {
            try {
                VirtualCity city = getRegion().getCity(this.mapToId.get(cityKeeper));
                VirtualUser owner = city != null ? city.getOwner() : null;
                color = owner != null ? owner.getColor() : Colors.GRAY;
            } catch (Throwable th) {
                throw th;
            }
        }
        return color;
    }

    public final long getUserId() {
        User user = Backend.getInstance().getUser();
        if (user == null || !user.isValid()) {
            return 0L;
        }
        return user.getId();
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean requiresPassword() {
        VirtualRegion region = this.regionStore.getRegion(this.regionId);
        return region != null && region.isPasswordProtected() && region.getUserCities() == 0 && ((long) region.getOwner().getId()) != getUserId();
    }

    public int getComments() {
        VirtualRegion region = this.regionStore.getRegion(this.regionId);
        if (region != null) {
            return region.getComments();
        }
        return 0;
    }

    public int getReports() {
        VirtualRegion region = this.regionStore.getRegion(this.regionId);
        if (region != null) {
            return region.getReports();
        }
        return 0;
    }

    public int getCityComments(CityKeeper cityKeeper) {
        synchronized (this.idToMap) {
            try {
                VirtualRegion region = this.regionStore.getRegion(this.regionId);
                if (region == null) {
                    return 0;
                }
                VirtualCity city = region.getCity(this.mapToId.get(cityKeeper));
                return city != null ? city.getComments() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getCityReports(CityKeeper cityKeeper) {
        if (Backend.getInstance().getUser().getAdmin() == 0) {
            return 0;
        }
        synchronized (this.idToMap) {
            try {
                VirtualRegion region = this.regionStore.getRegion(this.regionId);
                if (region == null) {
                    return 0;
                }
                VirtualCity city = region.getCity(this.mapToId.get(cityKeeper));
                return city != null ? city.getReports() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getNewCityGifts(CityKeeper cityKeeper) {
        if (!Backend.getInstance().getUser().isValid()) {
            return 0;
        }
        synchronized (this.idToMap) {
            try {
                VirtualRegion region = this.regionStore.getRegion(this.regionId);
                if (region == null) {
                    return 0;
                }
                VirtualCity city = region.getCity(this.mapToId.get(cityKeeper));
                return city != null ? city.getNewGifts() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final CityKeeper getKeeper(final VirtualCity virtualCity) {
        final CityKeeper cityKeeper = new CityKeeper(new File(this.dir, virtualCity.getName()), this.context.getTranslator());
        cityKeeper.setGetActualFileToLoadFrom(new CityKeeper.FileProvider() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.6
            public float progress;

            @Override // info.flowersoft.theotown.cityloader.CityKeeper.FileProvider, info.flowersoft.theotown.util.ProgressProvider
            public float getProgress() {
                return this.progress;
            }

            @Override // info.flowersoft.theotown.cityloader.CityKeeper.FileProvider
            public File get() {
                VirtualCity city;
                this.progress = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                final boolean[] zArr = {false};
                long jMillis = TimeUtils.millis();
                OnlineMapDirectory.this.regionStore.fetchEnterRegion(OnlineMapDirectory.this.regionId, OnlineMapDirectory.this.password, new Runnable() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zArr[0] = true;
                    }
                }, new Setter<String>() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.6.2
                    @Override // io.blueflower.stapel2d.util.Setter
                    public void set(String str) {
                        zArr[0] = true;
                    }
                }, virtualCity.getId());
                while (!zArr[0] && TimeUtils.millis() - jMillis < WebViewScreenCapture.CACHE_TTL_MS) {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                VirtualRegion region = OnlineMapDirectory.this.regionStore.getRegion(OnlineMapDirectory.this.regionId);
                if (region == null || (city = region.getCity(virtualCity.getId())) == null) {
                    return null;
                }
                Gdx.app.debug("OnlineMapDirectory", "Ensured file being up-to-date");
                byte[] bArrDownloadSyncUncached = OnlineMapDirectory.this.ofs.downloadSyncUncached(OnlineMapDirectory.this.regionStore.getFilePath(city.getFile()), new OnlineFileStore.ProgressCallback() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.6.3
                    @Override // info.flowersoft.theotown.util.OnlineFileStore.ProgressCallback
                    public void progress(float f) {
                        AnonymousClass6.this.progress = f;
                    }
                });
                if (bArrDownloadSyncUncached == null || bArrDownloadSyncUncached.length <= 0) {
                    return null;
                }
                File tempFile = Resources.getTempFile();
                Files.writeBinaryFile(tempFile, bArrDownloadSyncUncached);
                return tempFile;
            }
        });
        cityKeeper.setLoadedListener(new Setter<File>() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.7
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(File file) {
                file.delete();
            }
        });
        cityKeeper.setGetActualFileToSaveTo(new Getter<File>() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public File get() {
                return Resources.getTempFile();
            }
        });
        cityKeeper.setSavedListener(new Setter<File>() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.9
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(File file) {
                String str = OnlineMapDirectory.this.regionUploader.uploadCity(virtualCity.getId(), file).get();
                cityKeeper.getFile().delete();
                file.renameTo(cityKeeper.getFile());
                OnlineMapDirectory.this.regionStore.getRegion(OnlineMapDirectory.this.regionId).invalidate();
                if (str != null) {
                    throw new IllegalStateException(str);
                }
            }
        });
        cityKeeper.setSavable(false);
        VirtualUser owner = virtualCity.getOwner();
        boolean zIsAllowPlugins = getRegion().isAllowPlugins();
        if (owner != null) {
            cityKeeper.setOnline(true, virtualCity.getOwner().getName(), virtualCity.getOwner().getId(), zIsAllowPlugins);
            return cityKeeper;
        }
        cityKeeper.setOnline(true, "", 0L, zIsAllowPlugins);
        return cityKeeper;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public RegionInformation getRegionInformation() {
        return new RegionInformation(getRegion());
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean saveRegionInformation(RegionInformation regionInformation) {
        if (getRegionInformation().getName().equals(regionInformation.getName())) {
            return false;
        }
        this.regionUploader.renameRegion(this.regionId, regionInformation.getName(), new Service.Handler() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.10
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
            }
        });
        return false;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public void loadMaps(final Runnable runnable, final Setter<String> setter) {
        this.enteringRegion = true;
        this.currentRegionHeaders = null;
        this.loadingFailed = false;
        this.loadingProgress = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.regionStore.fetchEnterRegion(this.regionId, this.password, new Runnable() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.11
            @Override // java.lang.Runnable
            public void run() {
                synchronized (OnlineMapDirectory.this.idToMap) {
                    try {
                        OnlineMapDirectory.this.maps.clear();
                        for (VirtualCity virtualCity : OnlineMapDirectory.this.getRegion().getCities()) {
                            CityKeeper keeper = OnlineMapDirectory.this.getKeeper(virtualCity);
                            OnlineMapDirectory.this.maps.add(keeper);
                            OnlineMapDirectory.this.idToMap.put(Integer.valueOf(virtualCity.getId()), keeper);
                            OnlineMapDirectory.this.mapToId.put(keeper, Integer.valueOf(virtualCity.getId()));
                        }
                        OnlineMapDirectory.this.loadingFailed = false;
                        OnlineMapDirectory.this.enteringRegion = false;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }, new Setter<String>() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.12
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(String str) {
                OnlineMapDirectory.this.loadingFailed = true;
                OnlineMapDirectory.this.password = "";
                Setter setter2 = setter;
                if (setter2 != null) {
                    setter2.set(str);
                }
            }
        }, 0);
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public void update() {
        VirtualRegion region = getRegion();
        if (region != null && ((this.currentRegionHeaders == null || !this.loadedRegionHeadersFile.equals(region.getHeadersFile())) && !this.enteringRegion)) {
            String filePath = this.regionStore.getFilePath(region.getHeadersFile());
            this.currentRegionHeaders = this.ofs.request(filePath, 0);
            this.loadingProgress = this.ofs.getProgress(filePath);
            this.loadedRegionHeadersFile = region.getHeadersFile();
            if (this.currentRegionHeaders != null) {
                clearDir();
                try {
                    DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(this.currentRegionHeaders));
                    byte[] buffer = StreamCopyUtil.getBuffer();
                    while (dataInputStream.available() != 0) {
                        int i = dataInputStream.readInt();
                        int i2 = dataInputStream.readInt();
                        VirtualCity city = region.getCity(i);
                        if (city != null) {
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(this.dir, city.getName())));
                            int i3 = 0;
                            while (i3 < i2) {
                                int i4 = dataInputStream.read(buffer, 0, Math.min(buffer.length, i2 - i3));
                                i3 += i4;
                                if (i4 <= 0) {
                                    if (i4 < 0) {
                                        break;
                                    }
                                } else {
                                    bufferedOutputStream.write(buffer, 0, i4);
                                }
                            }
                            bufferedOutputStream.close();
                        } else {
                            Gdx.app.debug("OnlineMapDirectory", "Missing city def for " + i);
                        }
                    }
                    dataInputStream.close();
                    synchronized (this.idToMap) {
                        try {
                            Iterator<CityKeeper> it = this.maps.iterator();
                            while (it.hasNext()) {
                                it.next().loadLightInfo(false, true);
                            }
                        } finally {
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    this.loadingProgress = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    this.loadingFailed = true;
                }
            }
        }
        VirtualRegion region2 = getRegion();
        if (region2 != null) {
            synchronized (this.idToMap) {
                try {
                    for (Map.Entry<Integer, CityKeeper> entry : this.idToMap.entrySet()) {
                        VirtualCity city2 = region2.getCity(entry.getKey().intValue());
                        if (city2 != null) {
                            CityKeeper value = entry.getValue();
                            VirtualUser owner = city2.getOwner();
                            value.setSavable(owner != null && ((long) owner.getId()) == Backend.getInstance().getUser().getId());
                        }
                    }
                } finally {
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean isLoaded() {
        VirtualRegion region;
        return (this.currentRegionHeaders == null || this.enteringRegion || this.loadingFailed || (region = this.regionStore.getRegion(this.regionId)) == null || !region.isValid()) ? false : true;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public boolean loadingFailed() {
        return this.loadingFailed;
    }

    @Override // info.flowersoft.theotown.cityfile.MapDirectory
    public float getLoadingProgress() {
        return this.loadingProgress;
    }

    public void acquire(CityKeeper cityKeeper, Runnable runnable, Setter<String> setter) {
        Integer num = this.mapToId.get(cityKeeper);
        if (num == null) {
            setter.set("Invalid city");
        } else {
            this.regionUploader.acquireCity(num.intValue(), this.password, runnable, setter);
        }
    }

    public final void clearDir() {
        if (this.dir.exists()) {
            File[] fileArrListFiles = this.dir.listFiles(new FileFilter() { // from class: info.flowersoft.theotown.cityfile.OnlineMapDirectory.13
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return file.isFile();
                }
            });
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    file.delete();
                }
                return;
            }
            return;
        }
        this.dir.mkdirs();
    }

    public final VirtualRegion getRegion() {
        return this.regionStore.getRegion(this.regionId);
    }
}
