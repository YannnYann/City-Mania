package info.flowersoft.theotown.components.traffic;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Pathfinding;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes4.dex */
class PathfindingThread extends Thread {
    public final City city;
    public final CarTrafficHandler.PathfindingContext context;

    public PathfindingThread(City city, CarTrafficHandler.PathfindingContext pathfindingContext) {
        this.city = city;
        this.context = pathfindingContext;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        CarTrafficHandler.PathfindingTask pathfindingTaskRemoveFirst;
        Pathfinding pathfinding = new Pathfinding(this.city);
        ArrayDeque<CarTrafficHandler.PathfindingTask> tasks = this.context.getTasks();
        while (!this.context.shouldBeStopped()) {
            try {
                TimeUtils.millis();
                synchronized (tasks) {
                    while (tasks.isEmpty() && !this.context.shouldBeStopped()) {
                        try {
                            tasks.wait(1000L);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (this.context.shouldBeStopped()) {
                        return;
                    } else {
                        pathfindingTaskRemoveFirst = tasks.removeFirst();
                    }
                }
                TimeUtils.millis();
                pathfindingTaskRemoveFirst.work(pathfinding, true);
                TimeUtils.millis();
            } catch (InterruptedException e) {
                e.printStackTrace();
                return;
            }
        }
    }
}
