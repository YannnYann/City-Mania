package info.flowersoft.theotown.stages.gameuibuilder.collectors;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tools.marker.AttributeMarker;
import info.flowersoft.theotown.tools.marker.DensityMarker;
import info.flowersoft.theotown.tools.marker.HappinessMarker;
import info.flowersoft.theotown.tools.marker.InfoGridMarker;
import info.flowersoft.theotown.tools.marker.LevelMarker;
import info.flowersoft.theotown.tools.marker.PowerMarker;
import info.flowersoft.theotown.tools.marker.TicketMarker;
import info.flowersoft.theotown.tools.marker.TrafficMarker;
import info.flowersoft.theotown.tools.marker.WaterPipeMarker;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.selectable.SelectableFollowCar;
import info.flowersoft.theotown.ui.selectable.SelectableInfluence;
import info.flowersoft.theotown.ui.selectable.SelectableMarker;
import info.flowersoft.theotown.ui.selectable.SelectableProtection;
import info.flowersoft.theotown.ui.selectable.Separator;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.Getter;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class ViewMarkerCollector extends SelectableCollector {
    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getNameId() {
        return 3327;
    }

    public ViewMarkerCollector(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getIconId() {
        return Resources.ICON_EYE;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public void collect(List<Selectable> list) {
        list.add(new SelectableFollowCar(this.city));
        list.add(new Separator());
        City city = this.city;
        list.add(new SelectableMarker(city, new PowerMarker(city)));
        City city2 = this.city;
        list.add(new SelectableMarker(city2, new WaterPipeMarker(city2)));
        list.add(new Separator());
        for (InfluenceType influenceType : InfluenceType.cachedValues()) {
            if (!influenceType.isHidden() || Settings.debugMode) {
                list.add(new SelectableInfluence(this.city, influenceType));
            }
        }
        list.add(new Separator());
        City city3 = this.city;
        list.add(new SelectableMarker(city3, new HappinessMarker(city3)));
        City city4 = this.city;
        list.add(new SelectableMarker(city4, new TrafficMarker(city4)));
        City city5 = this.city;
        list.add(new SelectableMarker(city5, new LevelMarker(city5)));
        City city6 = this.city;
        list.add(new SelectableMarker(city6, new DensityMarker(city6)));
        list.add(new SelectableProtection(this.city));
        if (Settings.debugMode) {
            list.add(new Separator());
            City city7 = this.city;
            list.add(new SelectableMarker(city7, new InfoGridMarker(Colors.GREEN, ((DefaultManagement) city7.getComponent(3)).getPeopleInfoGrid())));
            City city8 = this.city;
            list.add(new SelectableMarker(city8, new TicketMarker(city8)));
            list.add(new Separator());
            List<Attribute> attributes = AttributeFactory.getAttributes();
            for (int i = 0; i < attributes.size(); i++) {
                Attribute attribute = attributes.get(i);
                SelectableMarker selectableMarker = new SelectableMarker(this.city, new AttributeMarker(this.city, i));
                final String str = "draft_" + AttributeFactory.getTag(attribute).toLowerCase(Locale.ENGLISH);
                selectableMarker.setDraftId(str);
                selectableMarker.setName(new Getter<String>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.collectors.ViewMarkerCollector.1
                    @Override // io.blueflower.stapel2d.util.Getter
                    public String get() {
                        return new DraftLocalizer(ViewMarkerCollector.this.city).getTitle(str);
                    }
                });
                list.add(selectableMarker);
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public String getTag() {
        return "ViewMarkerCollector";
    }
}
