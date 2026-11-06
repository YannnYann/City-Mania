package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.selectable.SelectableAirplaneDraft;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class BuyAirplaneDialog extends Dialog {
    public BuyAirplaneDialog(DefaultAirport defaultAirport, Stapel2DGameContext stapel2DGameContext, Master master) {
        super(Resources.ICON_AIRPORT, stapel2DGameContext.getTranslator().translate(3549), "", master);
        removeControlLine();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Drafts.AIRPLANES.size(); i++) {
            SelectableAirplaneDraft selectableAirplaneDraft = new SelectableAirplaneDraft(defaultAirport, Drafts.AIRPLANES.get(i));
            selectableAirplaneDraft.setOnSelect(new Runnable() { // from class: info.flowersoft.theotown.ui.BuyAirplaneDialog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.setVisible(false);
                }
            });
            arrayList.add(selectableAirplaneDraft);
        }
        abuseFor(new Selector(stapel2DGameContext.getTranslator().translate(3549), getContentPane(), arrayList));
        addHiddenCancelButton();
    }
}
