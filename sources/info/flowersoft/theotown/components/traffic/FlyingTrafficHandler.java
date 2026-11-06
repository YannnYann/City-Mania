package info.flowersoft.theotown.components.traffic;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.AirplaneController;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FireBrigadeHelicopterController;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectSpawner;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.GenericHelicopterController;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.PoliceHelicopterController;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.RocketController;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SWATHelicopterController;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.TestHelicopterController;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class FlyingTrafficHandler extends TrafficHandler {
    public List<FlyingObjectController> controllers;
    public DefaultDate date;
    public List<FlyingObject> flyingObjects;
    public FlyingObject lastRemovedObject;

    public FlyingTrafficHandler(City city) {
        super(city);
        this.flyingObjects = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.controllers = arrayList;
        arrayList.add(new TestHelicopterController(city, newSpawner()));
        this.controllers.add(new PoliceHelicopterController(city, newSpawner()));
        this.controllers.add(new SWATHelicopterController(city, newSpawner()));
        this.controllers.add(new FireBrigadeHelicopterController(city, newSpawner()));
        this.controllers.add(new RocketController(city, newSpawner()));
        this.controllers.add(new AirplaneController(city, newSpawner()));
        for (BuildingDraft buildingDraft : Drafts.BUILDINGS) {
            if (buildingDraft.helicopterSpawner != null) {
                this.controllers.add(new GenericHelicopterController(buildingDraft, city, newSpawner()));
            }
        }
    }

    public final FlyingObjectSpawner newSpawner() {
        return getSpawner(this.controllers.size());
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        FlyingObject flyingObject;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (int i = 0; i < this.controllers.size(); i++) {
            FlyingObjectController flyingObjectController = this.controllers.get(i);
            map.put(flyingObjectController.getTag(), Integer.valueOf(i));
            if (map2.put(flyingObjectController.getTag(), flyingObjectController) != null) {
                throw new IllegalStateException("Two flying object controllers with tag " + flyingObjectController.getTag());
            }
        }
        IntList intList = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "controllers":
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        FlyingObjectController flyingObjectController2 = (FlyingObjectController) map2.get(jsonReader.nextName());
                        if (flyingObjectController2 != null) {
                            jsonReader.beginObject();
                            flyingObjectController2.load(jsonReader);
                            jsonReader.endObject();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case "controller mapping":
                    intList = new IntList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        Integer num = (Integer) map.get(jsonReader.nextString());
                        if (num != null) {
                            intList.add(num.intValue());
                        } else {
                            intList.add(-1);
                        }
                    }
                    jsonReader.endArray();
                    break;
                case "flyingObjects":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        try {
                            flyingObject = new FlyingObject(jsonReader);
                        } catch (IllegalArgumentException unused) {
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            flyingObject = null;
                        }
                        jsonReader.endObject();
                        if (flyingObject != null) {
                            if (intList != null) {
                                flyingObject.setControllerId(intList.get(flyingObject.getControllerId()));
                            }
                            if (flyingObject.getControllerId() >= 0) {
                                this.flyingObjects.add(flyingObject);
                                register(flyingObject);
                            }
                        }
                        break;
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("controller mapping").beginArray();
        for (int i = 0; i < this.controllers.size(); i++) {
            jsonWriter.value(this.controllers.get(i).getTag());
        }
        jsonWriter.endArray();
        jsonWriter.name("controllers").beginObject();
        for (int i2 = 0; i2 < this.controllers.size(); i2++) {
            FlyingObjectController flyingObjectController = this.controllers.get(i2);
            jsonWriter.name(flyingObjectController.getTag()).beginObject();
            flyingObjectController.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endObject();
        jsonWriter.name("flyingObjects").beginArray();
        for (FlyingObject flyingObject : this.flyingObjects) {
            jsonWriter.beginObject();
            flyingObject.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }

    public List<FlyingObject> getFlyingObjects() {
        return this.flyingObjects;
    }

    public FlyingObject getObjectAt(int i, int i2) {
        for (FlyingObject flyingObject : new SafeListAccessor(this.flyingObjects)) {
            if (flyingObject.getX() == i && flyingObject.getY() == i2) {
                return flyingObject;
            }
        }
        return null;
    }

    public final FlyingObjectSpawner getSpawner(final int i) {
        return new FlyingObjectSpawner() { // from class: info.flowersoft.theotown.components.traffic.FlyingTrafficHandler.1
            @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectSpawner
            public FlyingObject spawn(FlyingObjectDraft flyingObjectDraft, int i2, int i3, int i4, int i5) {
                return FlyingTrafficHandler.this.spawn(flyingObjectDraft, i2, i3, i4, i5, i);
            }

            @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectSpawner
            public void remove(FlyingObject flyingObject) {
                FlyingTrafficHandler.this.remove(flyingObject);
            }
        };
    }

    public <T extends FlyingObjectController> T getController(Class<T> cls) {
        for (int i = 0; i < this.controllers.size(); i++) {
            T t = (T) this.controllers.get(i);
            if (t.getClass().equals(cls)) {
                return t;
            }
        }
        return null;
    }

    public final FlyingObject spawn(FlyingObjectDraft flyingObjectDraft, int i, int i2, int i3, int i4, int i5) {
        FlyingObject flyingObject = new FlyingObject(flyingObjectDraft, i, i2, i3, i4, i5);
        register(flyingObject);
        this.flyingObjects.add(flyingObject);
        getController(flyingObject).register(flyingObject);
        getController(flyingObject).onSpawned(flyingObject);
        return flyingObject;
    }

    public final void remove(FlyingObject flyingObject) {
        unregister(flyingObject);
        getController(flyingObject).unregister(flyingObject);
        this.flyingObjects.remove(flyingObject);
        this.lastRemovedObject = flyingObject;
    }

    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void prepare() {
        this.date = (DefaultDate) this.city.getComponent(1);
        for (FlyingObject flyingObject : this.flyingObjects) {
            getController(flyingObject).register(flyingObject);
        }
        addDailyWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.traffic.FlyingTrafficHandler.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (FlyingTrafficHandler.this.flyingObjects) {
                    for (int i = 0; i < FlyingTrafficHandler.this.controllers.size(); i++) {
                        try {
                            ((FlyingObjectController) FlyingTrafficHandler.this.controllers.get(i)).update();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }));
        addWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.traffic.FlyingTrafficHandler.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (FlyingTrafficHandler.this.flyingObjects) {
                    try {
                        float animationTimeDelta = FlyingTrafficHandler.this.date.getAnimationTimeDelta() / 1000.0f;
                        for (int i = 0; i < FlyingTrafficHandler.this.flyingObjects.size(); i++) {
                            FlyingObject flyingObject2 = (FlyingObject) FlyingTrafficHandler.this.flyingObjects.get(i);
                            flyingObject2.update(animationTimeDelta);
                            if (flyingObject2.getP() >= 1.0f) {
                                FlyingTrafficHandler.this.unregister(flyingObject2);
                                FlyingTrafficHandler.this.getController(flyingObject2).onTarget(flyingObject2);
                                if (flyingObject2 != FlyingTrafficHandler.this.lastRemovedObject) {
                                    FlyingTrafficHandler.this.register(flyingObject2);
                                } else {
                                    FlyingTrafficHandler.this.lastRemovedObject = null;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }));
        for (int i = 0; i < this.controllers.size(); i++) {
            this.controllers.get(i).prepare();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void register(FlyingObject flyingObject) {
        int x = flyingObject.getX();
        int y = flyingObject.getY();
        registerAt(flyingObject, x, y);
        int drawRadius = flyingObject.getDrawRadius();
        if (drawRadius > 0) {
            int i = x + drawRadius;
            int i2 = y + drawRadius;
            registerAt(flyingObject, i - 1, i2 + 1);
            int i3 = x - drawRadius;
            registerAt(flyingObject, i3 - 1, i2 - 1);
            int i4 = y - drawRadius;
            registerAt(flyingObject, i + 1, i4 + 1);
            registerAt(flyingObject, i3 + 1, i4 - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregister(FlyingObject flyingObject) {
        int x = flyingObject.getX();
        int y = flyingObject.getY();
        unregisterAt(flyingObject, x, y);
        int drawRadius = flyingObject.getDrawRadius();
        if (drawRadius > 0) {
            int i = x + drawRadius;
            int i2 = y + drawRadius;
            unregisterAt(flyingObject, i - 1, i2 + 1);
            int i3 = x - drawRadius;
            unregisterAt(flyingObject, i3 - 1, i2 - 1);
            int i4 = y - drawRadius;
            unregisterAt(flyingObject, i + 1, i4 + 1);
            unregisterAt(flyingObject, i3 + 1, i4 - 1);
        }
    }

    public final void registerAt(FlyingObject flyingObject, int i, int i2) {
        if (this.city.isValid(i, i2)) {
            this.tiles.setFlyingObject(i, i2, flyingObject);
        }
    }

    public final void unregisterAt(FlyingObject flyingObject, int i, int i2) {
        if (this.city.isValid(i, i2)) {
            this.tiles.setFlyingObject(i, i2, null);
        }
    }

    public final FlyingObjectController getController(FlyingObject flyingObject) {
        return this.controllers.get(flyingObject.getControllerId());
    }

    public void draw(int i, int i2, Drawer drawer) {
        FlyingObject flyingObject = this.tiles.getFlyingObject(i, i2);
        if (flyingObject == null) {
            return;
        }
        int drawRadius = flyingObject.getDrawRadius();
        if (drawRadius > 0) {
            int x = flyingObject.getX();
            int y = flyingObject.getY();
            int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2) - this.city.originalToRotatedX(x, y);
            int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2) - this.city.originalToRotatedY(x, y);
            if (iOriginalToRotatedX == drawRadius + 1) {
                if (iOriginalToRotatedY == (-drawRadius) + 1) {
                    drawer.addShiftToTile(r8 - 1, drawRadius - 1);
                    flyingObject.draw(drawer);
                    drawer.resetShift();
                    return;
                }
                return;
            }
            return;
        }
        flyingObject.draw(drawer);
    }
}
