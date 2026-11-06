package info.flowersoft.theotown.components;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.components.Traffic;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Ship;
import info.flowersoft.theotown.components.actionplace.ActionPlaceController;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.components.traffic.FlyingTrafficHandler;
import info.flowersoft.theotown.components.traffic.PedestrianTrafficHandler;
import info.flowersoft.theotown.components.traffic.ShipTrafficHandler;
import info.flowersoft.theotown.components.traffic.TrafficHandler;
import info.flowersoft.theotown.components.traffic.TrainTrafficHandler;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultTraffic extends Traffic {
    public final ActionPlaceController actionPlaceController;
    public CarTrafficHandler carHandler;
    public FlyingTrafficHandler flyingObjectHandler;
    public List<TrafficHandler> handlers;
    public PedestrianTrafficHandler pedestrianHandler;
    public ShipTrafficHandler shipHandler;
    public TrainTrafficHandler trainHandler;

    public DefaultTraffic() {
        this.actionPlaceController = new ActionPlaceController();
    }

    public DefaultTraffic(JsonReader jsonReader, City city) throws IOException {
        this();
        this.city = city;
        prepareHandler();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "action place controller":
                    jsonReader.beginObject();
                    this.actionPlaceController.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "flyingObject handler":
                    jsonReader.beginObject();
                    this.flyingObjectHandler.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "train handler":
                    jsonReader.beginObject();
                    this.trainHandler.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "ship handler":
                    jsonReader.beginObject();
                    this.shipHandler.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "car handler":
                    jsonReader.beginObject();
                    this.carHandler.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "pedestrian traffic handler":
                    jsonReader.beginObject();
                    this.pedestrianHandler.load(jsonReader);
                    jsonReader.endObject();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("car handler").beginObject();
        this.carHandler.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("ship handler").beginObject();
        this.shipHandler.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("train handler").beginObject();
        this.trainHandler.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("flyingObject handler").beginObject();
        this.flyingObjectHandler.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("action place controller").beginObject();
        this.actionPlaceController.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("pedestrian traffic handler").beginObject();
        this.pedestrianHandler.save(jsonWriter);
        jsonWriter.endObject();
    }

    public final void prepareHandler() {
        if (this.handlers == null) {
            ArrayList arrayList = new ArrayList();
            this.handlers = arrayList;
            CarTrafficHandler carTrafficHandler = new CarTrafficHandler(this.city);
            this.carHandler = carTrafficHandler;
            arrayList.add(carTrafficHandler);
            List<TrafficHandler> list = this.handlers;
            ShipTrafficHandler shipTrafficHandler = new ShipTrafficHandler(this.city);
            this.shipHandler = shipTrafficHandler;
            list.add(shipTrafficHandler);
            List<TrafficHandler> list2 = this.handlers;
            TrainTrafficHandler trainTrafficHandler = new TrainTrafficHandler(this.city);
            this.trainHandler = trainTrafficHandler;
            list2.add(trainTrafficHandler);
            List<TrafficHandler> list3 = this.handlers;
            FlyingTrafficHandler flyingTrafficHandler = new FlyingTrafficHandler(this.city);
            this.flyingObjectHandler = flyingTrafficHandler;
            list3.add(flyingTrafficHandler);
            List<TrafficHandler> list4 = this.handlers;
            PedestrianTrafficHandler pedestrianTrafficHandler = new PedestrianTrafficHandler(this.city);
            this.pedestrianHandler = pedestrianTrafficHandler;
            list4.add(pedestrianTrafficHandler);
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        prepareHandler();
        super.bind(city);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        Iterator<TrafficHandler> it = this.handlers.iterator();
        while (it.hasNext()) {
            it.next().prepare();
        }
        super.prepare();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        Engine engine = drawer.engine;
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        Iterator<TrafficHandler> it = this.handlers.iterator();
        while (it.hasNext()) {
            it.next().drawAfter(engine);
        }
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        if (Settings.hideUI) {
            return;
        }
        for (int i = 0; i < ActionPlaceType.COUNT; i++) {
            if (this.actionPlaceController.isActive(i)) {
                List<MapArea> areas = this.actionPlaceController.getAreas(i);
                for (int i2 = 0; i2 < areas.size(); i2++) {
                    MapArea mapArea = areas.get(i2);
                    float centerX = mapArea.getCenterX() + 0.5f;
                    float centerY = mapArea.getCenterY() + 0.5f;
                    float fOriginalToRotatedX = this.city.originalToRotatedX(centerX, centerY);
                    float fOriginalToRotatedY = this.city.originalToRotatedY(centerX, centerY);
                    IsoConverter isoConverter = this.city.getIsoConverter();
                    engine.drawImage(Resources.IMAGE_WORLD, (int) Math.floor(isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY)), ((int) Math.floor(isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY))) - ((int) ((mapArea.getParcelLevel(mapArea.countParcels() - 1) * 12) * engine.getScaleY())), ActionPlaceType.frame[i]);
                }
            }
        }
    }

    public void drawRoad(int i, int i2, Road road, Drawer drawer) {
        if (Settings.drawPedestrians) {
            this.pedestrianHandler.update(i, i2, road, drawer);
            this.pedestrianHandler.drawBackground(i, i2, road, drawer);
            this.carHandler.draw(i, i2, road, drawer);
            this.pedestrianHandler.drawForeground(i, i2, road, drawer);
            return;
        }
        this.carHandler.draw(i, i2, road, drawer);
    }

    public void drawShip(int i, int i2, Ship ship, Drawer drawer) {
        this.shipHandler.draw(i, i2, ship, drawer);
    }

    public void drawFlyingObject(int i, int i2, Drawer drawer) {
        this.flyingObjectHandler.draw(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        super.nextDay();
        Iterator<TrafficHandler> it = this.handlers.iterator();
        while (it.hasNext()) {
            it.next().nextDay();
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        this.actionPlaceController.update();
        Iterator<TrafficHandler> it = this.handlers.iterator();
        while (it.hasNext()) {
            it.next().update();
        }
    }

    public int countCars() {
        return this.carHandler.countCars();
    }

    public void addOrRemovePlaceOfAction(int i, MapArea mapArea) {
        this.actionPlaceController.addOrRemoveActionPlace(mapArea, i);
    }

    public <T extends TrafficHandler> T getTrafficHandler(Class<T> cls) {
        for (int i = 0; i < this.handlers.size(); i++) {
            T t = (T) this.handlers.get(i);
            if (t.getClass().equals(cls)) {
                return t;
            }
        }
        return null;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void dispose() {
        super.dispose();
        Iterator<TrafficHandler> it = this.handlers.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
    }

    public void reset() {
        for (int i = 0; i < this.handlers.size(); i++) {
            this.handlers.get(i).reset();
        }
    }

    public ActionPlaceController getActionPlaceController() {
        return this.actionPlaceController;
    }
}
