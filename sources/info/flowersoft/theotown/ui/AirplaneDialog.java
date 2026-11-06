package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.airport.Airplane;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.components.airport.Lane;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.listitem.ActionListItem;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Predicate;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AirplaneDialog extends Dialog {
    public final DefaultAirport airport;
    public final City city;
    public final Lane lane;
    public final ListBox listBox;

    public AirplaneDialog(Lane lane, DefaultAirport defaultAirport, Stapel2DGameContext stapel2DGameContext, Master master) {
        super(Resources.ICON_AIRPORT, stapel2DGameContext.getTranslator().translate(286), "", 300, 285, master);
        this.city = defaultAirport.getCity();
        this.airport = defaultAirport;
        this.lane = lane;
        ListBox listBox = new ListBox(0, 0, 0, 0, getContentPane());
        this.listBox = listBox;
        listBox.fillParent();
        rebuildListBoxItems(stapel2DGameContext.getKey());
        addHiddenCancelButton();
        if (defaultAirport.getCity().isReadonly()) {
            return;
        }
        new AnonymousClass1(Resources.ICON_PLUS, stapel2DGameContext.getTranslator().translate(1831), 0, 0, 0, getControlLine().getClientHeight(), getControlLine().getFirstPart(), defaultAirport, stapel2DGameContext, master);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.AirplaneDialog$1, reason: invalid class name */
    public class AnonymousClass1 extends IconButton {
        public final /* synthetic */ DefaultAirport val$airport;
        public final /* synthetic */ Stapel2DGameContext val$context;
        public final /* synthetic */ Master val$gui;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, DefaultAirport defaultAirport, Stapel2DGameContext stapel2DGameContext, Master master) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$airport = defaultAirport;
            this.val$context = stapel2DGameContext;
            this.val$gui = master;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            BuyAirplaneDialog buyAirplaneDialog = new BuyAirplaneDialog(this.val$airport, this.val$context, this.val$gui);
            final Stapel2DGameContext stapel2DGameContext = this.val$context;
            buyAirplaneDialog.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AirplaneDialog.this.rebuildListBoxItems(stapel2DGameContext.getKey());
                }
            });
            buyAirplaneDialog.setVisible(true);
        }
    }

    public final void rebuildListBoxItems(final KeyMapper keyMapper) {
        this.listBox.removeAllItems();
        List<Airplane> airplanes = this.airport.getAirplanes();
        final Translator translator = this.city.getTranslator();
        for (int i = 0; i < airplanes.size(); i++) {
            final Airplane airplane = airplanes.get(i);
            ActionListItem actionListItem = new ActionListItem(this.listBox) { // from class: info.flowersoft.theotown.ui.AirplaneDialog.2
                @Override // info.flowersoft.theotown.ui.listitem.ActionListItem, io.blueflower.stapel2d.gui.ListItem
                public int getHeight(boolean z) {
                    return 40;
                }

                @Override // info.flowersoft.theotown.ui.listitem.ActionListItem
                public int drawIcon(int i2, int i3, int i4, int i5, Skin skin) {
                    Engine engine = skin.engine;
                    int i6 = airplane.getDraft().frames[airplane.getFrame() * 4];
                    Image image = Resources.IMAGE_WORLD;
                    engine.drawImage(image, i2 + image.getHandleX(i6), (i3 + i5) - 16, i6);
                    return 96;
                }
            };
            actionListItem.setTitle(airplane.getName());
            actionListItem.setSubTitle(new DraftLocalizer(this.city).getTitle(airplane.getDraft()));
            actionListItem.addAction(Resources.ICON_EDIT, translator.translate(270), new Runnable() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AirplaneDialog.$r8$lambda$Rq849LPnlNU7fJbpyaHdEvGnILY(this.f$0, translator, keyMapper, airplane);
                }
            });
            int i2 = Resources.ICON_LOCATE;
            String strTranslate = translator.translate(991);
            Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AirplaneDialog.$r8$lambda$kincAF08o_jBTWpOIEcTM2tsQFk(this.f$0, airplane);
                }
            };
            Getter<Boolean> getter = new Getter() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda2
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    AirplaneDialog airplaneDialog = this.f$0;
                    return Boolean.valueOf((airplaneDialog.lane == null || airplaneDialog.airport.isAirplaneAssigned(airplane)) ? false : true);
                }
            };
            Lane lane = this.lane;
            actionListItem.addAction(i2, strTranslate, runnable, (Getter<Boolean>) null, getter, lane != null && lane.getAirplane() == null);
            actionListItem.addAction(Resources.ICON_OK, translator.translate(35), new Runnable() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.airport.unassignAirplaneToLane(airplane);
                }
            }, null, new Getter() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda4
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    AirplaneDialog airplaneDialog = this.f$0;
                    return Boolean.valueOf(airplaneDialog.lane != null && airplaneDialog.airport.getLaneOfAirplane(airplane) == airplaneDialog.lane);
                }
            });
            actionListItem.addAction(Resources.ICON_CANCEL, translator.translate(1319), new Runnable() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.airport.unassignAirplaneToLane(airplane);
                }
            }, null, new Getter() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda6
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    AirplaneDialog airplaneDialog = this.f$0;
                    Airplane airplane2 = airplane;
                    return Boolean.valueOf((airplaneDialog.lane == null || !airplaneDialog.airport.isAirplaneAssigned(airplane2) || airplaneDialog.airport.getLaneOfAirplane(airplane2) == airplaneDialog.lane) ? false : true);
                }
            });
            this.listBox.addItem(actionListItem);
            if (this.lane != null && this.airport.getLaneOfAirplane(airplane) == this.lane) {
                this.listBox.setShiftY(r4.getContentHeight());
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$Rq849LPnlNU7fJbpyaHdEvGnILY(final AirplaneDialog airplaneDialog, Translator translator, final KeyMapper keyMapper, final Airplane airplane) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder((Master) airplaneDialog.getContentPane().getAbsoluteParent(), translator, keyMapper);
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda7
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return AirplaneDialog.$r8$lambda$55uuihVoapAapDpwbmdkG8jp7zw((String) obj);
            }
        });
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda8
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                AirplaneDialog.m2362$r8$lambda$3hWm3Bbt28ZWJhtZsN5jqG7vjY(this.f$0, airplane, keyMapper, (String) obj);
            }
        });
        renameDialogBuilder.build(Resources.ICON_AIRPORT, translator.translate(2846), translator.translate(2433), airplane.getName()).setVisible(true);
    }

    public static /* synthetic */ boolean $r8$lambda$55uuihVoapAapDpwbmdkG8jp7zw(String str) {
        return str.trim().length() >= 0;
    }

    /* JADX INFO: renamed from: $r8$lambda$3hWm3Bbt28ZWJhtZsN5jq-G7vjY, reason: not valid java name */
    public static /* synthetic */ void m2362$r8$lambda$3hWm3Bbt28ZWJhtZsN5jqG7vjY(AirplaneDialog airplaneDialog, Airplane airplane, KeyMapper keyMapper, String str) {
        airplaneDialog.getClass();
        airplane.setName(str);
        airplaneDialog.rebuildListBoxItems(keyMapper);
    }

    public static /* synthetic */ void $r8$lambda$kincAF08o_jBTWpOIEcTM2tsQFk(AirplaneDialog airplaneDialog, Airplane airplane) {
        airplaneDialog.airport.assignAirplaneToLane(airplaneDialog.lane, airplane);
        airplaneDialog.setVisible(false);
    }
}
