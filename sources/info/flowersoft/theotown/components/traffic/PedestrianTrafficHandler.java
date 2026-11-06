package info.flowersoft.theotown.components.traffic;

import com.google.android.gms.common.api.Api;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Pedestrian;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.PedestrianDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import io.blueflower.stapel2d.util.MathUtil;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class PedestrianTrafficHandler extends TrafficHandler {
    public static final float[] RANDOM_GRID = new float[49];
    public final float COMMERCIAL_FACTOR;
    public final float DENSITY_EXPONENT;
    public final float INDUSTRIAL_FACTOR;
    public final int MAX_POOL_SIZE;
    public final float RESIDENTIAL_FACTOR;

    /* JADX INFO: renamed from: com, reason: collision with root package name */
    public float f3928com;
    public DefaultDate date;
    public float ind;
    public DefaultInfluence influence;
    public float lvl1;
    public float lvl2;
    public float lvl3;
    public final List<Pedestrian> pedestrianPool;
    public final ProbabilitySelector<PedestrianDraft> pedestrianSelector;
    public List<Building> pendingBuildings;
    public List<Building> providingBuildings;
    public float rain;
    public float res;
    public int targetPedestrianCount;
    public DefaultWeather weather;

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    static {
        int i = 0;
        while (true) {
            float[] fArr = RANDOM_GRID;
            if (i >= fArr.length) {
                return;
            }
            fArr[i] = Resources.RND.nextFloat();
            i++;
        }
    }

    public PedestrianTrafficHandler(City city) {
        super(city);
        this.RESIDENTIAL_FACTOR = 1.0f;
        this.COMMERCIAL_FACTOR = 1.0f;
        this.INDUSTRIAL_FACTOR = 0.2f;
        this.DENSITY_EXPONENT = 0.8f;
        this.MAX_POOL_SIZE = 1024;
        this.pedestrianPool = new ArrayList();
        this.pedestrianSelector = new ProbabilitySelector<>();
        this.providingBuildings = new ArrayList();
        this.pendingBuildings = new ArrayList();
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void prepare() {
        this.date = (DefaultDate) this.city.getComponent(1);
        this.influence = (DefaultInfluence) this.city.getComponent(2);
        this.weather = (DefaultWeather) this.city.getComponent(12);
    }

    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void update() {
        super.update();
        this.rain = this.weather.getRain();
    }

    public void update(int i, int i2, Road road, Drawer drawer) {
        float f = -3.4028235E38f;
        for (int i3 = 0; i3 < road.countPedestrians(); i3++) {
            Pedestrian pedestrian = road.getPedestrian(i3);
            float visY = getVisY(pedestrian);
            if (visY >= f || i3 <= 0) {
                f = visY;
            } else {
                road.swapPedestrians(i3, i3 - 1);
            }
            updatePedestrian(i, i2, road, pedestrian);
        }
        if (road.haveSetupPedestrians()) {
            if (Resources.RND.nextInt(20) < 1) {
                analyzeTile(road, drawer);
                updatePedestrianAmount(i, i2, road);
                return;
            }
            return;
        }
        analyzeTile(road, drawer);
        setupPedestrians(i, i2, road);
    }

    public final int getTarget(Road road) {
        return (this.targetPedestrianCount + ((road.hashCode() & 65535) % 10)) / 10;
    }

    public final void setupPedestrians(int i, int i2, Road road) {
        road.markSetupPedestrians();
        int target = getTarget(road);
        for (int iCountPedestrians = road.countPedestrians(); iCountPedestrians < target; iCountPedestrians++) {
            PedestrianDraft pedestrianDraftSampleDraft = sampleDraft(road);
            if (pedestrianDraftSampleDraft == null) {
                return;
            }
            spawnPedestrian(i, i2, road, true, pedestrianDraftSampleDraft);
        }
    }

    public final void updatePedestrianAmount(int i, int i2, Road road) {
        PedestrianTrafficHandler pedestrianTrafficHandler;
        int i3;
        int i4;
        Road road2;
        int iCountPedestrians = road.countPedestrians();
        if (iCountPedestrians < getTarget(road)) {
            PedestrianDraft pedestrianDraftSampleDraft = sampleDraft(road);
            if (pedestrianDraftSampleDraft != null) {
                pedestrianTrafficHandler = this;
                i4 = i2;
                pedestrianTrafficHandler.spawnPedestrian(i, i4, road, false, pedestrianDraftSampleDraft);
                i3 = i;
                road2 = road;
            } else {
                pedestrianTrafficHandler = this;
                i3 = i;
                i4 = i2;
                road2 = road;
            }
        } else {
            pedestrianTrafficHandler = this;
            i3 = i;
            i4 = i2;
            road2 = road;
            if (iCountPedestrians > 0 && iCountPedestrians > (pedestrianTrafficHandler.targetPedestrianCount + 9) / 10) {
                removeRandomPedestrian(road2);
            }
        }
        if (pedestrianTrafficHandler.pendingBuildings.isEmpty()) {
            return;
        }
        List<Building> list = pedestrianTrafficHandler.pendingBuildings;
        Building building = list.get(Resources.RND.nextInt(list.size()));
        int pendingPedestrians = building.getPendingPedestrians();
        if (pendingPedestrians > 0) {
            PedestrianDraft pedestrianDraftSampleDraft2 = sampleDraft(road2, building);
            if (pedestrianDraftSampleDraft2 != null) {
                spawnPedestrian(i3, i4, road2, false, pedestrianDraftSampleDraft2);
            }
            pendingPedestrians--;
        } else if (pendingPedestrians < 0 && removeRandomPedestrian(road2)) {
            pendingPedestrians++;
        }
        building.setPendingPedestrians(pendingPedestrians);
    }

    public final boolean removeRandomPedestrian(Road road) {
        int iCountPedestrians = road.countPedestrians();
        if (iCountPedestrians <= 0) {
            return false;
        }
        road.getPedestrian(Resources.RND.nextInt(iCountPedestrians)).setAge((-1) - r1.nextInt(10));
        return true;
    }

    public final PedestrianDraft sampleDraft(Road road) {
        for (int i = 0; i < Drafts.PEDESTRIANS.size(); i++) {
            PedestrianDraft pedestrianDraft = Drafts.PEDESTRIANS.get(i);
            if (pedestrianDraft.autoSpawn && (pedestrianDraft.flags & road.getFlags()) != 0) {
                this.pedestrianSelector.insert(pedestrianDraft, ((pedestrianDraft.res * this.res) + (pedestrianDraft.f3929com * this.f3928com) + (pedestrianDraft.ind * this.ind)) * ((pedestrianDraft.lvl1 * this.lvl1) + (pedestrianDraft.lvl2 * this.lvl2) + (pedestrianDraft.lvl3 * this.lvl3)));
            }
        }
        float fMax = 0.0f;
        float f = 0.0f;
        for (int i2 = 0; i2 < this.providingBuildings.size(); i2++) {
            BuildingDraft draft = this.providingBuildings.get(i2).getDraft();
            fMax += Math.max(draft.pedestrianCount, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            f += draft.pedestrianCount;
        }
        float fMax2 = (fMax / Math.max(this.targetPedestrianCount - f, 0.1f)) * Math.max(this.pedestrianSelector.getProbabilitySum(), 0.01f);
        for (int i3 = 0; i3 < this.providingBuildings.size(); i3++) {
            BuildingDraft draft2 = this.providingBuildings.get(i3).getDraft();
            PedestrianDraft pedestrianDraft2 = draft2.pedestrianDraft;
            if (pedestrianDraft2 != null) {
                this.pedestrianSelector.insert(pedestrianDraft2, draft2.pedestrianCount * fMax2);
            }
        }
        PedestrianDraft result = this.pedestrianSelector.getResult();
        this.pedestrianSelector.clear();
        return result;
    }

    public final PedestrianDraft sampleDraft(Road road, Building building) {
        return building.getDraft().pedestrianDraft != null ? building.getDraft().pedestrianDraft : sampleDraft(road);
    }

    public final void analyzeTile(Road road, Drawer drawer) {
        Building building;
        int x = road.getX();
        int y = road.getY();
        this.res = this.influence.getInfluence(x, y, InfluenceType.RESIDENTIAL.ordinal()) * 1.0f;
        this.f3928com = this.influence.getInfluence(x, y, InfluenceType.COMMERCIAL.ordinal()) * 1.0f;
        this.ind = this.influence.getInfluence(x, y, InfluenceType.INDUSTRIAL.ordinal()) * 0.2f;
        this.lvl1 = this.influence.getInfluence(x, y, InfluenceType.LEVEL_LOW.ordinal());
        this.lvl2 = this.influence.getInfluence(x, y, InfluenceType.LEVEL_MIDDLE.ordinal());
        this.lvl3 = this.influence.getInfluence(x, y, InfluenceType.LEVEL_HIGH.ordinal());
        float fMax = Math.max(Math.max(this.res, this.f3928com), this.ind) * ((float) Math.pow(this.influence.getInfluence(x, y, InfluenceType.DENSITY.ordinal()), 0.800000011920929d)) * (1.0f - (this.rain * 0.5f)) * (((1.0f - Math.abs(1.0f - (drawer.daytime * 2.0f))) * 0.9f) + 0.1f);
        float fSampleTileRandomness = sampleTileRandomness(x, y);
        this.targetPedestrianCount = (int) ((8.0f * fSampleTileRandomness * 10.0f * fMax * 0.5f) + 0.9f);
        this.providingBuildings.clear();
        this.pendingBuildings.clear();
        for (int i = 1; i <= 8; i *= 2) {
            int iDifferenceX = Direction.differenceX(i) + x;
            int iDifferenceY = Direction.differenceY(i) + y;
            if (this.city.isValid(iDifferenceX, iDifferenceY) && (building = this.tiles.getBuilding(iDifferenceX, iDifferenceY)) != null) {
                if (building.getDraft().pedestrianCount > fSampleTileRandomness) {
                    this.targetPedestrianCount += (int) ((building.getDraft().pedestrianCount + 1.0f) - fSampleTileRandomness);
                    this.providingBuildings.add(building);
                }
                if (building.getPendingPedestrians() != 0) {
                    this.pendingBuildings.add(building);
                }
            }
        }
    }

    public void drawBackground(int i, int i2, Road road, Drawer drawer) {
        int i3;
        int i4;
        Road road2;
        Drawer drawer2;
        drawer.engine.setType(23);
        int i5 = 0;
        while (i5 < road.countPedestrians()) {
            Pedestrian pedestrian = road.getPedestrian(i5);
            if (isForeground(pedestrian)) {
                i3 = i;
                i4 = i2;
                road2 = road;
                drawer2 = drawer;
            } else {
                i3 = i;
                i4 = i2;
                road2 = road;
                drawer2 = drawer;
                drawPedestrian(i3, i4, road2, pedestrian, drawer2);
            }
            i5++;
            i = i3;
            i2 = i4;
            road = road2;
            drawer = drawer2;
        }
    }

    public void drawForeground(int i, int i2, Road road, Drawer drawer) {
        int i3;
        int i4;
        Road road2;
        Drawer drawer2;
        drawer.engine.setType(23);
        int i5 = 0;
        while (i5 < road.countPedestrians()) {
            Pedestrian pedestrian = road.getPedestrian(i5);
            if (isForeground(pedestrian)) {
                i3 = i;
                i4 = i2;
                road2 = road;
                drawer2 = drawer;
                drawPedestrian(i3, i4, road2, pedestrian, drawer2);
            } else {
                i3 = i;
                i4 = i2;
                road2 = road;
                drawer2 = drawer;
            }
            i5++;
            i = i3;
            i2 = i4;
            road = road2;
            drawer = drawer2;
        }
    }

    public final void drawPedestrian(int i, int i2, Road road, Pedestrian pedestrian, Drawer drawer) {
        float innerX = pedestrian.getInnerX();
        float innerY = pedestrian.getInnerY();
        int i3 = road.dLevel;
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (i3 != 0) {
            if (i3 == 1) {
                f = innerX;
            } else if (i3 == 2) {
                f = innerY;
            } else if (i3 == 4) {
                f = 1.0f - innerX;
            } else if (i3 == 8) {
                f = 1.0f - innerY;
            }
            f *= 12.0f;
        }
        int rotation = this.city.getRotation();
        if (rotation == 1) {
            innerY = 1.0f - innerX;
            innerX = innerY;
        } else if (rotation == 2) {
            innerX = 1.0f - innerX;
            innerY = 1.0f - innerY;
        } else if (rotation == 3) {
            float f2 = 1.0f - innerY;
            innerY = innerX;
            innerX = f2;
        }
        float f3 = (innerX + innerY) * 16.0f;
        float f4 = (((innerX - innerY) * 8.0f) - f) - (road.absLevel * 12);
        if (!Settings.smoothCarMovement) {
            f3 = (int) f3;
            f4 = (int) f4;
        }
        int transparency = drawer.engine.getTransparency();
        drawer.engine.setTransparency(Math.min((int) (transparency * 2 * Math.abs(pedestrian.getAge())), 255));
        drawer.draw(Resources.IMAGE_WORLD, f3, f4, pedestrian.getFrame());
        drawer.engine.setTransparency(transparency);
    }

    public final boolean isForeground(Pedestrian pedestrian) {
        return getVisY(pedestrian) >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final float getVisY(Pedestrian pedestrian) {
        float innerX = pedestrian.getInnerX();
        float innerY = pedestrian.getInnerY();
        int rotation = this.city.getRotation();
        if (rotation == 1) {
            float f = 1.0f - innerX;
            innerX = innerY;
            innerY = f;
        } else if (rotation == 2) {
            innerX = 1.0f - innerX;
            innerY = 1.0f - innerY;
        } else if (rotation == 3) {
            float f2 = 1.0f - innerY;
            innerY = innerX;
            innerX = f2;
        }
        return innerX - innerY;
    }

    public final void updatePedestrian(int i, int i2, Road road, Pedestrian pedestrian) {
        float f;
        float animationTimeDelta = this.date.getAnimationTimeDelta() / 1000.0f;
        float age = pedestrian.getAge() + animationTimeDelta;
        float seed = (pedestrian.getSeed() & 255) / 255.0f;
        float progress = pedestrian.getProgress() + ((((((0.8f * seed) * seed) + 0.2f) * 0.4f) * animationTimeDelta) / pedestrian.getDistance());
        if (age >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && age < animationTimeDelta) {
            road.removePedestrian(pedestrian);
            releasePedestrian(pedestrian);
            return;
        }
        if (progress < 1.0f) {
            f = progress;
        } else {
            if (!walkToNewTarget(i, i2, road, pedestrian)) {
                road.removePedestrian(pedestrian);
                releasePedestrian(pedestrian);
                return;
            }
            f = 0.0f;
        }
        float fLerp = MathUtil.lerp(pedestrian.getStartInnerX(), pedestrian.getEndInnerX(), f);
        float fLerp2 = MathUtil.lerp(pedestrian.getStartInnerY(), pedestrian.getEndInnerY(), f);
        if (fLerp < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fLerp >= 1.0f || fLerp2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fLerp2 >= 1.0f) {
            road.removePedestrian(pedestrian);
            Road nextRoad = getNextRoad(road, pedestrian.getParcelX(), pedestrian.getParcelY(), pedestrian.getNextParcelX(), pedestrian.getNextParcelY());
            if (nextRoad == null) {
                releasePedestrian(pedestrian);
                return;
            }
            releasePedestrian(nextRoad.addPedestrian(pedestrian));
            calculateInnerCoords(road, nextRoad, nextRoad.x, nextRoad.y, pedestrian);
            fLerp = MathUtil.lerp(pedestrian.getStartInnerX(), pedestrian.getEndInnerX(), f);
            fLerp2 = MathUtil.lerp(pedestrian.getStartInnerY(), pedestrian.getEndInnerY(), f);
        }
        pedestrian.setInner(fLerp, fLerp2);
        pedestrian.setProgress(f);
        pedestrian.setAge(age);
    }

    public final Road getNextRoad(Road road, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i / 2;
        int i7 = i2 / 2;
        int i8 = i3 / 2;
        int i9 = i4 / 2;
        if (i6 == i8 && i7 == i9) {
            return road;
        }
        if (!this.city.isValid(i8, i9)) {
            return null;
        }
        int iFromDifferential = Direction.fromDifferential(i8 - i6, i9 - i7);
        int i10 = road.absLevel;
        if (road.dLevel == iFromDifferential) {
            i10++;
        }
        Road absoluteRoad = this.city.getTiles().getAbsoluteRoad(i8, i9, i10);
        if (absoluteRoad != null && ((i5 = absoluteRoad.dLevel) == road.dLevel || i5 == iFromDifferential || i5 == 0)) {
            return absoluteRoad;
        }
        Road absoluteRoad2 = this.city.getTiles().getAbsoluteRoad(i8, i9, i10 - 1);
        if (absoluteRoad2 == null || absoluteRoad2.dLevel == Direction.opposite(iFromDifferential)) {
            return absoluteRoad2;
        }
        return null;
    }

    public final void spawnPedestrian(int i, int i2, Road road, boolean z, PedestrianDraft pedestrianDraft) {
        Random random = Resources.RND;
        int iNextInt = (i * 2) + random.nextInt(2);
        int iNextInt2 = (i2 * 2) + random.nextInt(2);
        if (canSpawnOnParcel(pedestrianDraft.flags, road, iNextInt, iNextInt2)) {
            float fNextFloat = z ? (random.nextFloat() * 10.0f) + 1.0f : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            Pedestrian pedestrianAllocatePedestrian = allocatePedestrian();
            pedestrianAllocatePedestrian.setup(pedestrianDraft, random.nextInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER, iNextInt, iNextInt2, fNextFloat);
            walkToNewTarget(i, i2, road, pedestrianAllocatePedestrian);
            pedestrianAllocatePedestrian.setProgress(random.nextFloat());
            releasePedestrian(road.addPedestrian(pedestrianAllocatePedestrian));
            updatePedestrian(i, i2, road, pedestrianAllocatePedestrian);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[PHI: r2 r3
      0x0061: PHI (r2v1 int) = (r2v0 int), (r2v3 int) binds: [B:14:0x003f, B:18:0x005f] A[DONT_GENERATE, DONT_INLINE]
      0x0061: PHI (r3v1 int) = (r3v0 int), (r3v4 int) binds: [B:14:0x003f, B:18:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean walkToNewTarget(int r22, int r23, info.flowersoft.theotown.city.objects.Road r24, info.flowersoft.theotown.city.objects.Pedestrian r25) {
        /*
            r21 = this;
            int r2 = r25.getNextParcelX()
            int r3 = r25.getNextParcelY()
            int r6 = r25.getParcelX()
            int r7 = r25.getParcelY()
            r8 = 0
            if (r2 < 0) goto Lc0
            if (r3 < 0) goto Lc0
            int r0 = r2 / 2
            r12 = r22
            if (r0 != r12) goto Lc0
            int r0 = r3 / 2
            r13 = r23
            if (r0 == r13) goto L23
            goto Lc0
        L23:
            int r0 = r2 % 2
            int r1 = r3 % 2
            r10 = r24
            byte[] r9 = r10.getPedestrianPaths(r0, r1)
            int r0 = r9.length
            if (r0 != 0) goto L31
            return r8
        L31:
            java.util.Random r0 = info.flowersoft.theotown.resources.Resources.RND
            int r1 = r9.length
            int r11 = r0.nextInt(r1)
            r1 = 20
            int r0 = r0.nextInt(r1)
            r14 = 0
            if (r0 != 0) goto L61
            r4 = r2
            r5 = r3
            r0 = r21
            r1 = r10
            info.flowersoft.theotown.city.objects.Road r4 = r0.getNextRoad(r1, r2, r3, r4, r5)
            if (r4 == 0) goto L62
            info.flowersoft.theotown.draft.PedestrianDraft r0 = r25.getDraft()
            long r0 = r0.flags
            r5 = r3
            r3 = r4
            r4 = r2
            r1 = r0
            r0 = r21
            boolean r1 = r0.canMoveToParcel(r1, r3, r4, r5)
            r2 = r4
            r4 = r3
            r3 = r5
            if (r1 != 0) goto L62
        L61:
            r4 = r14
        L62:
            r0 = r2
            r1 = r3
            r10 = r8
        L65:
            int r5 = r9.length
            if (r10 >= r5) goto Lae
            if (r4 != 0) goto Lae
            int r0 = r11 + r10
            int r1 = r9.length
            int r0 = r0 % r1
            r0 = r9[r0]
            int r1 = r0 << 24
            int r1 = r1 >> 28
            int r0 = r0 << 28
            int r0 = r0 >> 28
            int r1 = r1 + r2
            int r5 = r3 + r0
            if (r1 != r6) goto L84
            if (r5 != r7) goto L84
            r19 = r1
            r20 = r5
            goto La7
        L84:
            r0 = r21
            r4 = r1
            r1 = r24
            info.flowersoft.theotown.city.objects.Road r18 = r0.getNextRoad(r1, r2, r3, r4, r5)
            r19 = r4
            r20 = r5
            if (r18 == 0) goto La5
            info.flowersoft.theotown.draft.PedestrianDraft r0 = r25.getDraft()
            long r0 = r0.flags
            r15 = r21
            r16 = r0
            boolean r0 = r15.canMoveToParcel(r16, r18, r19, r20)
            if (r0 != 0) goto La5
            r4 = r14
            goto La7
        La5:
            r4 = r18
        La7:
            int r10 = r10 + 1
            r0 = r19
            r1 = r20
            goto L65
        Lae:
            if (r4 != 0) goto Lb1
            return r8
        Lb1:
            r14 = r25
            r14.walkTo(r0, r1)
            r9 = r21
            r10 = r24
            r11 = r4
            r9.calculateInnerCoords(r10, r11, r12, r13, r14)
            r0 = 1
            return r0
        Lc0:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.traffic.PedestrianTrafficHandler.walkToNewTarget(int, int, info.flowersoft.theotown.city.objects.Road, info.flowersoft.theotown.city.objects.Pedestrian):boolean");
    }

    public final boolean canMoveToParcel(long j, Road road, int i, int i2) {
        long flags = road.getFlags();
        if (road.draft.pedestrians) {
            return (j & flags) != 0 || flags == 0;
        }
        return false;
    }

    public final boolean canSpawnOnParcel(long j, Road road, int i, int i2) {
        Road road2;
        if (!canMoveToParcel(j, road, i, i2)) {
            return false;
        }
        byte[] pedestrianPaths = road.getPedestrianPaths(i % 2, i2 % 2);
        if (pedestrianPaths.length == 0) {
            return false;
        }
        int i3 = i / 2;
        int i4 = i2 / 2;
        int i5 = 0;
        while (i5 < pedestrianPaths.length) {
            byte b = pedestrianPaths[i5];
            int i6 = i + ((b << 24) >> 28);
            int i7 = i2 + ((b << 28) >> 28);
            int i8 = i7 / 2;
            if (i6 / 2 == i3 && i8 == i4) {
                road2 = road;
            } else {
                road2 = road;
                int i9 = i;
                int i10 = i2;
                i = i9;
                i2 = i10;
                if (getNextRoad(road2, i9, i10, i6, i7) == null) {
                    return true;
                }
            }
            i5++;
            road = road2;
        }
        return false;
    }

    public final void calculateInnerCoords(Road road, Road road2, int i, int i2, Pedestrian pedestrian) {
        int parcelX = pedestrian.getParcelX();
        int parcelY = pedestrian.getParcelY();
        int nextParcelX = pedestrian.getNextParcelX();
        int nextParcelY = pedestrian.getNextParcelY();
        float borderOffset = getBorderOffset(road, pedestrian, 0);
        float borderOffset2 = getBorderOffset(road, pedestrian, 1);
        float borderOffset3 = getBorderOffset(road2, pedestrian, 0);
        float borderOffset4 = getBorderOffset(road2, pedestrian, 1);
        float f = ((parcelX / 2) - i) + borderOffset + ((parcelX % 2) * (1.0f - (borderOffset * 2.0f)));
        float f2 = ((parcelY / 2) - i2) + borderOffset2 + ((parcelY % 2) * (1.0f - (borderOffset2 * 2.0f)));
        float f3 = ((nextParcelX / 2) - i) + borderOffset3 + ((nextParcelX % 2) * (1.0f - (borderOffset3 * 2.0f)));
        float f4 = ((nextParcelY / 2) - i2) + borderOffset4 + ((nextParcelY % 2) * (1.0f - (borderOffset4 * 2.0f)));
        pedestrian.setInnerCoords(f, f2, f3, f4);
        float fDist = MathUtil.dist(f, f2, f3, f4);
        if (fDist < 0.01f) {
            fDist = 0.5f;
        }
        pedestrian.setDistance(fDist);
    }

    public final float getBorderOffset(Road road, Pedestrian pedestrian, int i) {
        float seed = ((pedestrian.getSeed() >> ((i * 3) + 7)) & 255) / 255.0f;
        float sidewalkOffset = road.getSidewalkOffset();
        float sidewalkSize = road.getSidewalkSize();
        if (road.dLevel != 0) {
            sidewalkOffset = Math.max(sidewalkOffset, 0.2f);
        }
        return sidewalkOffset + ((seed - 0.5f) * sidewalkSize);
    }

    public final float sampleTileRandomness(int i, int i2) {
        return RANDOM_GRID[(i % 7) + ((i2 % 7) * 7)];
    }

    public final Pedestrian allocatePedestrian() {
        if (this.pedestrianPool.isEmpty()) {
            return new Pedestrian();
        }
        return this.pedestrianPool.remove(r0.size() - 1);
    }

    public final void releasePedestrian(Pedestrian pedestrian) {
        if (pedestrian == null || this.pedestrianPool.size() >= 1024) {
            return;
        }
        this.pedestrianPool.add(pedestrian);
    }
}
