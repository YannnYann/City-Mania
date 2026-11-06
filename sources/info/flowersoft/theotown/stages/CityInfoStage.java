package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultTSComponent;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.stages.cityinfo.AirportCityInfo;
import info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import info.flowersoft.theotown.stages.cityinfo.EducationCityInfo;
import info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo;
import info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo;
import info.flowersoft.theotown.stages.cityinfo.HealthCityInfo;
import info.flowersoft.theotown.stages.cityinfo.LoanCityInfo;
import info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo;
import info.flowersoft.theotown.stages.cityinfo.RCICityInfo;
import info.flowersoft.theotown.stages.cityinfo.RankCityInfo;
import info.flowersoft.theotown.stages.cityinfo.RatingCityInfo;
import info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo;
import info.flowersoft.theotown.stages.cityinfo.TSCityInfo;
import info.flowersoft.theotown.stages.cityinfo.WaterCityInfo;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.TextFrame;
import io.blueflower.stapel2d.key.KeyMapper;
import java.util.ArrayList;
import java.util.List;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class CityInfoStage extends BaseStage {
    public final City city;
    public Button cmdClose;
    public CityInfo currentCityInfo;
    public final List<CityInfo> infoList;

    public CityInfoStage(City city, Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        ArrayList arrayList = new ArrayList();
        this.infoList = arrayList;
        this.city = city;
        arrayList.add(new GeneralCityInfo());
        arrayList.add(new StatisticsCityInfo());
        if (!city.getGameMode().hasInfinityMoney()) {
            arrayList.add(new RankCityInfo());
        }
        arrayList.add(new RCICityInfo());
        arrayList.add(new RatingCityInfo());
        arrayList.add(new BudgetCityInfo());
        arrayList.add(new LoanCityInfo());
        arrayList.add(new EnergyCityInfo());
        arrayList.add(new WaterCityInfo());
        arrayList.add(new EducationCityInfo());
        arrayList.add(new HealthCityInfo());
        arrayList.add(new NeighborCityInfo());
        if (!((DefaultTSComponent) city.getComponent(22)).getSystems().isEmpty()) {
            arrayList.add(new TSCityInfo());
        }
        arrayList.add(new AirportCityInfo());
        filterDisabledInfos();
    }

    public final void filterDisabledInfos() {
        LuaValue luaValue = ScriptingEnvironment.getInstance().getGlobals().get("City");
        if (luaValue.istable()) {
            LuaValue luaValue2 = luaValue.get("disabledCityInfos");
            if (luaValue2.istable()) {
                LuaTable luaTableChecktable = luaValue2.checktable();
                for (int i = 1; i <= luaTableChecktable.length(); i++) {
                    String strOptjstring = luaTableChecktable.get(i).optjstring("");
                    if (!strOptjstring.isEmpty()) {
                        int i2 = 0;
                        while (i2 < this.infoList.size()) {
                            if (strOptjstring.equals(this.infoList.get(i2).getTag())) {
                                this.infoList.remove(i2);
                                i2--;
                            }
                            i2++;
                        }
                    }
                }
            }
        }
    }

    public void selectCityInfo(CityInfo cityInfo) {
        for (int i = 0; i < this.infoList.size(); i++) {
            if (this.infoList.get(i).equals(cityInfo)) {
                this.infoList.set(i, cityInfo);
                this.currentCityInfo = cityInfo;
                return;
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        int i;
        CityInfo cityInfo;
        int i2;
        Gadget gadget;
        Button button;
        CityInfoStage cityInfoStage = this;
        super.enter();
        if (cityInfoStage.currentCityInfo == null) {
            cityInfoStage.getGameStack().pop();
            return;
        }
        int iMin = Math.min(cityInfoStage.gui.getClientWidth(), 600);
        int iMin2 = Math.min(cityInfoStage.gui.getClientHeight(), Math.min(500, cityInfoStage.gui.getClientHeight()));
        final int iIndexOf = cityInfoStage.infoList.indexOf(cityInfoStage.currentCityInfo);
        Gadget gadget2 = new Gadget(cityInfoStage.gui.getPaddingLeft() + ((cityInfoStage.gui.getClientWidth() - iMin) / 2), cityInfoStage.gui.getPaddingTop() + ((cityInfoStage.gui.getClientHeight() - iMin2) / 2), iMin, iMin2, new Panel(-cityInfoStage.gui.getPaddingLeft(), -cityInfoStage.gui.getPaddingTop(), cityInfoStage.gui.getWidth(), cityInfoStage.gui.getHeight(), cityInfoStage.gui) { // from class: info.flowersoft.theotown.stages.CityInfoStage.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                drawChildren(i3, i4);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                CityInfoStage.this.cmdClose.click();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void updateKeyInput(KeyMapper keyMapper) {
                super.updateKeyInput(keyMapper);
                if (keyMapper.keyRepeatedHit(61)) {
                    if (keyMapper.keyDown(59) || keyMapper.keyDown(60)) {
                        CityInfoStage cityInfoStage2 = CityInfoStage.this;
                        cityInfoStage2.currentCityInfo = (CityInfo) cityInfoStage2.infoList.get(((iIndexOf + CityInfoStage.this.infoList.size()) - 1) % CityInfoStage.this.infoList.size());
                    } else {
                        CityInfoStage cityInfoStage3 = CityInfoStage.this;
                        cityInfoStage3.currentCityInfo = (CityInfo) cityInfoStage3.infoList.get((iIndexOf + 1) % CityInfoStage.this.infoList.size());
                    }
                    CityInfoStage.this.getGameStack().refreshCurrentStage();
                }
            }
        }) { // from class: info.flowersoft.theotown.stages.CityInfoStage.2
        };
        int i3 = iMin - 30;
        int i4 = i3 / 28;
        int size = ((cityInfoStage.infoList.size() + i4) - 1) / i4;
        ArrayList arrayList = new ArrayList();
        Button button2 = null;
        int i5 = 0;
        while (i5 < cityInfoStage.infoList.size()) {
            final CityInfo cityInfo2 = cityInfoStage.infoList.get(i5);
            int i6 = (i5 % i4) * 28;
            int i7 = i6 + 2;
            int i8 = ((size - 1) - (i5 / i4)) * 30;
            if (cityInfo2.equals(cityInfoStage.currentCityInfo)) {
                button2 = new Button(i7, i8, 32, 42, gadget2) { // from class: info.flowersoft.theotown.stages.CityInfoStage.3
                    @Override // io.blueflower.stapel2d.gui.Button
                    public boolean isPressed() {
                        return true;
                    }
                };
                cityInfo = cityInfo2;
                i = i5;
                i2 = iMin;
                gadget = gadget2;
                button = button2;
            } else {
                i = i5;
                Button button3 = new Button(i6 + 3, i8 + 2, 30, 40, gadget2) { // from class: info.flowersoft.theotown.stages.CityInfoStage.4
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        CityInfoStage.this.currentCityInfo = cityInfo2;
                        CityInfoStage.this.getGameStack().refreshCurrentStage();
                    }

                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i9, int i10) {
                        super.draw(i9, i10);
                    }
                };
                cityInfo = cityInfo2;
                i2 = iMin;
                gadget = gadget2;
                button3.setId("cmd" + cityInfo.toString());
                button = button3;
            }
            arrayList.add(button);
            CityInfo cityInfo3 = cityInfo;
            cityInfoStage = this;
            Gadget gadget3 = new Gadget((button.getClientWidth() - 30) / 2, 0, 30, 30, button) { // from class: info.flowersoft.theotown.stages.CityInfoStage.5
                @Override // io.blueflower.stapel2d.gui.Gadget
                public void draw(int i9, int i10) {
                    drawChildren(i9, i10);
                }
            };
            City city = cityInfoStage.city;
            cityInfo3.createIcon(city, gadget3, cityInfo3.isAvailable(city));
            gadget2 = gadget;
            iMin = i2;
            i5 = i + 1;
        }
        int i9 = iMin;
        Gadget gadget4 = gadget2;
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((Button) arrayList.get(size2)).push();
        }
        if (button2 != null) {
            button2.push();
        }
        int i10 = 30 * size;
        Panel panel = new Panel(0, i10, i9, Math.min(iMin2 - i10, cityInfoStage.gui.getClientHeight() - i10), gadget4);
        panel.setPadding(0);
        Button button4 = new Button(i3, 0, 30, 30, gadget4) { // from class: info.flowersoft.theotown.stages.CityInfoStage.6
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                CityInfoStage.this.getGameStack().pop();
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i11, int i12) {
                Engine engine = this.skin.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_RED);
                }
                if (isPressed()) {
                    engine.setColor(Colors.RED);
                }
                engine.drawImage(Resources.IMAGE_WORLD, i11 + this.x, i12 + this.y, this.width, this.height, 0.5f, 0.5f, this.skin.fCloseButton);
                engine.setColor(color);
            }
        };
        cityInfoStage.cmdClose = button4;
        button4.setId("cmdClose");
        Label label = new Label(cityInfoStage.translator.translate(cityInfoStage.currentCityInfo.getTitleId(cityInfoStage.city)), 0, 0, panel.getClientWidth(), 28, panel);
        label.setFont(cityInfoStage.gui.getSkin().fontBig);
        label.setAlignment(0.5f, 0.5f);
        if (!cityInfoStage.currentCityInfo.getHelpText(cityInfoStage.city).isEmpty()) {
            new IconButton(Resources.ICON_INFO, "", panel.getClientWidth() - 30, 0, 30, 28, panel) { // from class: info.flowersoft.theotown.stages.CityInfoStage.7
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    int i11 = Resources.PEOPLE_MAYOR;
                    CityInfoStage cityInfoStage2 = CityInfoStage.this;
                    Dialog dialog = new Dialog(i11, cityInfoStage2.translator.translate(cityInfoStage2.currentCityInfo.getTitleId(CityInfoStage.this.city)), CityInfoStage.this.currentCityInfo.getHelpText(CityInfoStage.this.city), 300, 300, CityInfoStage.this.gui);
                    GoldButton goldButtonAddCancelButton = dialog.addCancelButton(Resources.ICON_OK, CityInfoStage.this.translator.translate(1899));
                    goldButtonAddCancelButton.setGolden(true);
                    goldButtonAddCancelButton.addSensitiveKey(66);
                    dialog.setVisible(true);
                }

                @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i11, int i12) {
                    drawChildren(i11, i12);
                }
            };
        }
        Panel panel2 = new Panel(2, 28, panel.getClientWidth() - 4, panel.getClientHeight() - 30, panel) { // from class: info.flowersoft.theotown.stages.CityInfoStage.8
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i11, int i12) {
                drawChildren(i11, i12);
            }
        };
        if (this.currentCityInfo.isAvailable(this.city)) {
            this.currentCityInfo.build(this.city, panel2, this.context, getGameStack());
        } else {
            new TextFrame(this.translator.translate(2382), 0, 0, panel2.getClientWidth(), panel2.getClientHeight(), panel2).setAlignment(0.5f, 0.5f);
        }
        Tutorial tutorial = Tutorial.getInstance();
        Master master = this.gui;
        tutorial.setGUI(master, master);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        if (isDialogOpen()) {
            super.onBack();
        } else {
            this.cmdClose.click();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
    }

    public String toString() {
        return "CityInfoStage";
    }
}
