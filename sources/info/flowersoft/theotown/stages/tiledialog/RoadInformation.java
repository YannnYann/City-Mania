package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.libraries.GUILibrary;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.Selector;
import info.flowersoft.theotown.ui.selectable.SelectableDraft;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class RoadInformation extends TileInformationProvider {
    public RoadDraft draft;
    public Road road;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        int i3;
        super.setContext(city, i, i2);
        Road topRoad = city.getTiles().getTopRoad(i, i2);
        this.road = topRoad;
        if (topRoad != null && ((i3 = topRoad.level) < -1 || (i3 == -1 && topRoad.dLevel == 0))) {
            this.road = null;
        }
        Road road = this.road;
        this.draft = road != null ? road.draft : null;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        return this.road != null;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getIcon() {
        int iOptint = resolveScriptValue(this.draft, "getIcon").optint(-1);
        if (iOptint >= 0) {
            return iOptint;
        }
        Road road = this.road;
        return road != null ? road.draft.getIcon() : Resources.ICON_ROAD;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getTitle() {
        String strOptjstring = resolveScriptValue(this.draft, "getTitle").optjstring(null);
        return strOptjstring != null ? strOptjstring : new DraftLocalizer(this.city).getTitle(this.draft);
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        String str = new DraftLocalizer(this.city).getText(this.draft) + "\n";
        String strOptjstring = resolveScriptValue(this.draft, "getText").optjstring(null);
        if (strOptjstring != null) {
            return strOptjstring;
        }
        if (this.draft.monthlyPrice <= 0 || this.city.getGameMode().hasInfinityMoney()) {
            return str;
        }
        return str + "\n" + StringFormatter.format(this.translator.translate(176), Localizer.localizeMoney(this.draft.monthlyPrice));
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getSound() {
        int i = this.draft.soundClick;
        return i != -1 ? i : Resources.SOUND_ROAD;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(final Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        if (this.road.mayHaveTrafficLights() && !this.city.isReadonly()) {
            new IconButton(Resources.ICON_TRAFFIC_LIGHTS_ON, "", 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getFirstPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.RoadInformation.1
                {
                    updateText();
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    RoadInformation.this.road.setTrafficLights(!RoadInformation.this.road.hasTrafficLights());
                    updateText();
                }

                @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i, int i2) {
                    if (RoadInformation.this.road.hasTrafficLights()) {
                        drawNinePatch(i, i2, this.skin.npButtonDown);
                    } else {
                        drawNinePatch(i, i2, this.skin.npButton);
                    }
                    drawChildren(i, i2);
                }

                private void updateText() {
                    if (RoadInformation.this.road.hasTrafficLights()) {
                        setText(RoadInformation.this.translator.translate(2514));
                        setIcon(Resources.ICON_TRAFFIC_LIGHTS_ON);
                    } else {
                        setText(RoadInformation.this.translator.translate(3169));
                        setIcon(Resources.ICON_TRAFFIC_LIGHTS_OFF);
                    }
                }
            };
        }
        Road road = this.road;
        if (((road.dLevel == 0 || road.level != 0) && road.level <= 0) || this.draft.countBridges() <= 1 || this.city.isReadonly()) {
            return;
        }
        new IconButton(Resources.ICON_ROAD_AIR, this.translator.translate(1773), 0, 0, 0, dialog.getControlLine().getFirstPart().getClientHeight(), dialog.getControlLine().getFirstPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.RoadInformation.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                dialog.clearButtons();
                dialog.getContentPane().removeAllChildren();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < RoadInformation.this.draft.countBridges(); i++) {
                    arrayList.add(new SelectableDraft(RoadInformation.this.city, i) { // from class: info.flowersoft.theotown.stages.tiledialog.RoadInformation.2.1
                        public Road _road;
                        public Drawer d;
                        public final /* synthetic */ int val$bridgeType;

                        @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
                        public long getPrice() {
                            return 0L;
                        }

                        @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
                        public boolean isActive() {
                            return true;
                        }

                        {
                            this.val$bridgeType = i;
                            Road road2 = new Road(RoadInformation.this.draft, RoadInformation.this.road.x, RoadInformation.this.road.y, 1, 0, 10);
                            this._road = road2;
                            road2.bridgeType = i;
                            road2.setPile(true);
                            this.d = new Drawer(this.city);
                        }

                        @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
                        public Draft getDraft() {
                            return RoadInformation.this.draft;
                        }

                        @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
                        public void select() {
                            super.select();
                            new CityModifier(this.city, true).setBridge(RoadInformation.this.road, this.val$bridgeType);
                            dialog.setVisible(false);
                        }

                        @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
                        public void drawPreview(Engine engine, int i2, int i3) {
                            this.d.begin(engine);
                            Drawer drawer = this.d;
                            drawer.x = i2;
                            drawer.y = i3 + 24;
                            drawer.scaleY = 1.0f;
                            drawer.scaleX = 1.0f;
                            this._road.draw(drawer, false);
                            this._road.drawForeground(this.d);
                            this.d.end();
                        }
                    });
                }
                final Selector selector = new Selector(RoadInformation.this.translator.translate(1773), dialog.getContentPane(), arrayList);
                dialog.abuseFor(selector);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Selectable) it.next()).setOnSelect(new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.RoadInformation.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            selector.rebuild();
                        }
                    });
                }
                selector.focus((Selectable) arrayList.get(RoadInformation.this.road.bridgeType));
                dialog.addHiddenCancelButton();
            }
        };
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finishLast(Dialog dialog) {
        resolveScriptValue(this.draft, "finishInformationDialog", GUILibrary.wrapDialog(dialog));
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getPluginId() {
        return this.draft.pluginId;
    }
}
