package info.flowersoft.theotown.creation;

import com.badlogic.gdx.Gdx;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.modifier.TerrainBuilder;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultBuildMask;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultDemand;
import info.flowersoft.theotown.components.DefaultIdleGame;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.DefaultNeighborhood;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.components.DefaultScenario;
import info.flowersoft.theotown.components.DefaultSigns;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.DefaultStatistics;
import info.flowersoft.theotown.components.DefaultTSComponent;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.DefaultTransportation;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.notification.DefaultNotificator;
import info.flowersoft.theotown.creation.modifier.BiomeTerrainModifier;
import info.flowersoft.theotown.creation.modifier.IslandsBiomeModifier;
import info.flowersoft.theotown.creation.modifier.VolcanoBiomeModifier;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.SpawnDefinition;
import info.flowersoft.theotown.draft.SpawnInBiomeDefinition;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.LuaLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.libraries.BuilderLibrary;
import info.flowersoft.theotown.scripting.libraries.CityLibrary;
import info.flowersoft.theotown.scripting.libraries.DraftLibrary;
import info.flowersoft.theotown.scripting.libraries.TileLibrary;
import info.flowersoft.theotown.terrain.FancyTerrainGenerator;
import info.flowersoft.theotown.tools.DefaultTool;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.IdGenerator;
import info.flowersoft.theotown.util.Parallel;
import info.flowersoft.theotown.util.ProgressVariable;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.IntValueProperty;
import io.blueflower.stapel2d.util.OpenSimplexNoise;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.ValueProperty;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CyclicBarrier;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public final class CityCreator {
    public City city;
    public final Stapel2DGameContext context;
    public final List<LuaLibrary> luaLibraries;
    public final GroundDraft templateGround;
    public Tiles tiles;
    public final BiomeDraft defaultWater = (BiomeDraft) Drafts.get("$biome_ocean00", BiomeDraft.class);
    public final BiomeDraft defaultBiome = (BiomeDraft) Drafts.get("$biome_mixed_forest00", BiomeDraft.class);
    public final BiomeDraft snowBiome = (BiomeDraft) Drafts.get("$biome_snow00", BiomeDraft.class);
    public final BiomeDraft desertBiome = (BiomeDraft) Drafts.get("$biome_desert00", BiomeDraft.class);

    public static /* synthetic */ void $r8$lambda$uqSaymbBB8HWYghiUMRBc53gUN8(Float f) {
    }

    public CityCreator(Stapel2DGameContext stapel2DGameContext) {
        GroundDraft groundDraft = new GroundDraft();
        this.templateGround = groundDraft;
        groundDraft.frames = new int[0];
        this.luaLibraries = new ArrayList();
        this.context = stapel2DGameContext;
    }

    public final int getNumericalSeed(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return str.hashCode();
        }
    }

    public CityData createSubCity(String str, CityData cityData, int i, int i2, int i3, int i4, GameMode gameMode) {
        City city = cityData.city;
        City city2 = new City(i3, i4, gameMode, this.context.getTranslator());
        this.city = city2;
        this.tiles = city2.getTiles();
        BiomeDraft[] biomeDraftArr = new BiomeDraft[i3 * i4];
        Tiles tiles = city.getTiles();
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < i3; i6++) {
                int i7 = i + i6;
                int i8 = i2 + i5;
                Ground ground = tiles.getGround(i7, i8);
                Ground ground2 = new Ground(ground.getDraft(), ground.getFrame());
                ground2.copyFrom(ground);
                this.tiles.setGround(i6, i5, ground2);
                GroundDraft groundDraft2 = tiles.getGroundDraft2(i7, i8);
                if (groundDraft2 != null) {
                    this.tiles.setGroundDraft2(i6, i5, groundDraft2);
                    this.tiles.setGroundFrame2(i6, i5, tiles.getGroundFrame2(i7, i8));
                }
                Tree tree = tiles.getTree(i7, i8);
                if (tree != null) {
                    this.tiles.setTree(i6, i5, new Tree(tree.getDraft(), tree.getFrame(), i6, i5));
                }
                biomeDraftArr[(i5 * i3) + i6] = cityData.biomeMap[i7 + (i8 * this.city.getWidth())];
            }
        }
        calculateNearWater();
        this.city.setName(str);
        this.city.setId(IdGenerator.generateId(16));
        this.city.setAuthor("");
        this.city.setSeed(city.getSeed());
        this.city.getCityInfo().creationTime = InternetTime.getInstance().getTime();
        return new CityData(this.city, biomeDraftArr, cityData.allBiomes);
    }

    public synchronized CityData generate(String str, final int i, int i2, GameMode gameMode, String str2, String str3, boolean z, boolean z2, boolean z3, int i3, final ProgressVariable progressVariable, Setter<String> setter, List<BiomeDraft> list, HeightMap heightMap) {
        float f;
        byte b;
        Random random;
        float niveau;
        float f2;
        float[] fArr;
        float[] fArr2;
        BiomeDraft[] biomeDraftArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i;
        int i9 = i2;
        synchronized (this) {
            Thread threadCurrentThread = Thread.currentThread();
            try {
                synchronized (CityCreator.class) {
                    try {
                        if (threadCurrentThread.isInterrupted()) {
                            return null;
                        }
                        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                        Gdx.app.debug("CityCreator", "Use " + iAvailableProcessors + " workers");
                        Random random2 = new Random((long) getNumericalSeed(str2));
                        progressVariable.setProgress(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                        setter.set("Prepare");
                        if (threadCurrentThread.isInterrupted()) {
                            return null;
                        }
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        collectBiomes(str3, list, arrayList, arrayList2);
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.addAll(arrayList);
                        arrayList3.addAll(arrayList2);
                        float fPow = (float) Math.pow(2.0d, i3);
                        if (heightMap != null) {
                            fArr2 = new float[i8 * i9];
                            f = 1000.0f;
                            int i10 = 0;
                            while (i10 < i9) {
                                int i11 = 0;
                                while (i11 < i8) {
                                    float f3 = fPow;
                                    int i12 = i10;
                                    float value = heightMap.getValue(Math.min(i11, heightMap.getWidth() - 1), Math.max((heightMap.getHeight() - 1) - i10, 0)) - 0.04f;
                                    if (value > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                                        value *= 3.0f;
                                    }
                                    fArr2[(i12 * i8) + i11] = value * 3.0f * f3;
                                    i11++;
                                    i10 = i12;
                                    fPow = f3;
                                }
                                i10++;
                            }
                            b = 1;
                            random = random2;
                            f2 = 0.0f;
                        } else {
                            f = 1000.0f;
                            b = 1;
                            FancyTerrainGenerator fancyTerrainGenerator = new FancyTerrainGenerator(i8, i9);
                            fancyTerrainGenerator.generate(random2);
                            fancyTerrainGenerator.add(-fancyTerrainGenerator.getMinValue());
                            fancyTerrainGenerator.normalize();
                            fancyTerrainGenerator.multiply((((float) Math.sqrt((random2.nextFloat() * Math.max(i, i2)) / 16.0f)) * 0.5f) + 0.5f);
                            float[] values = fancyTerrainGenerator.getValues();
                            float fMin = Float.MAX_VALUE;
                            float fMax = -3.4028235E38f;
                            int i13 = 0;
                            while (i13 < i9) {
                                int i14 = 0;
                                while (i14 < i8) {
                                    int i15 = i14 + (i13 * i8);
                                    float[] fArr3 = values;
                                    float fPow2 = (values[i15] + ((float) Math.pow(1.1d, r25 - 1000.0f))) * fPow;
                                    fArr3[i15] = fPow2;
                                    fMin = Math.min(fMin, fPow2);
                                    fMax = Math.max(fMax, fPow2);
                                    i14++;
                                    i8 = i;
                                    values = fArr3;
                                    random2 = random2;
                                }
                                i13++;
                                i8 = i;
                                i9 = i2;
                            }
                            float[] fArr4 = values;
                            random = random2;
                            float f4 = 1.0f;
                            if (str3.equals("wateronly")) {
                                niveau = fMax + 1.0f;
                            } else if (str3.equals("sandonly") || str3.equals("grassonly") || str3.equals("snowonly")) {
                                niveau = fMin - 1.0f;
                            } else {
                                float fMax2 = Math.max((((float) Math.pow(random.nextFloat(), 2.0d)) * 0.9f) - 0.05f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                                if (!arrayList2.isEmpty()) {
                                    f4 = fMax2;
                                }
                                niveau = fancyTerrainGenerator.getNiveau(f4, 0.02f);
                            }
                            f2 = niveau;
                            if (!z3 || arrayList2.isEmpty()) {
                                i8 = i;
                                i9 = i2;
                                fArr = fArr4;
                            } else {
                                i8 = i;
                                i9 = i2;
                                fArr = fArr4;
                                generateRivers(i8, i9, fArr, f2, random);
                            }
                            fArr2 = fArr;
                        }
                        if (arrayList.isEmpty()) {
                            arrayList.add(this.defaultWater);
                        }
                        if (arrayList2.isEmpty()) {
                            arrayList2.add(this.defaultBiome);
                        }
                        if (!arrayList3.contains(this.defaultWater)) {
                            arrayList3.add(this.defaultWater);
                        }
                        if (!arrayList3.contains(this.defaultBiome)) {
                            arrayList3.add(this.defaultBiome);
                        }
                        for (int i16 = 0; i16 < arrayList3.size(); i16++) {
                            arrayList3.get(i16).tempIndex = i16;
                        }
                        ArrayList arrayList4 = new ArrayList();
                        ArrayList arrayList5 = new ArrayList();
                        ArrayList arrayList6 = new ArrayList();
                        collectTiles(str3, arrayList4, arrayList5, arrayList6);
                        ArrayList arrayList7 = new ArrayList();
                        collectSpawnableTrees(arrayList7);
                        int size = arrayList3.size();
                        List[] listArr = new List[size];
                        float f5 = f2;
                        int i17 = 0;
                        while (i17 < size) {
                            int i18 = size;
                            ArrayList arrayList8 = new ArrayList();
                            int i19 = i17;
                            BiomeDraft biomeDraft = arrayList3.get(i17);
                            List[] listArr2 = listArr;
                            ArrayList arrayList9 = arrayList;
                            int i20 = 0;
                            while (i20 < arrayList7.size()) {
                                TreeDraft treeDraft = arrayList7.get(i20);
                                ArrayList arrayList10 = arrayList7;
                                int i21 = i20;
                                if (spawnInBiomeArrayIndexOf(treeDraft.biomes, biomeDraft, 0) >= 0) {
                                    arrayList8.add(treeDraft);
                                }
                                i20 = i21 + 1;
                                arrayList7 = arrayList10;
                            }
                            listArr2[i19] = arrayList8;
                            i17 = i19 + 1;
                            size = i18;
                            arrayList7 = arrayList7;
                            listArr = listArr2;
                            arrayList = arrayList9;
                        }
                        ArrayList arrayList11 = arrayList7;
                        final List[] listArr3 = listArr;
                        ArrayList arrayList12 = arrayList;
                        int size2 = arrayList3.size();
                        List<GroundDraft>[] listArr4 = new List[size2];
                        int i22 = 0;
                        while (i22 < size2) {
                            ArrayList arrayList13 = new ArrayList();
                            BiomeDraft biomeDraft2 = arrayList3.get(i22);
                            int i23 = size2;
                            int i24 = i22;
                            int i25 = 0;
                            while (i25 < arrayList6.size()) {
                                GroundDraft groundDraft = arrayList6.get(i25);
                                ArrayList arrayList14 = arrayList6;
                                int i26 = i25;
                                if (spawnInBiomeArrayIndexOf(groundDraft.biomes, biomeDraft2, 0) >= 0) {
                                    arrayList13.add(groundDraft);
                                }
                                i25 = i26 + 1;
                                arrayList6 = arrayList14;
                            }
                            listArr4[i24] = arrayList13;
                            i22 = i24 + 1;
                            size2 = i23;
                            arrayList6 = arrayList6;
                        }
                        final BiomeDraft[] biomeDraftArr2 = new BiomeDraft[i8 * i9];
                        City city = new City(i8, i9, gameMode, this.context.getTranslator());
                        this.city = city;
                        city.setName(str);
                        this.city.setId(IdGenerator.generateId(16));
                        this.city.setAuthor("");
                        this.city.setSeed(str2);
                        this.city.getCityInfo().creationTime = InternetTime.getInstance().getTime();
                        this.tiles = this.city.getTiles();
                        final OpenSimplexNoise noise = this.city.getNoise();
                        int i27 = 0;
                        loadScripts(this.city, 0);
                        int i28 = 0;
                        while (i28 < i9) {
                            int i29 = i27;
                            while (i29 < i8) {
                                Ground ground = new Ground(this.templateGround, i27);
                                this.tiles.setGround(i29, i28, ground);
                                ground.height = (short) Math.round((fArr2[(i28 * i) + i29] - f5) * f);
                                i29++;
                                i8 = i;
                                i27 = 0;
                            }
                            i28++;
                            i8 = i;
                            i27 = 0;
                        }
                        if (threadCurrentThread.isInterrupted()) {
                            unloadScripts(0);
                            return null;
                        }
                        boolean biomes = setBiomes(i, i9, iAvailableProcessors, noise, arrayList2, arrayList12, biomeDraftArr2);
                        int i30 = i9;
                        if (!biomes) {
                            unloadScripts(0);
                            return null;
                        }
                        setter.set("Apply biomes");
                        applyBiomes(progressVariable, iAvailableProcessors, noise, biomeDraftArr2, arrayList3);
                        if (threadCurrentThread.isInterrupted()) {
                            unloadScripts(0);
                            return null;
                        }
                        setter.set("Apply normals");
                        calculateNormals(i, i30, iAvailableProcessors);
                        if (threadCurrentThread.isInterrupted()) {
                            unloadScripts(0);
                            return null;
                        }
                        setter.set("Spawn ground");
                        byte b2 = b;
                        final Random random3 = random;
                        boolean fancyGround = setFancyGround(i, i30, progressVariable, iAvailableProcessors, noise, biomeDraftArr2, listArr4, arrayList5.get(0), arrayList4.get(0), random3);
                        int i31 = i30;
                        if (!fancyGround) {
                            unloadScripts(0);
                            return null;
                        }
                        if (threadCurrentThread.isInterrupted()) {
                            unloadScripts(0);
                            return null;
                        }
                        setter.set("Near water");
                        calculateNearWater();
                        if (threadCurrentThread.isInterrupted()) {
                            unloadScripts(0);
                            return null;
                        }
                        progressVariable.setProgress(0.4f);
                        setter.set("Plant trees");
                        if (!z || arrayList11.isEmpty()) {
                            biomeDraftArr = biomeDraftArr2;
                        } else {
                            biomeDraftArr = biomeDraftArr2;
                            Parallel.computeParallel(iAvailableProcessors, i31, new Parallel.Worker() { // from class: info.flowersoft.theotown.creation.CityCreator.1
                                @Override // info.flowersoft.theotown.util.Parallel.Worker
                                public void work(int i32, int i33, int i34) {
                                    ProbabilitySelector probabilitySelector = new ProbabilitySelector();
                                    for (int i35 = i33; i35 < i34 && !Thread.currentThread().isInterrupted(); i35++) {
                                        if (i33 == 0) {
                                            progressVariable.setProgress(((i35 * 0.2f) / i34) + 0.4f);
                                        }
                                        int i36 = 0;
                                        while (true) {
                                            int i37 = i;
                                            if (i36 < i37) {
                                                BiomeDraft biomeDraft3 = biomeDraftArr2[(i37 * i35) + i36];
                                                Ground ground2 = CityCreator.this.tiles.getGround(i36, i35);
                                                TreeDraft treeDraftPickTree = CityCreator.this.pickTree(listArr3[biomeDraft3.tempIndex], noise, biomeDraft3, ground2.getDraft(), i36, i35, ground2.height / 1000.0f, ground2.getDerivativeSq(), probabilitySelector);
                                                if (treeDraftPickTree != null) {
                                                    CityCreator.this.tiles.setTree(i36, i35, new Tree(treeDraftPickTree, random3.nextInt(treeDraftPickTree.frames.length / treeDraftPickTree.framesPerTree), i36, i35));
                                                }
                                                i36++;
                                            }
                                        }
                                    }
                                }
                            });
                        }
                        if (threadCurrentThread.isInterrupted()) {
                            unloadScripts(0);
                            return null;
                        }
                        progressVariable.setProgress(0.8f);
                        setter.set("Grow hills");
                        if (z2) {
                            ArrayList arrayList15 = new ArrayList();
                            final int iMax = Math.max((i31 + 3) / 4, 64);
                            int i32 = ((i31 + iMax) - b2) / iMax;
                            final CyclicBarrier cyclicBarrier = new CyclicBarrier(i32);
                            final int i33 = 0;
                            while (i33 < i32) {
                                final int i34 = i31;
                                int i35 = i33;
                                Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        CityCreator.$r8$lambda$wFfnp8tqG0lI8Kbwd5yYBNRzU28(this.f$0, i33, iMax, i34, progressVariable, cyclicBarrier, i);
                                    }
                                });
                                thread.start();
                                thread.setName("CityCreator" + i35);
                                arrayList15.add(thread);
                                i31 = i34;
                                i33 = i35 + 1;
                                iMax = iMax;
                            }
                            int i36 = i31;
                            Parallel.join(arrayList15);
                            if (threadCurrentThread.isInterrupted()) {
                                unloadScripts(0);
                                return null;
                            }
                            setter.set("Smooth");
                            TerrainBuilder terrainBuilder = new CityModifier(this.city, false).getTerrainBuilder();
                            for (int i37 = 0; i37 < i36; i37++) {
                                for (int i38 = 0; i38 < i; i38++) {
                                    Ground ground2 = this.tiles.getGround(i38, i37);
                                    int upDirs = ground2.getUpDirs();
                                    int iCountDirections = Direction.countDirections(upDirs);
                                    byte terrainHeights = ground2.getTerrainHeights();
                                    if (iCountDirections == b2) {
                                        int iDifferenceX = Direction.differenceX(upDirs) + i38;
                                        int iDifferenceY = Direction.differenceY(upDirs) + i37;
                                        if (this.city.isValid(iDifferenceX, iDifferenceY) && this.tiles.getUpDirs(iDifferenceX, iDifferenceY) == Direction.opposite(upDirs)) {
                                            terrainBuilder.addTarget(i38, i37, ground2.getBaseTerrainHeight());
                                            terrainBuilder.calculate();
                                            if (terrainBuilder.isBuildable()) {
                                                terrainBuilder.apply();
                                            } else {
                                                terrainBuilder.clear();
                                            }
                                        }
                                        int iDifferenceX2 = i38 - Direction.differenceX(upDirs);
                                        int iDifferenceY2 = i37 - Direction.differenceY(upDirs);
                                        if (this.city.isValid(iDifferenceX2, iDifferenceY2) && this.tiles.getUpDirs(iDifferenceX2, iDifferenceY2) == Direction.opposite(upDirs)) {
                                            terrainBuilder.addTarget(i38, i37, this.tiles.getBaseTerrainHeight(i38, i37));
                                            terrainBuilder.calculate();
                                            if (terrainBuilder.isBuildable()) {
                                                terrainBuilder.apply();
                                            } else {
                                                terrainBuilder.clear();
                                            }
                                        }
                                    } else if (terrainHeights == 4 && (i6 = i38 + 1) < i && (i7 = i37 + 1) < i36) {
                                        if (this.tiles.getTerrainHeights(i6, i37) == 8 && this.tiles.getTerrainHeights(i6, i7) == b2 && this.tiles.getTerrainHeights(i38, i7) == 2) {
                                            terrainBuilder.addTarget(i38, i37, this.tiles.getBaseTerrainHeight(i38, i37));
                                            terrainBuilder.calculate();
                                            if (terrainBuilder.isBuildable()) {
                                                terrainBuilder.apply();
                                            } else {
                                                terrainBuilder.clear();
                                            }
                                        }
                                    } else if (terrainHeights == 11 && (i4 = i38 + 1) < i && (i5 = i37 + 1) < i36 && this.tiles.getTerrainHeights(i4, i37) == 7 && this.tiles.getTerrainHeights(i4, i5) == 14 && this.tiles.getTerrainHeights(i38, i5) == 13) {
                                        terrainBuilder.addTarget(i38, i37, this.tiles.getBaseTerrainHeight(i38, i37) + b2);
                                        terrainBuilder.calculate();
                                        if (terrainBuilder.isBuildable()) {
                                            terrainBuilder.apply();
                                        } else {
                                            terrainBuilder.clear();
                                        }
                                    }
                                }
                            }
                        }
                        unloadScripts(0);
                        setter.set("Done");
                        return new CityData(this.city, biomeDraftArr, arrayList3);
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$wFfnp8tqG0lI8Kbwd5yYBNRzU28(CityCreator cityCreator, int i, int i2, int i3, ProgressVariable progressVariable, CyclicBarrier cyclicBarrier, int i4) {
        TerrainBuilder terrainBuilder = new CityModifier(cityCreator.city, false).getTerrainBuilder();
        int i5 = i * i2;
        int iMin = Math.min((i2 / 2) + i5, i3);
        int iMin2 = Math.min(i2 + i5, i3);
        for (int i6 = i5; i6 < iMin && !Thread.currentThread().isInterrupted(); i6++) {
            if (i5 == 0) {
                progressVariable.setProgress(((i6 * 0.2f) / iMin2) + 0.8f);
            }
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = cityCreator.tiles.getGround(i7, i6).height / 200;
                if (i8 > 0) {
                    terrainBuilder.addTarget(i7, i6, i8);
                    terrainBuilder.calculate();
                    if (terrainBuilder.isBuildable()) {
                        terrainBuilder.apply();
                    } else {
                        terrainBuilder.clear();
                    }
                }
            }
        }
        try {
            cyclicBarrier.await();
            while (iMin < iMin2) {
                if (Thread.currentThread().isInterrupted()) {
                    return;
                }
                if (i5 == 0) {
                    progressVariable.setProgress(((iMin * 0.2f) / iMin2) + 0.8f);
                }
                for (int i9 = 0; i9 < i4; i9++) {
                    int i10 = cityCreator.tiles.getGround(i9, iMin).height / 200;
                    if (i10 > 0) {
                        terrainBuilder.addTarget(i9, iMin, i10);
                        terrainBuilder.calculate();
                        if (terrainBuilder.isBuildable()) {
                            terrainBuilder.apply();
                        } else {
                            terrainBuilder.clear();
                        }
                    }
                }
                iMin++;
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (BrokenBarrierException e2) {
            e2.printStackTrace();
        }
    }

    public final void generateRivers(final int i, final int i2, final float[] fArr, final float f, Random random) {
        Random random2 = random;
        ArrayList arrayList = new ArrayList();
        final IntValueProperty intValueProperty = new IntValueProperty();
        final int i3 = 0;
        while (i3 < ((i + i2) / 2) / 64) {
            final long jNextLong = random2.nextLong();
            boolean zNextBoolean = random2.nextBoolean();
            int i4 = -32;
            final int i5 = zNextBoolean ? -32 : i + 31;
            if (zNextBoolean) {
                i4 = i + 31;
            }
            final int i6 = i4;
            final int iNextInt = random2.nextInt(i2);
            final int iNextInt2 = random2.nextInt(i2);
            final boolean zNextBoolean2 = random2.nextBoolean();
            ArrayList arrayList2 = arrayList;
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.addRiver(i3, fArr, i, i2, f, jNextLong, i5, iNextInt, i6, iNextInt2, zNextBoolean2, intValueProperty);
                }
            });
            thread.start();
            thread.setName("River" + i3);
            arrayList2.add(thread);
            i3++;
            random2 = random;
            arrayList = arrayList2;
        }
        Parallel.join(arrayList);
        smoothRivers(fArr, i, i2);
    }

    public final void applyBiomes(ProgressVariable progressVariable, int i, OpenSimplexNoise openSimplexNoise, BiomeDraft[] biomeDraftArr, List<BiomeDraft> list) {
        BiomeTerrainModifier[] biomeTerrainModifierArr = {new VolcanoBiomeModifier(), new IslandsBiomeModifier()};
        for (int i2 = 0; i2 < 2; i2++) {
            BiomeTerrainModifier biomeTerrainModifier = biomeTerrainModifierArr[i2];
            biomeTerrainModifier.bind(this.tiles, i, openSimplexNoise, biomeDraftArr, list, this.templateGround);
            if (biomeTerrainModifier.isAvailable()) {
                biomeTerrainModifier.apply();
            }
        }
    }

    public final boolean setBiomes(final int i, int i2, int i3, final OpenSimplexNoise openSimplexNoise, final List<BiomeDraft> list, final List<BiomeDraft> list2, final BiomeDraft[] biomeDraftArr) {
        return Parallel.computeParallel(i3, i2, new Parallel.Worker() { // from class: info.flowersoft.theotown.creation.CityCreator.2
            @Override // info.flowersoft.theotown.util.Parallel.Worker
            public void work(int i4, int i5, int i6) {
                for (int i7 = i5; i7 < i6 && !Thread.currentThread().isInterrupted(); i7++) {
                    for (int i8 = 0; i8 < i; i8++) {
                        float f = r8.height / 1000.0f;
                        biomeDraftArr[(i * i7) + i8] = CityCreator.this.pickBiome(openSimplexNoise, f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? list2 : list, i8, i7, f, CityCreator.this.tiles.getGround(i8, i7).getDerivativeSq());
                    }
                }
            }
        });
    }

    public final boolean setFancyGround(final int i, int i2, final ProgressVariable progressVariable, int i3, final OpenSimplexNoise openSimplexNoise, final BiomeDraft[] biomeDraftArr, final List<GroundDraft>[] listArr, final GroundDraft groundDraft, final GroundDraft groundDraft2, final Random random) {
        return Parallel.computeParallel(i3, i2, new Parallel.Worker() { // from class: info.flowersoft.theotown.creation.CityCreator.3
            @Override // info.flowersoft.theotown.util.Parallel.Worker
            public void work(int i4, int i5, int i6) {
                ProbabilitySelector probabilitySelector = new ProbabilitySelector();
                for (int i7 = i5; i7 < i6 && !Thread.currentThread().isInterrupted(); i7++) {
                    if (i5 == 0) {
                        progressVariable.setProgress(((i7 * 0.2f) / i6) + 0.2f);
                    }
                    for (int i8 = 0; i8 < i; i8++) {
                        Ground ground = CityCreator.this.tiles.getGround(i8, i7);
                        if (ground.getDraft() == CityCreator.this.templateGround) {
                            float derivativeSq = ground.getDerivativeSq();
                            BiomeDraft biomeDraft = biomeDraftArr[(i * i7) + i8];
                            GroundDraft groundDraftPickGround = CityCreator.this.pickGround(listArr[biomeDraft.tempIndex], openSimplexNoise, biomeDraft, i8, i7, ground.height / 1000.0f, derivativeSq, probabilitySelector);
                            if (groundDraftPickGround == null) {
                                if (ground.height < 0) {
                                    groundDraftPickGround = groundDraft2;
                                } else {
                                    groundDraftPickGround = groundDraft;
                                }
                            }
                            ground.setDraft(groundDraftPickGround);
                            ground.setFrame(random.nextInt(groundDraftPickGround.frames.length));
                        }
                    }
                }
            }
        });
    }

    public final int spawnInBiomeArrayIndexOf(SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr, BiomeDraft biomeDraft, int i) {
        if (spawnInBiomeDefinitionArr == null) {
            return -1;
        }
        while (i < spawnInBiomeDefinitionArr.length) {
            BiomeDraft biomeDraft2 = spawnInBiomeDefinitionArr[i].biome;
            if (biomeDraft2 == biomeDraft || biomeDraft2 == null) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final void calculateNormals(int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        final CyclicBarrier cyclicBarrier = new CyclicBarrier(i3);
        final int i4 = ((i2 + i3) - 1) / i3;
        final int i5 = 0;
        while (i5 < i3) {
            final int i6 = i;
            final int i7 = i2;
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CityCreator.$r8$lambda$NnqDklRZg7v6JB5SnlSLJ72E3SM(this.f$0, i5, i4, i7, i6, cyclicBarrier);
                }
            });
            thread.start();
            thread.setName("Normals worker " + i5);
            arrayList.add(thread);
            i5++;
            i2 = i7;
            i = i6;
        }
        Parallel.join(arrayList);
    }

    public static /* synthetic */ void $r8$lambda$NnqDklRZg7v6JB5SnlSLJ72E3SM(CityCreator cityCreator, int i, int i2, int i3, int i4, CyclicBarrier cyclicBarrier) {
        int i5;
        cityCreator.getClass();
        int i6 = i * i2;
        int i7 = i6;
        while (true) {
            if (i7 < i3 && i7 < i6 + i2) {
                int i8 = 1;
                while (true) {
                    i5 = i4 - 1;
                    if (i8 >= i5) {
                        break;
                    }
                    int i9 = i8 + 1;
                    cityCreator.tiles.getGround(i8, i7).heightDX = (byte) Math.min(Math.max((cityCreator.tiles.getGround(i9, i7).height - cityCreator.tiles.getGround(i8 - 1, i7).height) / 2, -50), 50);
                    i8 = i9;
                }
                if (i7 > 0 && i7 < i3 - 1) {
                    for (int i10 = 0; i10 < i4; i10++) {
                        cityCreator.tiles.getGround(i10, i7).heightDY = (byte) Math.min(Math.max((cityCreator.tiles.getGround(i10, i7 + 1).height - cityCreator.tiles.getGround(i10, i7 - 1).height) / 2, -50), 50);
                    }
                }
                cityCreator.tiles.getGround(0, i7).heightDX = cityCreator.tiles.getGround(1, i7).heightDX;
                cityCreator.tiles.getGround(i5, i7).heightDX = cityCreator.tiles.getGround(i4 - 2, i7).heightDX;
                if (i7 == 0) {
                    for (int i11 = 1; i11 < i5; i11++) {
                        cityCreator.tiles.getGround(i11, i7).heightDY = cityCreator.tiles.getGround(i11, 1).heightDY;
                    }
                } else if (i7 == i3 - 1) {
                    for (int i12 = 1; i12 < i5; i12++) {
                        cityCreator.tiles.getGround(i12, i7).heightDY = cityCreator.tiles.getGround(i12, i3 - 2).heightDY;
                    }
                }
                i7++;
            } else {
                try {
                    cyclicBarrier.await();
                    for (int i13 = i6; i13 < i3 && i13 < i6 + i2; i13++) {
                        int i14 = 1;
                        while (i14 < i4 - 1) {
                            Ground ground = cityCreator.tiles.getGround(i14, i13);
                            int i15 = cityCreator.tiles.getGround(i14 - 1, i13).heightDX + (cityCreator.tiles.getGround(i14, i13).heightDX * 2);
                            i14++;
                            ground.heightDX = (byte) ((i15 + cityCreator.tiles.getGround(i14, i13).heightDX) / 4);
                        }
                    }
                    for (int iMax = Math.max(i6, 1); iMax < i3 - 1 && iMax < i6 + i2; iMax++) {
                        for (int i16 = 0; i16 < i4; i16++) {
                            cityCreator.tiles.getGround(i16, iMax).heightDY = (byte) (((cityCreator.tiles.getGround(i16, iMax - 1).heightDY + (cityCreator.tiles.getGround(i16, iMax).heightDY * 2)) + cityCreator.tiles.getGround(i16, iMax + 1).heightDY) / 4);
                        }
                    }
                    return;
                } catch (InterruptedException | BrokenBarrierException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    public final BuildingDraft pickBuilding(List<BuildingDraft> list, OpenSimplexNoise openSimplexNoise, BiomeDraft biomeDraft, GroundDraft groundDraft, int i, int i2, float f, float f2, ProbabilitySelector<BuildingDraft> probabilitySelector) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        probabilitySelector.clear();
        float f3 = (r2 & 255) / 255.0f;
        float f4 = ((r3 >> 8) & 255) / 255.0f;
        float fHash = (Integer.MAX_VALUE & (Hashing.hash(i, i2) ^ (-1236122737))) / 2.1474836E9f;
        int i3 = 0;
        while (i3 < list.size()) {
            BuildingDraft buildingDraft = list.get(i3);
            int i4 = i3;
            probabilitySelector.insert(buildingDraft, evaluateSpawnInBiomeArray(buildingDraft.biomes, openSimplexNoise, biomeDraft, groundDraft, i, i2, f, f2, f3, f4, i4));
            i3 = i4 + 1;
        }
        if (probabilitySelector.getProbabilitySum() >= 1.0f || probabilitySelector.getProbabilitySum() >= fHash) {
            return probabilitySelector.getResult();
        }
        return null;
    }

    public final TreeDraft pickTree(List<TreeDraft> list, OpenSimplexNoise openSimplexNoise, BiomeDraft biomeDraft, GroundDraft groundDraft, int i, int i2, float f, float f2, ProbabilitySelector<TreeDraft> probabilitySelector) {
        if (list.isEmpty()) {
            return null;
        }
        probabilitySelector.clear();
        float f3 = (r0 & 255) / 255.0f;
        float f4 = ((r2 >> 8) & 255) / 255.0f;
        float fHash = (Integer.MAX_VALUE & (Hashing.hash(i, i2) ^ (-2077283205))) / 2.1474836E9f;
        for (int i3 = 0; i3 < list.size(); i3++) {
            TreeDraft treeDraft = list.get(i3);
            if ((f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || treeDraft.water) && (f <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || treeDraft.land)) {
                probabilitySelector.insert(treeDraft, evaluateSpawnInBiomeArray(treeDraft.biomes, openSimplexNoise, biomeDraft, groundDraft, i, i2, f, f2, f3, f4, i3));
            }
        }
        if (probabilitySelector.getProbabilitySum() >= 1.0f || probabilitySelector.getProbabilitySum() >= fHash) {
            return probabilitySelector.getResult();
        }
        return null;
    }

    public final GroundDraft pickGround(List<GroundDraft> list, OpenSimplexNoise openSimplexNoise, BiomeDraft biomeDraft, int i, int i2, float f, float f2, ProbabilitySelector<GroundDraft> probabilitySelector) {
        if (list.size() == 0) {
            return null;
        }
        probabilitySelector.clear();
        int iHash = Hashing.hash(i, i2) ^ 984850279;
        float f3 = (iHash & 255) / 255.0f;
        float f4 = (((Integer.MAX_VALUE & iHash) >> 8) & 255) / 255.0f;
        for (int i3 = 0; i3 < list.size(); i3++) {
            GroundDraft groundDraft = list.get(i3);
            if ((f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) == groundDraft.isWater) {
                probabilitySelector.insert(groundDraft, evaluateSpawnInBiomeArray(groundDraft.biomes, openSimplexNoise, biomeDraft, null, i, i2, f, f2, f3, f4, i3));
            }
        }
        return probabilitySelector.getResult();
    }

    public final float evaluateSpawnInBiomeArray(SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr, OpenSimplexNoise openSimplexNoise, BiomeDraft biomeDraft, GroundDraft groundDraft, int i, int i2, float f, float f2, float f3, float f4, int i3) {
        float fMax = 0.0f;
        for (SpawnInBiomeDefinition spawnInBiomeDefinition : spawnInBiomeDefinitionArr) {
            BiomeDraft biomeDraft2 = spawnInBiomeDefinition.biome;
            if (biomeDraft2 == biomeDraft || biomeDraft2 == null) {
                fMax += Math.max(evaluateSpawnDefinition(openSimplexNoise, groundDraft, i, i2, f, f2, f3, f4, i3, spawnInBiomeDefinition.spawnDefinition), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
        }
        return fMax;
    }

    public final float evalNoise(OpenSimplexNoise openSimplexNoise, float f, float f2, float f3, float f4) {
        float f5 = f4 * 37.0f;
        float fEval = openSimplexNoise.eval(f3 * f, (f3 * f2) + f5) * 0.8f;
        float f6 = 2.0f * f3;
        float f7 = f3 * 4.0f;
        return fEval + (openSimplexNoise.eval(f6 * f, (f6 * f2) + f5) * 0.4f) + (openSimplexNoise.eval(f * f7, (f7 * f2) + f5) * 0.2f);
    }

    public final BiomeDraft pickBiome(OpenSimplexNoise openSimplexNoise, List<BiomeDraft> list, int i, int i2, float f, float f2) {
        int iHash = Hashing.hash(i, i2);
        float f3 = (iHash & 255) / 255.0f;
        float f4 = (((Integer.MAX_VALUE & iHash) >> 8) & 255) / 255.0f;
        BiomeDraft biomeDraft = list.get(0);
        float f5 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (int i3 = 0; i3 < list.size(); i3++) {
            BiomeDraft biomeDraft2 = list.get(i3);
            float fEvaluateSpawnDefinition = evaluateSpawnDefinition(openSimplexNoise, null, i, i2, f, f2, f3, f4, biomeDraft2.tempIndex, biomeDraft2.spawnDefinition);
            if (fEvaluateSpawnDefinition > f5) {
                f5 = fEvaluateSpawnDefinition;
                biomeDraft = biomeDraft2;
            }
        }
        return biomeDraft;
    }

    public final float evaluateSpawnDefinition(OpenSimplexNoise openSimplexNoise, GroundDraft groundDraft, int i, int i2, float f, float f2, float f3, float f4, int i3, SpawnDefinition spawnDefinition) {
        Set<GroundDraft> set = spawnDefinition.allowedGroundSet;
        float fAbs = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (set != null && groundDraft != null && !set.contains(groundDraft)) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        float f5 = spawnDefinition.noiseVariance;
        float f6 = i + (f5 * 2.0f * (f3 - 0.5f));
        float f7 = i2 + (f5 * 2.0f * (f4 - 0.5f));
        float f8 = 0.02f / spawnDefinition.noiseScale;
        int i4 = spawnDefinition.noiseSeed;
        if (i4 < 0) {
            i4 = i3 + 7;
        }
        float fEvalNoise = spawnDefinition.noiseFactor != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? evalNoise(openSimplexNoise, f6, f7, f8, i4) + spawnDefinition.noiseOffset : 0.0f;
        float fAbs2 = (1.0f - (Math.abs(f - spawnDefinition.heightCenter) / spawnDefinition.heightRadius)) + spawnDefinition.heightOffset;
        if (spawnDefinition.derivFactor != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fAbs = (1.0f - (Math.abs(f2 - spawnDefinition.derivCenter) / spawnDefinition.derivRadius)) + spawnDefinition.derivOffset;
        }
        return (((((((spawnDefinition.noiseFactor * fEvalNoise) + (spawnDefinition.heightFactor * fAbs2)) + (spawnDefinition.derivFactor * fAbs)) + spawnDefinition.offset) - 1.0f) / Math.max(spawnDefinition.coverage, 0.01f)) + 1.0f) * spawnDefinition.precedence;
    }

    public final synchronized void placeDecorations(CityData cityData) {
        CityModifier cityModifier;
        synchronized (CityCreator.class) {
            try {
                City city = cityData.city;
                Tiles tiles = city.getTiles();
                List<BiomeDraft> list = cityData.allBiomes;
                BiomeDraft[] biomeDraftArr = cityData.biomeMap;
                loadScripts(city, 1);
                List<BuildingDraft>[] listArr = new List[list.size()];
                int i = 0;
                for (int i2 = 0; i2 < Drafts.BUILDINGS.size(); i2++) {
                    BuildingDraft buildingDraft = Drafts.BUILDINGS.get(i2);
                    SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr = buildingDraft.biomes;
                    if (spawnInBiomeDefinitionArr != null && spawnInBiomeDefinitionArr.length != 0 && (!buildingDraft.hasRequirement() || buildingDraft.getRequirement().isFulfilled(city, this.context))) {
                        for (int i3 = 0; i3 < list.size(); i3++) {
                            BiomeDraft biomeDraft = list.get(i3);
                            if (spawnInBiomeArrayIndexOf(buildingDraft.biomes, biomeDraft, 0) >= 0) {
                                List<BuildingDraft> arrayList = listArr[biomeDraft.tempIndex];
                                if (arrayList == null) {
                                    arrayList = new ArrayList<>();
                                    listArr[biomeDraft.tempIndex] = arrayList;
                                }
                                arrayList.add(buildingDraft);
                                i++;
                            }
                        }
                    }
                }
                if (i == 0) {
                    return;
                }
                ProbabilitySelector<BuildingDraft> probabilitySelector = new ProbabilitySelector<>(Resources.RND);
                CityModifier cityModifier2 = new CityModifier(city, true);
                int i4 = 0;
                OpenSimplexNoise noise = city.getNoise();
                int i5 = 0;
                while (i5 < city.getHeight()) {
                    int i6 = i4;
                    while (i6 < city.getWidth()) {
                        if (tiles.getBuilding(i6, i5) != null) {
                            cityModifier = cityModifier2;
                        } else {
                            Ground ground = tiles.getGround(i6, i5);
                            float derivativeSq = ground.getDerivativeSq();
                            BiomeDraft biomeDraft2 = biomeDraftArr[i6 + (city.getWidth() * i5)];
                            cityModifier = cityModifier2;
                            BuildingDraft buildingDraftPickBuilding = pickBuilding(listArr[biomeDraft2.tempIndex], noise, biomeDraft2, ground.getDraft(), i6, i5, ground.height / 1000.0f, derivativeSq, probabilitySelector);
                            if (buildingDraftPickBuilding != null && cityModifier.isBuildable(buildingDraftPickBuilding, i6, i5)) {
                                cityModifier.finishBuildings(cityModifier.build(buildingDraftPickBuilding, i6, i5, -1, (LuaValue) null), null);
                            }
                        }
                        i6++;
                        cityModifier2 = cityModifier;
                    }
                    i5++;
                    i4 = 0;
                }
                unloadScripts(1);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void loadScripts(City city, int i) {
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        this.luaLibraries.add(new CityLibrary(this.context, null, null, null, city, null));
        this.luaLibraries.add(new TileLibrary(city));
        this.luaLibraries.add(new BuilderLibrary(city));
        for (int i2 = 0; i2 < this.luaLibraries.size(); i2++) {
            scriptingEnvironment.loadLibrary(this.luaLibraries.get(i2));
        }
        ((DraftLibrary) scriptingEnvironment.getLibrary(DraftLibrary.class)).setCityName(city.getName());
        scriptingEnvironment.callMethodOnce("enterCityGeneration", LuaValue.valueOf(i));
    }

    public final void unloadScripts(int i) {
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        scriptingEnvironment.callMethodOnce("leaveCityGeneration", LuaValue.valueOf(i));
        for (int i2 = 0; i2 < this.luaLibraries.size(); i2++) {
            scriptingEnvironment.unloadLibrary(this.luaLibraries.get(i2));
        }
        this.luaLibraries.clear();
    }

    public void resetCity(City city) {
        long absoluteDay = ((DefaultDate) city.getComponent(1)).getAbsoluteDay();
        city.applyComponent(new DefaultDate());
        city.applyComponent(new DefaultDemand());
        city.applyComponent(new DefaultManagement(city));
        city.applyComponent(new DefaultBudget(city.getGameMode().getMoneyAtStart()));
        city.applyComponent(new DefaultNotificator(city));
        city.applyComponent(new DefaultCatastrophe(city));
        city.applyComponent(new DefaultWeather());
        city.setDefaultTool(new DefaultTool());
        city.applyComponent(city.getDefaultTool());
        city.applyComponent(new DefaultBuildMask());
        city.applyComponent(new DefaultSoundManager());
        city.applyComponent(new DefaultTransportation());
        city.applyComponent(new DefaultTSComponent(city));
        city.applyComponent(new DefaultStatistics());
        city.applyComponent(new DefaultSigns());
        city.applyComponent(new DefaultAirport(city));
        city.applyComponent(new DefaultScenario());
        city.setLastSimulationTimestamp(0L);
        city.setViewToCenter();
        city.setScale(0.5f);
        city.setTargetXp(0);
        city.setCurrentXp(0);
        city.setRotation(0);
        city.getCityInfo().creationTime = InternetTime.getInstance().getTime();
        city.getCityInfo().playtimeSeconds = 0L;
        city.setRank(city.getRank(), 0L);
        ((DefaultPeople) city.getComponent(9)).reset();
        ((DefaultTraffic) city.getComponent(7)).reset();
        city.applyComponent(new DefaultTraffic());
        Iterator<Building> it = city.getBuildings().iterator();
        while (it.hasNext()) {
            it.next().applyDayTimeShift(-absoluteDay);
        }
        city.prepare(new Setter() { // from class: info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                CityCreator.$r8$lambda$uqSaymbBB8HWYghiUMRBc53gUN8((Float) obj);
            }
        }, false);
    }

    public synchronized void prepareCity(CityData cityData, Setter<Float> setter, boolean z) {
        try {
            City city = cityData.city;
            city.applyComponent(new DefaultDate());
            city.applyComponent(new DefaultInfluence(city.getWidth(), city.getHeight()));
            city.applyComponent(new DefaultPeople());
            city.applyComponent(new DefaultDemand());
            city.applyComponent(new DefaultManagement(city));
            city.applyComponent(new DefaultTraffic());
            city.applyComponent(new DefaultBudget(city.getGameMode().getMoneyAtStart()));
            city.applyComponent(new DefaultPower());
            city.applyComponent(new DefaultWater());
            city.applyComponent(new DefaultNotificator(city));
            city.applyComponent(new DefaultRequirement());
            city.applyComponent(new DefaultCatastrophe(city));
            city.applyComponent(new DefaultWeather());
            city.setDefaultTool(new DefaultTool());
            city.applyComponent(city.getDefaultTool());
            city.applyComponent(new DefaultBuildMask());
            city.applyComponent(new DefaultSoundManager());
            city.applyComponent(new DefaultTransportation());
            city.applyComponent(new DefaultTSComponent(city));
            city.applyComponent(new DefaultStatistics());
            city.applyComponent(new DefaultSigns());
            city.applyComponent(new DefaultAirport(city));
            city.applyComponent(new DefaultIdleGame(city));
            city.applyComponent(new DefaultNeighborhood(city));
            city.applyComponent(new DefaultScenario());
            city.setViewToCenter();
            if (z) {
                placeDecorations(cityData);
                city.applyComponent(new DefaultInfluence(city.getWidth(), city.getHeight()));
            }
            city.prepare(setter, true);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final CityComponent getDummy(final int i) {
        return new CityComponent() { // from class: info.flowersoft.theotown.creation.CityCreator.4
            @Override // info.flowersoft.theotown.city.components.CityComponent
            public int getType() {
                return i;
            }
        };
    }

    public void prepareDummyCity(City city) {
        city.applyComponent(new DefaultDate());
        city.applyComponent(getDummy(2));
        city.applyComponent(getDummy(3));
        city.applyComponent(getDummy(7));
        city.applyComponent(getDummy(0));
        city.applyComponent(getDummy(5));
        city.applyComponent(getDummy(8));
        city.applyComponent(new DummyNotificator());
        city.applyComponent(new DummyPeople());
        city.applyComponent(new DefaultDemand());
        city.applyComponent(new DummyRequirement());
        city.applyComponent(new DummyCatastrophe());
        city.applyComponent(getDummy(12));
        city.applyComponent(new DummyTool());
        city.applyComponent(new DefaultBuildMask());
        city.applyComponent(new DefaultSoundManager());
        city.applyComponent(getDummy(16));
        city.applyComponent(getDummy(22));
        city.applyComponent(getDummy(17));
        city.applyComponent(getDummy(18));
        city.applyComponent(getDummy(19));
        city.applyComponent(getDummy(20));
        city.applyComponent(getDummy(21));
        city.applyComponent(getDummy(23));
        city.setViewToCenter();
        city.prepare(new ValueProperty(Float.valueOf(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT)), false);
    }

    public final void calculateNearWater() {
        CityModifier cityModifier = new CityModifier(this.city, false);
        for (int i = 0; i < this.city.getHeight(); i++) {
            for (int i2 = 0; i2 < this.city.getWidth(); i2++) {
                cityModifier.adjustGroundWaterBorder(i2, i);
            }
        }
    }

    public final void addRiver(int i, float[] fArr, int i2, int i3, float f, long j, int i4, int i5, int i6, int i7, boolean z, IntValueProperty intValueProperty) {
        int iRound;
        int iRound2;
        int iRound3;
        int iRound4;
        int i8;
        int iMax;
        float fMax;
        OpenSimplexNoise openSimplexNoise = new OpenSimplexNoise(j);
        int i9 = i2 * 10;
        if (z) {
            float f2 = i3;
            float f3 = i2;
            iRound2 = Math.round((i5 / f2) * f3);
            iRound = Math.round((i4 / f3) * f2);
            iRound4 = Math.round((i7 / f2) * f3);
            iRound3 = Math.round((i6 / f2) * f3);
        } else {
            iRound = i5;
            iRound2 = i4;
            iRound3 = i7;
            iRound4 = i6;
        }
        synchronized (intValueProperty) {
            while (intValueProperty.value != i) {
                try {
                    intValueProperty.wait();
                } catch (InterruptedException unused) {
                    intValueProperty.value = Math.max(intValueProperty.value, i + 1);
                    return;
                }
            }
        }
        float[] fArr2 = new float[i9];
        float[] fArr3 = new float[i9];
        float f4 = (f - 0.107f) - (i * 0.01f);
        int i10 = -1;
        int i11 = iRound3;
        int i12 = iRound4;
        float f5 = 0.001f;
        int i13 = 0;
        int iMax2 = 0;
        int i14 = 0;
        int iMin = i2;
        int iMin2 = i3;
        int i15 = -1;
        while (true) {
            if (i13 >= i9) {
                i8 = i9;
                break;
            }
            int i16 = i13;
            float f6 = i13 / (i9 - 1);
            float f7 = iRound2 + ((i12 - iRound2) * f6);
            int i17 = i9;
            int i18 = iRound2;
            int i19 = i14;
            float f8 = f4;
            float fPow = 1.0f - ((float) Math.pow((f6 - 0.5f) * 2.0f, 2.0d));
            float f9 = i2;
            float f10 = f6 * 0.5f;
            float f11 = f8;
            float fEval = f7 + (fPow * f9 * openSimplexNoise.eval(f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
            float f12 = i3;
            float fEval2 = iRound + ((i11 - iRound) * f6) + (fPow * f12 * openSimplexNoise.eval(f10, 37.0f));
            float fEval3 = fEval + (openSimplexNoise.eval(f9 * 0.05f * f6, 382.0f) * 20.0f);
            float fEval4 = fEval2 + (openSimplexNoise.eval(f12 * 0.05f * f6, 12.0f) * 20.0f);
            float fEval5 = fEval3 + (openSimplexNoise.eval(f9 * 0.5f * f6, 382.0f) * 2.0f);
            float fEval6 = fEval4 + (openSimplexNoise.eval(f12 * 0.5f * f6, 12.0f) * 2.0f);
            fArr2[i16] = fEval5;
            fArr3[i16] = fEval6;
            int i20 = (int) fEval5;
            int i21 = (int) fEval6;
            if (i20 >= 0 && i21 >= 0 && i20 < i2 && i21 < i3 && !(i20 == i10 && i21 == i15)) {
                iMin = Math.min(iMin, i20);
                iMin2 = Math.min(iMin2, i21);
                iMax2 = Math.max(iMax2, i20);
                iMax = Math.max(i19, i21);
                int i22 = (i21 * i2) + i20;
                float f13 = fArr[i22];
                if (f13 <= f && f13 != f11) {
                    i8 = i16 + 1;
                    i14 = iMax;
                    break;
                } else {
                    fArr[i22] = Math.min(f13, f11);
                    i10 = i20;
                    f11 = f11;
                    i15 = i21;
                }
            } else {
                iMax = i19;
            }
            if (i16 > 0) {
                int i23 = i16 - 1;
                float f14 = fEval5 - fArr2[i23];
                float f15 = fEval6 - fArr3[i23];
                fMax = Math.max(f5, (float) Math.sqrt((f14 * f14) + (f15 * f15)));
            } else {
                fMax = f5;
            }
            i13 = i16 + 1;
            f5 = fMax;
            i14 = iMax;
            i9 = i17;
            iRound2 = i18;
            f4 = f11;
        }
        float f16 = f5;
        synchronized (intValueProperty) {
            intValueProperty.value = i + 1;
            intValueProperty.notifyAll();
        }
        float f17 = 16.0f;
        int i24 = (int) 16.0f;
        int iMax3 = Math.max((iMin - 1) - i24, 0);
        int iMin3 = Math.min(iMax2 + 1 + i24, i2 - 1);
        int iMin4 = Math.min(i14 + 1 + i24, i3 - 1);
        for (int iMax4 = Math.max((iMin2 - 1) - i24, 0); iMax4 <= iMin4; iMax4++) {
            int i25 = iMax3;
            while (i25 <= iMin3) {
                float f18 = Float.POSITIVE_INFINITY;
                int iFloor = 0;
                float f19 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                while (iFloor < i8) {
                    float f20 = fArr2[iFloor] - i25;
                    float f21 = f17;
                    float f22 = fArr3[iFloor] - iMax4;
                    float f23 = (f20 * f20) + (f22 * f22);
                    if (f23 < f18) {
                        f19 = iFloor / (i8 - 1);
                        f18 = f23;
                    }
                    if (f23 > 256.0f) {
                        iFloor += (int) Math.floor((((float) Math.sqrt(f23)) - f21) / f16);
                    }
                    iFloor++;
                    f17 = f21;
                }
                float f24 = f17;
                float f25 = i2 * 0.025f * f19;
                float fEval7 = (openSimplexNoise.eval(f25, -7.0f) * 5.0f) + 10.0f;
                float fEval8 = (f - 0.2f) - (openSimplexNoise.eval(f25, -7.0f) * 0.1f);
                float fSqrt = (float) Math.sqrt(f18);
                float f26 = fSqrt / fEval7;
                if (fSqrt < fEval7) {
                    int i26 = (iMax4 * i2) + i25;
                    fArr[i26] = Math.min((fEval8 * (1.0f - f26)) + (f26 * f), fArr[i26]);
                }
                i25++;
                f17 = f24;
            }
        }
    }

    public static void smoothRivers(float[] fArr, int i, int i2) {
        for (int i3 = 0; i3 < 2; i3++) {
            for (int i4 = 1; i4 < i2 - 1; i4++) {
                int i5 = 1;
                while (i5 < i - 1) {
                    int i6 = i5 - 1;
                    int i7 = (i4 - 1) * i;
                    float f = fArr[i6 + i7];
                    float f2 = fArr[i5 + i7];
                    int i8 = i5 + 1;
                    float f3 = fArr[i7 + i8];
                    int i9 = i4 * i;
                    float f4 = fArr[i6 + i9];
                    int i10 = i5 + i9;
                    float f5 = fArr[i10];
                    float f6 = fArr[i9 + i8];
                    int i11 = (i4 + 1) * i;
                    fArr[i10] = ((f + f3 + fArr[i6 + i11] + fArr[i11 + i8]) * 0.05f) + ((f2 + f4 + f6 + fArr[i5 + i11]) * 0.1f) + (f5 * 0.4f);
                    i5 = i8;
                }
            }
        }
    }

    public static List<BiomeDraft> collectAvailableBiomes(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Drafts.BIOMES.size(); i++) {
            BiomeDraft biomeDraft = Drafts.BIOMES.get(i);
            if (biomeDraft.spawnable && (list == null || !list.contains(biomeDraft.id))) {
                arrayList.add(biomeDraft);
            }
        }
        return arrayList;
    }

    public final void collectBiomes(String str, List<BiomeDraft> list, List<BiomeDraft> list2, List<BiomeDraft> list3) {
        for (int i = 0; i < list.size(); i++) {
            BiomeDraft biomeDraft = list.get(i);
            if (biomeDraft.spawnable) {
                if (biomeDraft.isWater) {
                    list2.add(biomeDraft);
                } else {
                    list3.add(biomeDraft);
                }
            }
        }
        str.getClass();
        switch (str) {
            case "grassonly":
            case "grass":
                list3.clear();
                list3.add(this.defaultBiome);
                return;
            case "wateronly":
                list2.clear();
                list3.clear();
                break;
            case "sand":
            case "sandonly":
                break;
            case "snow":
            case "snowonly":
                list3.clear();
                list3.add(this.snowBiome);
                return;
            default:
                BiomeDraft biomeDraft2 = (BiomeDraft) Drafts.get(str, BiomeDraft.class);
                if (biomeDraft2 == null || biomeDraft2.isWater) {
                    return;
                }
                list3.clear();
                list3.add(biomeDraft2);
                return;
        }
        list3.clear();
        list3.add(this.desertBiome);
    }

    public final void collectTiles(String str, List<GroundDraft> list, List<GroundDraft> list2, List<GroundDraft> list3) {
        for (int i = 0; i < Drafts.WATER_TILES.size(); i++) {
            GroundDraft groundDraft = Drafts.WATER_TILES.get(i);
            SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr = groundDraft.biomes;
            if (spawnInBiomeDefinitionArr != null && spawnInBiomeDefinitionArr.length > 0) {
                list.add(groundDraft);
                list3.add(groundDraft);
            }
        }
        for (int i2 = 0; i2 < Drafts.LAND_TILES.size(); i2++) {
            GroundDraft groundDraft2 = Drafts.LAND_TILES.get(i2);
            SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr2 = groundDraft2.biomes;
            if (spawnInBiomeDefinitionArr2 != null && spawnInBiomeDefinitionArr2.length > 0) {
                list2.add(groundDraft2);
                list3.add(groundDraft2);
            }
        }
    }

    public final void collectSpawnableTrees(List<TreeDraft> list) {
        for (int i = 0; i < Drafts.TREES.size(); i++) {
            TreeDraft treeDraft = Drafts.TREES.get(i);
            SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr = treeDraft.biomes;
            if (spawnInBiomeDefinitionArr != null && spawnInBiomeDefinitionArr.length > 0) {
                list.add(treeDraft);
            }
        }
    }

    public static class CityData {
        public List<BiomeDraft> allBiomes;
        public BiomeDraft[] biomeMap;
        public City city;

        public CityData(City city, BiomeDraft[] biomeDraftArr, List<BiomeDraft> list) {
            this.city = city;
            this.biomeMap = biomeDraftArr;
            this.allBiomes = list;
        }
    }
}
