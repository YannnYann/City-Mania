package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.util.DataAccessor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SimpleHelicopterController extends FlyingObjectController {
    public abstract void finishedFlightCommand(FlyingObject flyingObject);

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void onSpawned(FlyingObject flyingObject) {
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void update() {
    }

    public SimpleHelicopterController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public final void onTarget(FlyingObject flyingObject) {
        int actualX = flyingObject.getActualX();
        int actualY = flyingObject.getActualY();
        float actualHeight = flyingObject.getActualHeight();
        int stateTargetX = getStateTargetX(flyingObject);
        int stateTargetY = getStateTargetY(flyingObject);
        float stateTargetHeight = getStateTargetHeight(flyingObject);
        boolean stateTargetLand = getStateTargetLand(flyingObject);
        float fMax = Math.max(this.city.getTileHeight(actualX, actualY), stateTargetHeight);
        boolean stateFinished = getStateFinished(flyingObject);
        int dir = flyingObject.getDir();
        int i = 32;
        if (stateFinished) {
            if (stateTargetLand) {
                flyingObject.setSpeed(Math.max(flyingObject.getSpeed() - 0.1f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
                flyingObject.flyTo(0, dir, actualHeight);
                return;
            } else {
                float fMax2 = Math.max(Math.max(fMax, r7 + 32), 48.0f);
                if (actualHeight == fMax2) {
                    fMax2 += 4.0f;
                }
                flyingObject.flyTo(0, dir, fMax2);
                return;
            }
        }
        if (actualX == stateTargetX && actualY == stateTargetY && stateTargetLand) {
            i = 0;
        }
        float fMax3 = Math.max(Math.max(fMax, r7 + i), (actualX == stateTargetX && actualY == stateTargetY && stateTargetLand) ? 0 : 48);
        float f = actualHeight - 16.0f;
        if (fMax3 < f) {
            fMax3 = f;
        }
        float f2 = 16.0f + actualHeight;
        if (fMax3 > f2) {
            fMax3 = f2;
        }
        if (actualX != stateTargetX || actualY != stateTargetY || actualHeight != fMax3) {
            int i2 = stateTargetX - actualX;
            int i3 = stateTargetY - actualY;
            if (Math.abs(i2) + Math.abs(i3) > 0) {
                int iFromDifferential = i2 != 0 ? Direction.fromDifferential(i2, 0) : 0;
                int iFromDifferential2 = i3 != 0 ? Direction.fromDifferential(0, i3) : 0;
                if (dir == 0) {
                    iFromDifferential = 1;
                } else if (iFromDifferential != dir) {
                    if (iFromDifferential2 == dir) {
                        iFromDifferential = iFromDifferential2;
                    } else if (Direction.turnCCW(dir) == iFromDifferential || Direction.turnCCW(dir) == iFromDifferential2) {
                        iFromDifferential = Direction.turnCCW(dir);
                    } else if (Direction.rotateCW(dir, 1) == iFromDifferential || Direction.rotateCW(dir, 1) == iFromDifferential2) {
                        iFromDifferential = Direction.rotateCW(dir, 1);
                    } else {
                        iFromDifferential = Direction.turnCCW(dir);
                    }
                }
                flyingObject.flyTo(iFromDifferential, iFromDifferential, fMax3);
            } else {
                flyingObject.flyTo(0, dir, fMax3);
            }
            flyingObject.setSpeed(Math.min(flyingObject.getSpeed() + 0.1f, 1.0f));
            return;
        }
        setState(flyingObject, actualX, actualY, (int) fMax3, stateTargetLand, true);
        finishedFlightCommand(flyingObject);
    }

    public final FlyingObject create(FlyingObjectDraft flyingObjectDraft, int i, int i2) {
        int tileHeight = this.city.getTileHeight(i, i2);
        FlyingObject flyingObjectSpawn = this.spawner.spawn(flyingObjectDraft, i, i2, 1, tileHeight);
        setState(flyingObjectSpawn, i, i2, tileHeight, true, true);
        return flyingObjectSpawn;
    }

    public final void flyTo(FlyingObject flyingObject, int i, int i2, boolean z) {
        setState(flyingObject, i, i2, this.city.getTileHeight(i, i2), z, false);
        flyingObject.setSpeed(Math.max(0.5f, flyingObject.getSpeed()));
    }

    public final void setState(FlyingObject flyingObject, int i, int i2, int i3, boolean z, boolean z2) {
        flyingObject.data = DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(flyingObject.data, 10, 22, i), 10, 12, i2), 10, 2, i3), 1, 1, z ? 1L : 0L), 1, 0, z2 ? 1L : 0L);
    }

    public final int getStateTargetX(FlyingObject flyingObject) {
        return (int) DataAccessor.read(flyingObject.data, 10, 22);
    }

    public final int getStateTargetY(FlyingObject flyingObject) {
        return (int) DataAccessor.read(flyingObject.data, 10, 12);
    }

    public final int getStateTargetHeight(FlyingObject flyingObject) {
        return (int) DataAccessor.read(flyingObject.data, 10, 2);
    }

    public final boolean getStateTargetLand(FlyingObject flyingObject) {
        return DataAccessor.read(flyingObject.data, 1, 1) == 1;
    }

    public final boolean getStateFinished(FlyingObject flyingObject) {
        return DataAccessor.read(flyingObject.data, 1, 0) == 1;
    }
}
