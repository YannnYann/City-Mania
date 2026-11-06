package info.flowersoft.theotown.creation;

import com.badlogic.gdx.Gdx;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.PreviewCreator;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.ProgressVariable;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.ValueProperty;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class RegionCreator {
    public final List<BiomeDraft> activeBiomes;
    public CityCreator cityCreator;
    public final Stapel2DGameContext context;
    public final boolean createOriginBackup;
    public final boolean decos;
    public final GameMode gameMode;
    public final HeightMap heightmap;
    public final LocalMapDirectory mapDirectory;
    public final boolean rivers;
    public final int roughness;
    public final String seed;
    public final String seedName;
    public CityCreator.CityData template;
    public final boolean terrain;
    public final int tilesPerUnit;
    public final boolean trees;

    public static /* synthetic */ void $r8$lambda$7YsNgq26XYHXUWCvr6F3QJsmw7g(Float f) {
    }

    public RegionCreator(LocalMapDirectory localMapDirectory, Stapel2DGameContext stapel2DGameContext, int i, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, int i2, List<BiomeDraft> list, GameMode gameMode, HeightMap heightMap, boolean z5) {
        this.mapDirectory = localMapDirectory;
        this.context = stapel2DGameContext;
        this.tilesPerUnit = i;
        this.seed = str;
        this.trees = z;
        this.decos = z2;
        this.terrain = z3;
        this.rivers = z4;
        this.roughness = i2;
        this.activeBiomes = list;
        this.gameMode = gameMode;
        this.heightmap = heightMap;
        this.createOriginBackup = z5;
        this.seedName = str2.contains("#") ? str2.substring(0, str2.indexOf(35)) : str2;
    }

    public void beginCreation(int i) {
        this.mapDirectory.deleteAnything();
        CityCreator cityCreator = new CityCreator(this.context);
        this.cityCreator = cityCreator;
        int i2 = this.tilesPerUnit;
        this.template = cityCreator.generate("", i * i2, i * i2, this.gameMode, this.seed, this.seedName, this.trees, this.terrain, this.rivers, this.roughness, new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), new ValueProperty(""), this.activeBiomes, this.heightmap);
    }

    public void beginCreation(int i, CityCreator.CityData cityData) {
        this.mapDirectory.deleteAnything();
        this.cityCreator = new CityCreator(this.context);
        this.template = cityData;
    }

    public void endCreation() {
        this.mapDirectory.collectCities();
        this.mapDirectory.loadMaps(null, null);
    }

    public void addRegionMap(int i, int i2, int i3) {
        addRegionMap(i, i2, i3, i3, 0);
    }

    public void addRegionMap(int i, int i2, int i3, int i4, int i5) {
        Gdx.app.debug("RegionCreator", "Generate map at " + i + "|" + i2 + " of size " + i3 + "x" + i4);
        CityCreator cityCreator = this.cityCreator;
        CityCreator.CityData cityData = this.template;
        int i6 = this.tilesPerUnit;
        CityCreator.CityData cityDataCreateSubCity = cityCreator.createSubCity("", cityData, i * i6, i2 * i6, i3 * i6, i4 * i6, this.gameMode);
        this.cityCreator.prepareCity(cityDataCreateSubCity, new Setter() { // from class: info.flowersoft.theotown.creation.RegionCreator$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                RegionCreator.$r8$lambda$7YsNgq26XYHXUWCvr6F3QJsmw7g((Float) obj);
            }
        }, this.decos);
        File fileNewRegionCityFile = this.mapDirectory.newRegionCityFile(i, i2, i5);
        CityKeeper cityKeeper = new CityKeeper(fileNewRegionCityFile, this.context.getTranslator());
        cityKeeper.setCity(cityDataCreateSubCity.city);
        PreviewCreator.generateMiniPreview(cityKeeper);
        cityKeeper.save();
        if (this.createOriginBackup) {
            File originBackupDirectory = this.mapDirectory.getOriginBackupDirectory();
            if (!originBackupDirectory.exists()) {
                originBackupDirectory.mkdirs();
            }
            Files.copyFile(fileNewRegionCityFile, new File(originBackupDirectory, fileNewRegionCityFile.getName()));
        }
    }
}
