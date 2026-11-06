package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.components.DefaultDate;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CarController {
    public City city;
    public int id;
    public final CarSpawner spawner;
    public Tiles tiles;
    public boolean trackCars = true;
    public final List<Car> cars = new ArrayList();
    public int carCountUntracked = 0;

    public void foundNoWay(Car car) {
    }

    public void foundWay(Car car) {
    }

    public abstract String getName();

    public void onNotSpawn(long j) {
    }

    public boolean onSpawn(Car car) {
        return true;
    }

    public abstract boolean onTarget(Car car, int i, int i2, int i3);

    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public abstract void update();

    public CarController(CarSpawner carSpawner) {
        this.spawner = carSpawner;
    }

    public void load(JsonReader jsonReader, City city) throws IOException {
        this.city = city;
        this.tiles = city.getTiles();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    public void setCity(City city) {
        this.city = city;
        this.tiles = city.getTiles();
    }

    public void prepare(City city) {
        this.city = city;
    }

    public List<Car> getCars() {
        if (!this.trackCars) {
            throw new UnsupportedOperationException("Cannot get cars for untracked car controller");
        }
        return this.cars;
    }

    public void register(Car car) {
        if (!this.trackCars) {
            this.carCountUntracked++;
        } else {
            this.cars.add(car);
        }
    }

    public void unregister(Car car) {
        if (!this.trackCars) {
            this.carCountUntracked--;
            return;
        }
        int iIndexOf = this.cars.indexOf(car);
        if (iIndexOf < 0) {
            return;
        }
        int size = this.cars.size() - 1;
        if (iIndexOf == size) {
            this.cars.remove(size);
            return;
        }
        List<Car> list = this.cars;
        list.set(iIndexOf, list.get(size));
        this.cars.remove(size);
    }

    public int getCarCount() {
        if (this.trackCars) {
            return this.cars.size();
        }
        return this.carCountUntracked;
    }

    public DefaultDate getDate() {
        return (DefaultDate) this.city.getComponent(1);
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final int getId() {
        return this.id;
    }
}
