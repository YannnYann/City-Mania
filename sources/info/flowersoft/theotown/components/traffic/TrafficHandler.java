package info.flowersoft.theotown.components.traffic;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.CyclicWorker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TrafficHandler implements Saveable {
    public final City city;
    public final Tiles tiles;
    public final List<CyclicWorker> workers = new ArrayList();
    public final List<CyclicWorker> dailyWorkers = new ArrayList();

    public void drawAfter(Engine engine) {
    }

    public abstract void prepare();

    public void reset() {
    }

    public TrafficHandler(City city) {
        this.city = city;
        this.tiles = city.getTiles();
    }

    public void addWorker(CyclicWorker cyclicWorker) {
        this.workers.add(cyclicWorker);
    }

    public void addDailyWorker(CyclicWorker cyclicWorker) {
        this.dailyWorkers.add(cyclicWorker);
    }

    public void nextDay() {
        Iterator<CyclicWorker> it = this.dailyWorkers.iterator();
        while (it.hasNext()) {
            it.next().start();
        }
    }

    public void update() {
        Iterator<CyclicWorker> it = this.workers.iterator();
        while (it.hasNext()) {
            it.next().start();
        }
    }

    public void dispose() {
        joinWorkers();
    }

    public void joinWorkers() {
        Iterator<CyclicWorker> it = this.workers.iterator();
        while (it.hasNext()) {
            it.next().join();
        }
        this.workers.clear();
        Iterator<CyclicWorker> it2 = this.dailyWorkers.iterator();
        while (it2.hasNext()) {
            it2.next().join();
        }
        this.dailyWorkers.clear();
    }
}
