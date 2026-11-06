package info.flowersoft.theotown.city;

import com.badlogic.gdx.Gdx;
import com.ironsource.C3522b4;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.coverage.CoverageAspect;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class TileLogger {
    public final City city;
    public String message = "";
    public final Tiles tiles;

    public TileLogger(City city) {
        this.city = city;
        this.tiles = city.getTiles();
    }

    public void log(int i, int i2) {
        if (this.city.isValid(i, i2)) {
            addLine(String.format(Locale.ENGLISH, "Information for (%d, %d)", Integer.valueOf(i), Integer.valueOf(i2)));
            addLine("zone " + this.tiles.getZone(i, i2) + " (minSize: " + this.tiles.getMinZoneSize(i, i2) + ", maxSize: " + this.tiles.getMaxZoneSize(i, i2) + "), height: " + ((int) this.tiles.getGround(i, i2).height));
            Road road = this.tiles.getRoad(i, i2, 0);
            if (road != null) {
                addLine();
                addLine("Road " + road.draft.id + " [" + road.getAlign() + C3522b4.j.e);
                BusStop busStop = road.getBusStop();
                if (busStop != null) {
                    addLine("Bus stop (usage: " + busStop.getOverallUsage() + ", waiting: " + busStop.getWaiting() + ")");
                }
                Iterator<Car> it = ((CarTrafficHandler) ((DefaultTraffic) this.city.getComponent(7)).getTrafficHandler(CarTrafficHandler.class)).getCars(road).iterator();
                while (it.hasNext()) {
                    addLine("Car " + it.next().draft.id);
                }
            }
            Tree tree = this.tiles.getTree(i, i2);
            if (tree != null) {
                addLine();
                addLine("Tree " + tree.getDraft().id + " [" + tree.getFrame() + C3522b4.j.e);
            }
            Building building = this.tiles.getBuilding(i, i2);
            if (building != null) {
                addLine();
                addLine("Building " + building.getDraftId() + " lvl" + building.getLevel() + " " + building.getWidth() + "x" + building.getHeight() + " frame " + building.getFrame());
                if (building.getAttributeContainer() != null) {
                    addLine("Happiness: " + ((ConcreteAttributeContainer) building.getAttributeContainer()).getHappiness());
                }
                addLine("Density: " + building.getDraft().density);
            }
            addLine();
            addLine("Influences...");
            for (int i3 = 0; i3 < InfluenceType.cachedValues().length; i3++) {
                addLine(InfluenceType.cachedValues()[i3].name() + ": " + ((DefaultInfluence) this.city.getComponent(2)).getInfluence(i, i2, i3));
            }
            addLine();
            if (building != null && building.getAttributeContainer() != null) {
                ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
                addLine("Attributes...");
                for (int i4 = 0; i4 < AttributeFactory.countAttributes(); i4++) {
                    Attribute attribute = AttributeFactory.getAttributes().get(i4);
                    StringBuilder sb = new StringBuilder();
                    sb.append(attribute.getClass().getSimpleName());
                    sb.append(": ");
                    sb.append(concreteAttributeContainer.getValues()[i4]);
                    sb.append(attribute.isHappiness() ? " (happiness)" : "");
                    addLine(sb.toString());
                }
            }
            addLine();
            if (building != null) {
                int i5 = 0;
                while (true) {
                    int[] iArr = CoverageAspect.values;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = iArr[i5];
                    addLine(CoverageAspect.names[i6] + ": " + building.getUsedAspectAmount(i6) + "used");
                    i5++;
                }
                addLine("Waste: " + building.getAspects()[0]);
                addLine("Bodies: " + building.getAspects()[1]);
            }
            pushMessage();
        }
    }

    public final void addLine() {
        addLine(" ");
    }

    public final void addLine(String str) {
        this.message += str + "\n";
    }

    public final void pushMessage() {
        Gdx.app.debug("TileLogger", this.message);
        this.message = "";
    }
}
