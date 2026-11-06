package info.flowersoft.theotown.util;

import com.badlogic.gdx.files.FileHandle;
import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.MapSize;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.creation.HeightMap;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.resources.HeightMapManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CityGenerator {
    public String author;
    public final Stapel2DGameContext context;
    public boolean decos;
    public GameMode gameMode;
    public HeightMapManager heightMapManager;
    public String name;
    public boolean region;
    public boolean rivers;
    public int roughness;
    public String seed;
    public MapSize size;
    public boolean terrain;
    public boolean trees;
    public List<String> disabledBiomeIds = new ArrayList();
    public RegionLayout regionLayout = new RegionLayout();

    public int getEffectiveGridSize() {
        return 1;
    }

    public CityGenerator(Stapel2DGameContext stapel2DGameContext, boolean z) {
        this.context = stapel2DGameContext;
        this.heightMapManager = new HeightMapManager(stapel2DGameContext);
        setRandomName();
        setRandomSeed();
        this.region = z;
        this.author = Settings.author;
        if (z) {
            this.size = (MapSize) select(MapSize.values(), Settings.regionMapSize);
        } else {
            this.size = (MapSize) select(MapSize.values(), Settings.mapSize);
        }
        GameMode gameMode = (GameMode) select(GameMode.values(), Settings.gameMode);
        this.gameMode = gameMode;
        if (gameMode == GameMode.FREE) {
            this.gameMode = GameMode.SANDBOX;
        }
        this.trees = Settings.trees;
        this.decos = Settings.decos;
        this.terrain = Settings.terrain;
        this.rivers = Settings.rivers;
        this.roughness = Settings.terrainRoughness;
        this.disabledBiomeIds.clear();
        List<String> list = Settings.disabledBiomes;
        if (list != null) {
            this.disabledBiomeIds.addAll(list);
        }
    }

    public final <T> T select(T[] tArr, int i) {
        if (tArr == null || tArr.length == 0) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i >= tArr.length) {
            i = tArr.length - 1;
        }
        return tArr[i];
    }

    public CityGenerator(CityGenerator cityGenerator) {
        Stapel2DGameContext stapel2DGameContext = cityGenerator.context;
        this.context = stapel2DGameContext;
        this.heightMapManager = new HeightMapManager(stapel2DGameContext);
        setTo(cityGenerator);
    }

    public HeightMapManager getHeightMapManager() {
        return this.heightMapManager;
    }

    public void saveSettings() {
        Settings.author = this.author;
        if (this.region) {
            Settings.regionMapSize = this.size.ordinal();
        } else {
            Settings.mapSize = this.size.ordinal();
        }
        Settings.gameMode = this.gameMode.ordinal();
        Settings.trees = this.trees;
        Settings.decos = this.decos;
        Settings.terrain = this.terrain;
        Settings.rivers = this.rivers;
        Settings.terrainRoughness = this.roughness;
        Settings.disabledBiomes = new ArrayList(this.disabledBiomeIds);
    }

    public boolean isRegion() {
        return this.region;
    }

    public boolean isTrees() {
        return this.trees;
    }

    public boolean isDecos() {
        return this.decos;
    }

    public boolean isTerrain() {
        return this.terrain;
    }

    public boolean isRivers() {
        return this.rivers;
    }

    public int getRoughness() {
        return this.roughness;
    }

    public List<String> getDisabledBiomeIds() {
        return this.disabledBiomeIds;
    }

    public List<BiomeDraft> getActiveBiomes() {
        return CityCreator.collectAvailableBiomes(this.disabledBiomeIds);
    }

    public void setTrees(boolean z) {
        this.trees = z;
    }

    public void setDecos(boolean z) {
        this.decos = z;
    }

    public void setTerrain(boolean z) {
        this.terrain = z;
    }

    public void setRivers(boolean z) {
        this.rivers = z;
    }

    public void setRoughness(int i) {
        this.roughness = i;
    }

    public void setDisabledBiomeIds(List<String> list) {
        this.disabledBiomeIds = list;
    }

    public void setRandomName() {
        this.name = NameGenerator.generateFiltered();
    }

    public void setRandomSeed() {
        String str = this.seed;
        if (str != null && str.indexOf(35) > 0) {
            StringBuilder sb = new StringBuilder();
            String str2 = this.seed;
            sb.append(str2.substring(0, str2.indexOf(35) + 1));
            sb.append(Resources.RND.nextInt(100000));
            this.seed = sb.toString();
            return;
        }
        this.seed = "" + Resources.RND.nextInt(Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public String getSeed() {
        return this.seed;
    }

    public void setSeed(String str) {
        this.seed = str;
    }

    public MapSize getSize() {
        return this.size;
    }

    public int getEffectiveSize() {
        return getEffectiveGridSize() * this.size.getWidth();
    }

    public void setSize(MapSize mapSize) {
        this.size = mapSize;
    }

    public GameMode getGameMode() {
        return this.gameMode;
    }

    public void setGameMode(GameMode gameMode) {
        this.gameMode = gameMode;
    }

    public RegionLayout getRegionLayout() {
        if (this.region) {
            return this.regionLayout;
        }
        return null;
    }

    public CityCreator.CityData generate(ProgressVariable progressVariable, Setter<String> setter) {
        String strSubstring;
        HeightMap heightMapLoadHeightMap;
        CityCreator cityCreator = new CityCreator(this.context);
        if (this.seed.contains("#")) {
            String str = this.seed;
            strSubstring = str.substring(0, str.indexOf(35));
        } else {
            strSubstring = this.seed;
        }
        String str2 = strSubstring;
        File file = new File(TheoTown.APP_CACHE_DIR, str2);
        if (!file.exists() || !file.isFile()) {
            file = new File(TheoTown.APP_DIR, str2);
        }
        if (file.exists() && file.isFile()) {
            try {
                heightMapLoadHeightMap = TheoTown.runtimeFeatures.loadHeightMap(new FileHandle(file.getAbsolutePath()), this.size.getWidth());
            } catch (Exception e) {
                e.printStackTrace();
                heightMapLoadHeightMap = null;
            }
            if (heightMapLoadHeightMap == null) {
                TheoTown.runtimeFeatures.showToast("Couldn't read heightmap");
            }
        } else {
            heightMapLoadHeightMap = this.heightMapManager.get(str2, this.size.getWidth());
        }
        HeightMap heightMap = heightMapLoadHeightMap;
        if (Thread.currentThread().isInterrupted()) {
            return null;
        }
        CityCreator.CityData cityDataGenerate = cityCreator.generate(this.name, this.size.getWidth(), this.size.getHeight(), this.gameMode, this.seed, str2, this.trees, this.terrain, this.rivers, this.roughness, progressVariable, setter, CityCreator.collectAvailableBiomes(this.disabledBiomeIds), heightMap);
        if (cityDataGenerate != null) {
            cityDataGenerate.city.setAuthor(this.author);
        }
        return cityDataGenerate;
    }

    public void setTo(CityGenerator cityGenerator) {
        this.name = cityGenerator.name;
        this.author = cityGenerator.author;
        this.seed = cityGenerator.seed;
        this.size = cityGenerator.size;
        this.region = cityGenerator.region;
        this.gameMode = cityGenerator.gameMode;
        this.trees = cityGenerator.trees;
        this.decos = cityGenerator.decos;
        this.terrain = cityGenerator.terrain;
        this.rivers = cityGenerator.rivers;
        this.roughness = cityGenerator.roughness;
        this.disabledBiomeIds.clear();
        this.disabledBiomeIds.addAll(cityGenerator.disabledBiomeIds);
        this.regionLayout = cityGenerator.regionLayout;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CityGenerator) {
            CityGenerator cityGenerator = (CityGenerator) obj;
            if (cityGenerator.size == this.size && cityGenerator.region == this.region && cityGenerator.decos == this.decos && cityGenerator.terrain == this.terrain && cityGenerator.rivers == this.rivers && cityGenerator.roughness == this.roughness && cityGenerator.disabledBiomeIds.equals(this.disabledBiomeIds) && cityGenerator.trees == this.trees && cityGenerator.seed.equals(this.seed)) {
                return true;
            }
        }
        return false;
    }
}
