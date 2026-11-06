package info.flowersoft.theotown.region;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.IntMap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.neighbors.RealNeighborCity;
import info.flowersoft.theotown.cityfile.MapDirectory;
import info.flowersoft.theotown.cityfile.MapPreviewRenderer;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.Getter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public class Region {
    public int area;
    public final int id;
    public long inhabitants;
    public final IsoConverter iso;
    public MapDirectory mapDirectory;
    public long mapSelectionTime;
    public List<RegionMap> maps;
    public RegionInformation regionInformation;
    public RegionMap selectedMap;
    public List<RegionMap> sortedMaps;
    public int unlockedMaps;
    public int unlockedOrWaitingMaps;
    public final IntMap<RegionMap> board = new IntMap<>();
    public final Rectangle bounds = new Rectangle();
    public int lastSelectedX = Integer.MIN_VALUE;
    public int lastSelectedY = Integer.MIN_VALUE;

    public final int getBoardKey(int i, int i2) {
        return (i << 16) | (i2 & 65535);
    }

    public Region(int i, MapDirectory mapDirectory, IsoConverter isoConverter) {
        this.id = i;
        this.mapDirectory = mapDirectory;
        this.iso = isoConverter;
    }

    public void reload(MapDirectory mapDirectory) {
        this.mapDirectory = mapDirectory;
        destroyBoard();
    }

    public void reloadRegionInformation() {
        this.regionInformation = this.mapDirectory.getRegionInformation();
    }

    public void updateRegionInformation(RegionInformation regionInformation) {
        this.mapDirectory.saveRegionInformation(regionInformation);
        this.regionInformation = regionInformation;
    }

    public int getId() {
        return this.id;
    }

    public RegionInformation getRegionInformation() {
        return this.regionInformation;
    }

    public String getName() {
        RegionInformation regionInformation = this.regionInformation;
        if (regionInformation != null) {
            return regionInformation.getName();
        }
        return "";
    }

    public long getMapSelectionTime() {
        return this.mapSelectionTime;
    }

    public boolean isLocked(RegionMap regionMap) {
        RegionInformation.CityInformation cityInformation;
        RegionInformation regionInformation = this.regionInformation;
        return (regionInformation == null || (cityInformation = regionInformation.getCityInformation(regionMap.getKeeper())) == null || !cityInformation.isLocked()) ? false : true;
    }

    public boolean isWaitingToUnlock(RegionMap regionMap) {
        RegionInformation.CityInformation cityInformation = this.regionInformation.getCityInformation(regionMap.getKeeper());
        return cityInformation != null && cityInformation.isWaitingToUnlock();
    }

    public boolean isUnlockable(RegionMap regionMap) {
        RegionMap map;
        if (this.unlockedOrWaitingMaps == 0) {
            return true;
        }
        for (int y = regionMap.getY() - 1; y <= regionMap.getY() + regionMap.getHeight(); y++) {
            for (int x = regionMap.getX() - 1; x <= regionMap.getX() + regionMap.getWidth(); x++) {
                if ((x < regionMap.getX() || y < regionMap.getY() || x == regionMap.getX() + regionMap.getWidth() || y == regionMap.getY() + regionMap.getHeight()) && x - regionMap.getX() != y - regionMap.getY() && x - regionMap.getX() != ((regionMap.getHeight() - 1) - y) + regionMap.getY() && (map = getMap(x, y)) != null && !isLocked(map)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void applyNeighbors(RegionMap regionMap) {
        TradingRelation tradingRelation;
        City city = regionMap.getKeeper().getCity();
        HashSet<RegionMap> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (int y = regionMap.getY() - 1; y <= regionMap.getY() + regionMap.getHeight(); y++) {
            for (int x = regionMap.getX() - 1; x <= regionMap.getX() + regionMap.getWidth(); x++) {
                RegionMap map = getMap(x, y);
                if (map != null && map != regionMap) {
                    hashSet.add(map);
                    if ((x < regionMap.getX() || y < regionMap.getY() || x == regionMap.getX() + regionMap.getWidth() || y == regionMap.getY() + regionMap.getHeight()) && x - regionMap.getX() != y - regionMap.getY() && x - regionMap.getX() != ((regionMap.getHeight() - 1) - y) + regionMap.getY()) {
                        hashSet2.add(map);
                    }
                }
            }
        }
        LightCityInfo info2 = regionMap.getKeeper().getInfo();
        city.clearNeighbors();
        for (final RegionMap regionMap2 : hashSet) {
            LightCityInfo info3 = regionMap2.getKeeper().getInfo();
            int x2 = (regionMap.getX() - regionMap2.getX()) * 64;
            int y2 = (regionMap.getY() - regionMap2.getY()) * 64;
            if (!city.isOnline() || (!city.isReadonly() && regionMap2.getKeeper().getAuthorId() == city.getAuthorId())) {
                info3.applyConnections(city, x2, y2);
            }
            if (info2.getLastModified() > info3.getLastModified()) {
                tradingRelation = info2.getTradingRelation(regionMap2.getId());
            } else {
                tradingRelation = info3.getTradingRelation(regionMap.getId());
                if (tradingRelation != null) {
                    tradingRelation = tradingRelation.createReversed(regionMap2.getId());
                }
            }
            if (tradingRelation == null) {
                tradingRelation = new TradingRelation();
                tradingRelation.setId(regionMap2.getId());
            }
            city.addNeighbor(new RealNeighborCity(info3, -x2, -y2, tradingRelation, this.regionInformation.getCityInformation(regionMap2.getKeeper()).isCreated(), regionMap.getId(), regionMap2.getKeeper().getAuthorId(), regionMap2.getKeeper().getAuthorName(), hashSet2.contains(regionMap2), new Getter() { // from class: info.flowersoft.theotown.region.Region$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return Region.m2150$r8$lambda$imXYx5X9lVfmSfVEg7EZU6zkj8(regionMap2);
                }
            }));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$imXYx5X-9lVfmSfVEg7EZU6zkj8, reason: not valid java name */
    public static /* synthetic */ Image m2150$r8$lambda$imXYx5X9lVfmSfVEg7EZU6zkj8(RegionMap regionMap) {
        MapPreviewRenderer renderer = regionMap.getRenderer();
        if (renderer == null) {
            return null;
        }
        if (renderer.readyForUpload()) {
            renderer.upload();
        }
        if (renderer.isFinished()) {
            return renderer.getImage();
        }
        return null;
    }

    public int regionInhabitantsNeededToUnlock() {
        return (this.unlockedOrWaitingMaps - 1) * 1000;
    }

    public long getInhabitants() {
        return this.inhabitants;
    }

    public int getUnlockedOrWaitingMaps() {
        return this.unlockedOrWaitingMaps;
    }

    public int getUnlockedMaps() {
        return this.unlockedMaps;
    }

    public void unlockMap(RegionMap regionMap, int i) {
        RegionInformation.CityInformation cityInformation = this.regionInformation.getCityInformation(regionMap.getKeeper());
        if (cityInformation != null) {
            if (this.unlockedOrWaitingMaps == 0 || i <= 0) {
                cityInformation.setTimeUntilUnlock(0);
            } else {
                cityInformation.setTimeUntilUnlock(i * 60000);
            }
            this.mapDirectory.saveRegionInformation(this.regionInformation);
        }
        updateStats();
    }

    public void unlockMapImmediately(RegionMap regionMap) {
        this.regionInformation.getCityInformation(regionMap.getKeeper()).setLocked(false);
        this.mapDirectory.saveRegionInformation(this.regionInformation);
        updateStats();
    }

    public void fastForwardMapUnlock(RegionMap regionMap, int i) {
        RegionInformation.CityInformation cityInformation = getRegionInformation().getCityInformation(regionMap.getKeeper());
        cityInformation.setTimeUntilUnlock(cityInformation.timeUntilUnlockInMS() - (i * 60000));
        this.mapDirectory.saveRegionInformation(this.regionInformation);
        updateStats();
    }

    public RegionMap getMapByCityKeeper(CityKeeper cityKeeper) {
        if (this.maps == null && this.mapDirectory.isLoaded()) {
            createBoard();
        }
        List<RegionMap> list = this.maps;
        if (list == null) {
            return null;
        }
        for (RegionMap regionMap : list) {
            if (regionMap.getKeeper().getFile().equals(cityKeeper.getFile())) {
                return regionMap;
            }
        }
        return null;
    }

    public boolean isBoardCreated() {
        return this.maps != null;
    }

    public void destroyBoard() {
        this.maps = null;
    }

    public void createBoard() {
        LightCityInfo info2;
        int i;
        int i2;
        this.bounds.set(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.area = 0;
        this.maps = new ArrayList();
        this.sortedMaps = new ArrayList();
        for (CityKeeper cityKeeper : this.mapDirectory.getMaps()) {
            String name = cityKeeper.getFile().getName();
            String strSubstring = name.substring(0, name.indexOf(46));
            int iIndexOf = strSubstring.indexOf(95);
            if (iIndexOf != -1 && (info2 = cityKeeper.getInfo()) != null) {
                int i3 = iIndexOf + 1;
                try {
                    int iIndexOf2 = strSubstring.indexOf(95, i3);
                    int i4 = Integer.parseInt(strSubstring.substring(0, iIndexOf));
                    if (iIndexOf2 == -1) {
                        i = Integer.parseInt(strSubstring.substring(i3));
                        i2 = 0;
                    } else {
                        i = Integer.parseInt(strSubstring.substring(i3, iIndexOf2));
                        i2 = Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
                    }
                    int width = info2.getWidth() / 64;
                    int height = info2.getHeight() / 64;
                    this.bounds.merge(i4, i);
                    this.bounds.merge(i4 + width, i + height);
                    this.area += width * height;
                    RegionMap regionMap = new RegionMap(cityKeeper, i4, i, i2, width, height);
                    this.maps.add(regionMap);
                    this.sortedMaps.add(regionMap);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
            }
        }
        for (RegionMap regionMap2 : this.maps) {
            for (int y = regionMap2.getY(); y < regionMap2.getY() + regionMap2.getHeight(); y++) {
                for (int x = regionMap2.getX(); x < regionMap2.getX() + regionMap2.getWidth(); x++) {
                    this.board.put(getBoardKey(x, y), regionMap2);
                    if (x == this.lastSelectedX && y == this.lastSelectedY) {
                        this.selectedMap = regionMap2;
                    }
                }
            }
        }
        Collections.sort(this.sortedMaps, new Comparator() { // from class: info.flowersoft.theotown.region.Region$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                RegionMap regionMap3 = (RegionMap) obj;
                RegionMap regionMap4 = (RegionMap) obj2;
                return Integer.compare(regionMap3.getX() - regionMap3.getY(), regionMap4.getX() - regionMap4.getY());
            }
        });
        if (this.selectedMap == null) {
            focus((this.bounds.getX() + this.bounds.getWidth()) / 2.0f, (this.bounds.getY() + this.bounds.getHeight()) / 2.0f);
        } else {
            focus(r0.getX() + (this.selectedMap.getWidth() * 0.5f), this.selectedMap.getY() + (this.selectedMap.getHeight() * 0.5f));
        }
        updateStats();
    }

    public float getMinX() {
        return this.bounds.getX();
    }

    public float getMinY() {
        return this.bounds.getY();
    }

    public float getMaxX() {
        return this.bounds.getX() + this.bounds.getWidth();
    }

    public float getMaxY() {
        return this.bounds.getY() + this.bounds.getHeight();
    }

    public float getWidth() {
        return this.bounds.getWidth();
    }

    public float getHeight() {
        return this.bounds.getHeight();
    }

    public void focus(float f, float f2) {
        this.iso.setAbsShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        float centerX = this.iso.getView().getCenterX() - this.iso.isoToAbsX(f, f2);
        float centerY = this.iso.getView().getCenterY() - this.iso.isoToAbsY(f, f2);
        IsoConverter isoConverter = this.iso;
        isoConverter.setAbsShift(centerX / isoConverter.getAbsScaleX(), centerY / this.iso.getAbsScaleY());
    }

    public MapDirectory getMapDirectory() {
        return this.mapDirectory;
    }

    public boolean isTooBigToUpload() {
        Rectangle rectangle = this.bounds;
        if (rectangle.width > 56.0f || rectangle.height > 56.0f || rectangle.area() > 1568.0f) {
            return true;
        }
        List<RegionMap> list = this.maps;
        return list != null && list.size() > 142;
    }

    public boolean containsScenario() {
        if (this.maps == null) {
            return false;
        }
        for (int i = 0; i < this.maps.size(); i++) {
            if (this.maps.get(i).getKeeper().getInfo().isScenario()) {
                return true;
            }
        }
        return false;
    }

    public int getMapCount() {
        List<RegionMap> list = this.maps;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public RegionMap getSortedMapByIndex(int i) {
        return this.sortedMaps.get(i);
    }

    public IsoConverter getIso() {
        return this.iso;
    }

    public int getArea() {
        return this.area;
    }

    public RegionMap getMap(int i, int i2) {
        return this.board.get(getBoardKey(i, i2));
    }

    public RegionMap getSelectedMap() {
        return this.selectedMap;
    }

    public void selectMap(RegionMap regionMap) {
        this.selectedMap = regionMap;
        if (regionMap != null) {
            this.lastSelectedX = regionMap.getX();
            this.lastSelectedY = regionMap.getY();
        } else {
            this.lastSelectedX = Integer.MIN_VALUE;
            this.lastSelectedY = Integer.MIN_VALUE;
        }
        this.mapSelectionTime = System.currentTimeMillis();
    }

    public final void updateStats() {
        this.inhabitants = 0L;
        this.unlockedMaps = 0;
        this.unlockedOrWaitingMaps = 0;
        List<RegionMap> list = this.maps;
        if (list != null) {
            for (RegionMap regionMap : list) {
                if (!isLocked(regionMap) || isWaitingToUnlock(regionMap)) {
                    this.unlockedOrWaitingMaps++;
                }
                if (!isLocked(regionMap)) {
                    this.unlockedMaps++;
                    this.inhabitants += (long) Math.max(regionMap.getKeeper().getInfo().getHabitants(), 0);
                }
            }
        }
    }

    public void createPreviews(Engine engine, ExecutorService executorService) {
        for (RegionMap regionMap : this.maps) {
            if (regionMap.getRenderer() == null) {
                regionMap.setRenderer(new MapPreviewRenderer(regionMap.getKeeper(), engine, executorService));
            }
        }
    }

    public void removeMapPreviews() {
        List<RegionMap> list = this.maps;
        if (list != null) {
            for (RegionMap regionMap : list) {
                regionMap.setRenderer(null);
                regionMap.getKeeper().getInfo().clearPreviewData();
            }
        }
    }

    public void updateMaps() {
        boolean z = false;
        for (int i = 0; i < this.maps.size(); i++) {
            RegionInformation.CityInformation cityInformation = this.regionInformation.getCityInformation(this.maps.get(i).getKeeper());
            if (cityInformation != null) {
                if (cityInformation.isWaitingToUnlock() && cityInformation.timeUntilUnlockInMS() <= 0) {
                    cityInformation.setLocked(false);
                    z = true;
                }
            } else {
                Gdx.app.debug("a", "b");
            }
        }
        if (z) {
            this.mapDirectory.saveRegionInformation(this.regionInformation);
            updateStats();
        }
    }
}
