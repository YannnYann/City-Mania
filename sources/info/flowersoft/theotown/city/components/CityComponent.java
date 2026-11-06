package info.flowersoft.theotown.city.components;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.Tiles;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.CyclicWorker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CityComponent implements DateListener {
    public City city;
    public Tiles tiles;
    public final List<CyclicWorker> workers = new ArrayList();

    public void drawAfter(Drawer drawer) {
    }

    public void drawAfterCached(Drawer drawer) {
    }

    public void drawBefore(Engine engine) {
    }

    public abstract int getType();

    @Override // info.flowersoft.theotown.city.components.DateListener
    public void nextMonth() {
    }

    @Override // info.flowersoft.theotown.city.components.DateListener
    public void nextYear() {
    }

    public void update() {
    }

    public void bind(City city) {
        this.city = city;
        this.tiles = city.getTiles();
    }

    public void unbind() {
        this.workers.clear();
    }

    public City getCity() {
        return this.city;
    }

    public void prepare() {
        Iterator<CyclicWorker> it = this.workers.iterator();
        while (it.hasNext()) {
            it.next().start();
        }
    }

    public void finishPrepare() {
        Iterator<CyclicWorker> it = this.workers.iterator();
        while (it.hasNext()) {
            it.next().join();
        }
    }

    @Override // info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        for (CyclicWorker cyclicWorker : this.workers) {
            long jMillis = TimeUtils.millis();
            cyclicWorker.start();
            long jMillis2 = TimeUtils.millis() - jMillis;
            if (jMillis2 >= 100) {
                Gdx.app.debug("City " + cyclicWorker.getName(), "Took " + jMillis2 + "ms to proceed");
            }
        }
    }

    public void join() {
        Iterator<CyclicWorker> it = this.workers.iterator();
        while (it.hasNext()) {
            it.next().join();
        }
    }

    public void dispose() {
        join();
        this.workers.clear();
    }

    public final void addWorker(CyclicWorker cyclicWorker) {
        this.workers.add(cyclicWorker);
    }
}
