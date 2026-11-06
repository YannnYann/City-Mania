package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.requirement.FeatureRequirement;
import info.flowersoft.theotown.draft.requirement.SingleRequirement;
import info.flowersoft.theotown.util.ArrayUtil;
import info.flowersoft.theotown.util.SpecialInt;
import io.blueflower.stapel2d.drawing.Color;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingDraft extends ViewportDraft {
    public Draft[] addPriceDrafts;
    public boolean alignable;
    public boolean animation;
    public int[][] animationFGSpotIndices;
    public List<AnimationSpot> animationFGSpots;
    public int[][] animationSpotIndices;
    public List<AnimationSpot> animationSpots;
    public int[] aspectCapacity;
    public boolean autoBuild;
    public SpawnInBiomeDefinition[] biomes;
    public Draft budgetItem;
    public int buildHeight;
    public int buildTime;
    public boolean buildZone;
    public BuildingType buildingType;
    public int capacity;
    public CarSpawnerDraft[] carSpawners;
    public Composition composition;
    public boolean conductive;
    public int[] decoFrames;
    public int depotCapacity;
    public BuildingDraft destruction;
    public boolean disaster;
    public boolean drawGround;
    public boolean drawZone;
    public boolean easyRemove;
    public boolean explodes;
    public boolean extRotationAware;
    public boolean frameAlignment;
    public boolean frameAlignmentArea;
    public boolean freeBuildTimeSkip;
    public int[] groundFrames;
    public int[] groundTileFrames;
    public int habitants;
    public int height;
    public HelicopterSpawnerDraft helicopterSpawner;
    public boolean hiddenOnClick;
    public boolean highVoltageOnly;
    public int[] influenceInduceVector;
    public boolean influencePreview;
    public boolean liquid;
    public Color mapColor;
    public long monthlyPrice;
    public boolean moveable;
    public int[] neededAspectAmount;
    public boolean needsWater;
    public boolean nuclear;
    public List<Transition> onBuiltTransitions;
    public List<Transition> onClickTransitions;
    public List<Transition> onDestroyTransitions;
    public List<Transition> onEventTransitions;
    public float pedestrianCount;
    public PedestrianDraft pedestrianDraft;
    public boolean performance;
    public long power;
    public long price;
    public List<Transition> randomTransitions;
    public int rciCars;
    public boolean rebuild;
    public boolean rotationAware;
    public boolean selectableFrames;
    public int shipCount;
    public int shipRadius;
    public ShipDraft[] ships;
    public List<SmokeSpot> smokeSpots;
    public boolean superConductive;
    public boolean supportsSlope;
    public List<Transition> transitions;
    public List<UpgradeDraft> upgrades;
    public long water;
    public int[] waterBorderFrames;
    public float waterWaste;
    public int width;
    public int workers;
    public ZoneDraft zone;
    public boolean needsRoad = true;
    public long roadFlags = 29360356;
    public int level = 1;
    public float density = -1.0f;
    public final SpecialInt diamondPrice = new SpecialInt();
    public long bulldozePrice = -2147483648L;
    public boolean burnable = true;
    public boolean useFireFrames = true;
    public boolean destroyable = true;
    public boolean destroyableByFun = true;
    public int maxCount = -1;
    public boolean needsLand = true;
    public int minWaterTiles = -1;
    public float autoBuildFactor = 1.0f;
    public float priceFactor = -1.0f;
    public boolean randomFrame = true;
    public int explosionRadius = 16;
    public boolean volatileCannotUndo = false;
    public boolean removable = true;
    public boolean pickable = true;
    public boolean renameable = true;
    public float performanceMin = 0.001f;
    public float performanceMax = 2.0f;
    public int powerRadius = 5;
    public boolean drawWaterBorders = true;
    public boolean drawWaterGround = false;
    public GroundDraft drawWaterGroundDraft = null;
    public boolean idleBuildTime = true;
    public boolean supportsTerrain = true;
    public boolean supportsShoreline = true;
    public int serviceCars = -1;
    public List<String> serviceCarTags = null;
    public String[] useFence = null;
    public boolean randomizeAnimation = false;
    public boolean randomizeLights = true;
    public float nightLightProbability = 1.0f;
    public int carMinLevel = -1;
    public int carMaxLevel = 0;

    public static class CarSpawnerDraft {
        public int carFlags;
        public CarDraft[] cars;
        public int count;
        public String id;
        public int level;
        public int radius;
        public String[] tags;
        public String[] targetIds;
        public String[] targetTags;
    }

    public static class HelicopterSpawnerDraft {
        public String id;
        public int radius;
        public int x;
        public int y;
    }

    public boolean hasUpgrades() {
        return this.upgrades != null;
    }

    public void addBiome(SpawnInBiomeDefinition spawnInBiomeDefinition) {
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr = this.biomes;
        if (spawnInBiomeDefinitionArr == null) {
            this.biomes = new SpawnInBiomeDefinition[]{spawnInBiomeDefinition};
        } else {
            if (ArrayUtil.contains(spawnInBiomeDefinitionArr, spawnInBiomeDefinition)) {
                return;
            }
            this.biomes = (SpawnInBiomeDefinition[]) ArrayUtil.add(this.biomes, spawnInBiomeDefinition);
        }
    }

    public static SpawnDefinition getDefaultSpawnDefinition() {
        return new SpawnDefinition();
    }

    public List<UpgradeDraft> getVisibleUpgrades() {
        ArrayList arrayList = new ArrayList();
        List<UpgradeDraft> list = this.upgrades;
        if (list != null) {
            for (UpgradeDraft upgradeDraft : list) {
                if (!upgradeDraft.hidden) {
                    arrayList.add(upgradeDraft);
                }
            }
        }
        return arrayList;
    }

    public boolean isClickSensitive() {
        return this.onClickTransitions != null;
    }

    public boolean isBoughtInFeature(City city) {
        if (this.diamondPrice.get() > 0 && hasRequirement()) {
            SingleRequirement singleRequirement = getRequirement().getSingleRequirements().get(0);
            if ((singleRequirement instanceof FeatureRequirement) && singleRequirement.isFulfilled(city)) {
                return true;
            }
        }
        return false;
    }

    public int getIcon() {
        int[] iArr = this.iconFrames;
        if (iArr != null) {
            return iArr[0];
        }
        BuildingType buildingType = this.buildingType;
        if (buildingType != null) {
            return buildingType.getIcon();
        }
        return 0;
    }

    public int getWidth(int i) {
        if (i < 0 || i % 2 == 0) {
            return this.width;
        }
        return this.height;
    }

    public int getHeight(int i) {
        if (i < 0 || i % 2 == 0) {
            return this.height;
        }
        return this.width;
    }

    public int getMaxSize() {
        return Math.max(this.width, this.height);
    }

    public boolean isSquare() {
        return this.width == this.height;
    }

    public int getArea() {
        return this.width * this.height;
    }
}
