package info.flowersoft.theotown.creation.modifier;

import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import io.blueflower.stapel2d.util.OpenSimplexNoise;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BiomeTerrainModifier.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class BiomeTerrainModifier {
    public List<? extends BiomeDraft> biomes;
    public int height;
    public BiomeDraft[] mapBiomes;
    public OpenSimplexNoise noise;
    public int numWorkers;
    public GroundDraft templateGround;
    public Tiles tiles;
    public int width;

    public abstract void apply();

    public abstract boolean isAvailable();

    public final Tiles getTiles() {
        Tiles tiles = this.tiles;
        if (tiles != null) {
            return tiles;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tiles");
        return null;
    }

    public final void setTiles(Tiles tiles) {
        Intrinsics.checkNotNullParameter(tiles, "<set-?>");
        this.tiles = tiles;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public final OpenSimplexNoise getNoise() {
        OpenSimplexNoise openSimplexNoise = this.noise;
        if (openSimplexNoise != null) {
            return openSimplexNoise;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noise");
        return null;
    }

    public final void setNoise(OpenSimplexNoise openSimplexNoise) {
        Intrinsics.checkNotNullParameter(openSimplexNoise, "<set-?>");
        this.noise = openSimplexNoise;
    }

    public final BiomeDraft[] getMapBiomes() {
        BiomeDraft[] biomeDraftArr = this.mapBiomes;
        if (biomeDraftArr != null) {
            return biomeDraftArr;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mapBiomes");
        return null;
    }

    public final void setMapBiomes(BiomeDraft[] biomeDraftArr) {
        Intrinsics.checkNotNullParameter(biomeDraftArr, "<set-?>");
        this.mapBiomes = biomeDraftArr;
    }

    public final List<BiomeDraft> getBiomes() {
        List list = this.biomes;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("biomes");
        return null;
    }

    public final void setBiomes(List<? extends BiomeDraft> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.biomes = list;
    }

    public final void setTemplateGround(GroundDraft groundDraft) {
        Intrinsics.checkNotNullParameter(groundDraft, "<set-?>");
        this.templateGround = groundDraft;
    }

    public final void bind(Tiles tiles, int i, OpenSimplexNoise noise, BiomeDraft[] mapBiomes, List<? extends BiomeDraft> biomes, GroundDraft templateGround) {
        Intrinsics.checkNotNullParameter(tiles, "tiles");
        Intrinsics.checkNotNullParameter(noise, "noise");
        Intrinsics.checkNotNullParameter(mapBiomes, "mapBiomes");
        Intrinsics.checkNotNullParameter(biomes, "biomes");
        Intrinsics.checkNotNullParameter(templateGround, "templateGround");
        setTiles(tiles);
        this.width = tiles.getWidth();
        this.height = tiles.getHeight();
        this.numWorkers = i;
        setNoise(noise);
        setMapBiomes(mapBiomes);
        setBiomes(biomes);
        setTemplateGround(templateGround);
    }

    public final Ground getGround(int i, int i2) {
        return getTiles().getGround(i, i2);
    }

    public final BiomeDraft getBiome(int i, int i2) {
        return getMapBiomes()[i + (i2 * this.width)];
    }

    public final void setBiome(int i, int i2, BiomeDraft biome) {
        Intrinsics.checkNotNullParameter(biome, "biome");
        getMapBiomes()[i + (i2 * this.width)] = biome;
    }
}
