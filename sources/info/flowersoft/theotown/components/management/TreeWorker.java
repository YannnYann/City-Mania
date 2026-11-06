package info.flowersoft.theotown.components.management;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.util.CyclicWorker;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TreeWorker extends CyclicWorker implements Runnable {
    public final City city;
    public final CityModifier modifier;
    public final List<Tree> removeTrees = new ArrayList();
    public final Tiles tiles;

    public void prepare() {
    }

    public TreeWorker(City city) {
        setTask(this);
        this.city = city;
        this.tiles = city.getTiles();
        this.modifier = new CityModifier(city, true);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.city.getWidth();
        this.city.getHeight();
        Texture texture = Resources.TEXTURE_WORLD;
        if (this.removeTrees.isEmpty()) {
            return;
        }
        synchronized (this.city) {
            for (int i = 0; i < this.removeTrees.size(); i++) {
                try {
                    Tree tree = this.removeTrees.get(i);
                    this.modifier.remove(tree, tree.getX(), tree.getY());
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.removeTrees.clear();
        }
    }
}
