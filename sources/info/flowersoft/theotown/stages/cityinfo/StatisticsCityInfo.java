package info.flowersoft.theotown.stages.cityinfo;

import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultStatistics;
import info.flowersoft.theotown.components.statistics.BuildingsItem;
import info.flowersoft.theotown.components.statistics.CarsItem;
import info.flowersoft.theotown.components.statistics.CommercialLvl1Item;
import info.flowersoft.theotown.components.statistics.CommercialLvl2Item;
import info.flowersoft.theotown.components.statistics.CommercialLvl3Item;
import info.flowersoft.theotown.components.statistics.EducationHighItem;
import info.flowersoft.theotown.components.statistics.EducationLowItem;
import info.flowersoft.theotown.components.statistics.EnergyNeedItem;
import info.flowersoft.theotown.components.statistics.EnergyProducedItem;
import info.flowersoft.theotown.components.statistics.HealthItem;
import info.flowersoft.theotown.components.statistics.IncomeItem;
import info.flowersoft.theotown.components.statistics.IndustrialLvl1Item;
import info.flowersoft.theotown.components.statistics.IndustrialLvl2Item;
import info.flowersoft.theotown.components.statistics.IndustrialLvl3Item;
import info.flowersoft.theotown.components.statistics.InhabitantsAllItem;
import info.flowersoft.theotown.components.statistics.InhabitantsLvl1Item;
import info.flowersoft.theotown.components.statistics.InhabitantsLvl2Item;
import info.flowersoft.theotown.components.statistics.InhabitantsLvl3Item;
import info.flowersoft.theotown.components.statistics.MoneyItem;
import info.flowersoft.theotown.components.statistics.RailsItem;
import info.flowersoft.theotown.components.statistics.ResidentialLvl1Item;
import info.flowersoft.theotown.components.statistics.ResidentialLvl2Item;
import info.flowersoft.theotown.components.statistics.ResidentialLvl3Item;
import info.flowersoft.theotown.components.statistics.RoadsItem;
import info.flowersoft.theotown.components.statistics.StatisticsItem;
import info.flowersoft.theotown.components.statistics.TSPassengersItem;
import info.flowersoft.theotown.components.statistics.WaterNeedItem;
import info.flowersoft.theotown.components.statistics.WaterProducedItem;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class StatisticsCityInfo extends CityInfo {
    public int actualMaxValue;
    public final List<List<Class<? extends StatisticsItem>>> collections;
    public int currentSet;
    public float dayRange;
    public Engine engine;
    public IntList indices;
    public int maxDay;
    public final int maxDayRange;
    public int maxValue;
    public int minDay;
    public final int minDayRange;
    public int minValue;
    public Class<? extends StatisticsItem> showItem;
    public DefaultStatistics statistics;

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 1626;
    }

    public static /* synthetic */ float access$232(StatisticsCityInfo statisticsCityInfo, float f) {
        float f2 = statisticsCityInfo.dayRange * f;
        statisticsCityInfo.dayRange = f2;
        return f2;
    }

    public static /* synthetic */ float access$240(StatisticsCityInfo statisticsCityInfo, float f) {
        float f2 = statisticsCityInfo.dayRange / f;
        statisticsCityInfo.dayRange = f2;
        return f2;
    }

    public StatisticsCityInfo() {
        this.minDayRange = 10;
        this.maxDayRange = 720000;
        this.currentSet = 0;
        this.dayRange = 90.0f;
        this.collections = new ArrayList();
        this.indices = new IntList();
        this.showItem = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends StatisticsItem> StatisticsCityInfo(Class<T> cls) {
        this.minDayRange = 10;
        this.maxDayRange = 720000;
        this.currentSet = 0;
        this.dayRange = 90.0f;
        this.collections = new ArrayList();
        this.indices = new IntList();
        this.showItem = cls;
    }

    public void collectItemTypes(City city) {
        this.collections.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(InhabitantsAllItem.class);
        arrayList.add(InhabitantsLvl1Item.class);
        arrayList.add(InhabitantsLvl2Item.class);
        arrayList.add(InhabitantsLvl3Item.class);
        this.collections.add(arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(ResidentialLvl1Item.class);
        arrayList2.add(ResidentialLvl2Item.class);
        arrayList2.add(ResidentialLvl3Item.class);
        arrayList2.add(CommercialLvl1Item.class);
        arrayList2.add(CommercialLvl2Item.class);
        arrayList2.add(CommercialLvl3Item.class);
        arrayList2.add(IndustrialLvl1Item.class);
        arrayList2.add(IndustrialLvl2Item.class);
        arrayList2.add(IndustrialLvl3Item.class);
        this.collections.add(arrayList2);
        if (!city.getGameMode().hasInfinityMoney()) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(MoneyItem.class);
            this.collections.add(arrayList3);
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add(IncomeItem.class);
            this.collections.add(arrayList4);
        }
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(EducationLowItem.class);
        arrayList5.add(EducationHighItem.class);
        arrayList5.add(HealthItem.class);
        this.collections.add(arrayList5);
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(BuildingsItem.class);
        arrayList6.add(RoadsItem.class);
        arrayList6.add(CarsItem.class);
        arrayList6.add(RailsItem.class);
        this.collections.add(arrayList6);
        ArrayList arrayList7 = new ArrayList();
        arrayList7.add(EnergyProducedItem.class);
        arrayList7.add(EnergyNeedItem.class);
        this.collections.add(arrayList7);
        ArrayList arrayList8 = new ArrayList();
        arrayList8.add(WaterProducedItem.class);
        arrayList8.add(WaterNeedItem.class);
        this.collections.add(arrayList8);
        ArrayList arrayList9 = new ArrayList();
        arrayList9.add(TSPassengersItem.class);
        this.collections.add(arrayList9);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_STATISTICS;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(2032);
    }

    public final void selectItem(Class<? extends StatisticsItem> cls) {
        for (int i = 0; i < this.collections.size(); i++) {
            List<Class<? extends StatisticsItem>> list = this.collections.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (cls.equals(list.get(i2))) {
                    this.currentSet = i;
                    return;
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        collectItemTypes(city);
        Class<? extends StatisticsItem> cls = this.showItem;
        if (cls != null) {
            selectItem(cls);
            this.showItem = null;
        }
        this.statistics = (DefaultStatistics) city.getComponent(17);
        this.engine = stapel2DGameContext.getEngine();
        final TranslationManager translator = stapel2DGameContext.getTranslator();
        final DraftLocalizer draftLocalizer = new DraftLocalizer(city);
        recalculate();
        Panel panel = new Panel(0, 0, gadget.getClientWidth(), gadget.getClientHeight() - 32, gadget) { // from class: info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                StatisticsCityInfo.this.engine.drawNinePatch(Resources.IMAGE_WORLD, i, i2, this.width, this.height, Resources.skin.npListBox);
                StatisticsCityInfo.this.drawGraphs(i + 1, i2 + 1, this.width - 2, this.height - 2);
                drawChildren(i, i2);
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public CursorType updateTouchInput(TouchUpdate touchUpdate) {
                CursorType cursorTypeUpdateTouchInput = super.updateTouchInput(touchUpdate);
                float scrollChange = touchUpdate.getScrollChange();
                touchUpdate.clearScrollChange();
                if (scrollChange != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    StatisticsCityInfo.access$232(StatisticsCityInfo.this, (float) Math.pow(1.2000000476837158d, scrollChange));
                    StatisticsCityInfo.this.recalculate();
                }
                return cursorTypeUpdateTouchInput;
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                TouchPoint touchPoint = this.tp;
                if (touchPoint == null || touchPoint.getXSpeed() == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    return;
                }
                StatisticsCityInfo.access$232(StatisticsCityInfo.this, (float) Math.pow(1.0049999952316284d, this.tp.getXSpeed()));
                StatisticsCityInfo.this.recalculate();
            }
        };
        int i = 30;
        int i2 = 30;
        new IconButton(Resources.ICON_PLUS, "", panel.getClientWidth() - 32, 2, i, i2, panel) { // from class: info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (isVisible()) {
                    super.onClick();
                    StatisticsCityInfo.access$240(StatisticsCityInfo.this, 2.0f);
                    StatisticsCityInfo.this.recalculate();
                }
            }

            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                this.icon.setAlpha(40);
                drawChildren(i3, i4);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return StatisticsCityInfo.this.dayRange > 10.0f;
            }
        }.addSensitiveKey(81);
        new IconButton(Resources.ICON_MINUS, "", panel.getClientWidth() - 32, 33, i, i2, panel) { // from class: info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.3
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (isVisible()) {
                    super.onClick();
                    StatisticsCityInfo.access$232(StatisticsCityInfo.this, 2.0f);
                    StatisticsCityInfo.this.recalculate();
                }
            }

            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                this.icon.setAlpha(40);
                drawChildren(i3, i4);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return StatisticsCityInfo.this.dayRange < 720000.0f;
            }
        }.addSensitiveKey(69);
        Panel panel2 = new Panel(0, gadget.getClientHeight() - 30, gadget.getClientWidth(), 30, gadget) { // from class: info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.4
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                drawChildren(i3, i4);
                int i5 = i3 + this.x;
                int i6 = i4 + this.y;
                int iRound = 0;
                int i7 = 0;
                for (int i8 = 0; i8 < StatisticsCityInfo.this.indices.size(); i8++) {
                    StatisticsItem item = StatisticsCityInfo.this.statistics.getItem(StatisticsCityInfo.this.indices.get(i8));
                    String name = item.getName(translator, draftLocalizer);
                    Font font = Resources.skin.fontSmall;
                    if (Math.round(font.getWidth(name)) + 7 + iRound >= getClientWidth() - 60) {
                        i7 += 15;
                        iRound = 0;
                    }
                    StatisticsCityInfo.this.engine.setColor(Colors.BLACK);
                    StatisticsCityInfo.this.engine.drawImage(Resources.IMAGE_WORLD, i5 + iRound, r9 + 3, 7.0f, 7.0f, Resources.FRAME_RECT);
                    StatisticsCityInfo.this.engine.setColor(item.getColor());
                    StatisticsCityInfo.this.engine.drawImage(Resources.IMAGE_WORLD, r8 + 1, r9 + 4, 5.0f, 5.0f, Resources.FRAME_RECT);
                    StatisticsCityInfo.this.engine.setColor(this.skin.cText);
                    StatisticsCityInfo.this.engine.drawText(font, name, i5 + r5, i6 + i7, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 15.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
                    iRound = iRound + 9 + Math.round(font.getWidth(name)) + 5;
                    StatisticsCityInfo.this.engine.setColor(Colors.WHITE);
                }
            }
        };
        int i3 = 30;
        int i4 = 30;
        int i5 = 0;
        new IconButton(Resources.ICON_NEXT, "", panel2.getClientWidth() - 30, i5, i3, i4, panel2) { // from class: info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                StatisticsCityInfo statisticsCityInfo = StatisticsCityInfo.this;
                statisticsCityInfo.currentSet = (statisticsCityInfo.currentSet + 1) % StatisticsCityInfo.this.collections.size();
                StatisticsCityInfo.this.recalculate();
            }
        };
        new IconButton(Resources.ICON_PREVIOUS, "", panel2.getClientWidth() - 61, i5, i3, i4, panel2) { // from class: info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.6
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                StatisticsCityInfo.this.currentSet = ((r0.currentSet + StatisticsCityInfo.this.collections.size()) - 1) % StatisticsCityInfo.this.collections.size();
                StatisticsCityInfo.this.recalculate();
            }
        };
    }

    public final void recalculate() {
        this.dayRange = MathUtils.clamp(this.dayRange, 10.0f, 720000.0f);
        this.minValue = 0;
        this.maxValue = 0;
        this.maxDay = Integer.MIN_VALUE;
        List<Class<? extends StatisticsItem>> list = this.collections.get(this.currentSet);
        this.indices.clear();
        for (int i = 0; i < list.size(); i++) {
            this.statistics.getItemIndices(list.get(i), this.indices);
        }
        for (int i2 = 0; i2 < this.indices.size(); i2++) {
            int i3 = this.indices.get(i2);
            int iCountEntries = this.statistics.countEntries(i3);
            if (iCountEntries > 0) {
                int i4 = iCountEntries - 1;
                int iMax = Math.max(this.statistics.getDay(i4, i3), this.maxDay);
                this.maxDay = iMax;
                this.minDay = iMax - ((int) this.dayRange);
                while (i4 >= 0) {
                    int day = this.statistics.getDay(i4, i3);
                    int value = this.statistics.getValue(i4, i3);
                    this.minValue = Math.min(value, this.minValue);
                    this.maxValue = Math.max(value, this.maxValue);
                    if (day < this.minDay) {
                        break;
                    } else {
                        i4--;
                    }
                }
            }
        }
        int i5 = this.maxValue;
        this.actualMaxValue = i5;
        int iMax2 = (Math.max(i5 - this.minValue, 1) + 9) / 10;
        this.maxValue += iMax2;
        this.minValue -= iMax2;
    }

    public final void drawGraphs(int i, int i2, int i3, int i4) {
        int i5;
        Font font = Resources.skin.fontSmall;
        int i6 = this.maxDay;
        int i7 = 120;
        boolean z = true;
        if (i6 > 0) {
            String str = "";
            if ((i3 * 30) / (i6 - this.minDay) > 20) {
                int i8 = (i6 / 30) * 30;
                while (true) {
                    if (i8 <= this.minDay || i8 < 0) {
                        break;
                    }
                    float f = i + ((i3 * (i8 - r9)) / (this.maxDay - r9));
                    this.engine.setColor(Colors.BLACK);
                    int i9 = (i8 / 30) % 12;
                    this.engine.setTransparency(i9 == 0 ? i7 : 30);
                    this.engine.drawImage(Resources.IMAGE_WORLD, f, i2, 1.0f, i4, Resources.FRAME_RECT);
                    this.engine.setColor(Colors.GRAY);
                    this.engine.setTransparency(255);
                    this.engine.drawText(font, str + (i9 + 1), f + 2.0f, i2 + i4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
                    i8 += -30;
                    str = str;
                    i7 = 120;
                    z = true;
                }
            } else {
                int i10 = 1;
                while (true) {
                    i5 = this.maxDay;
                    if (((i3 * 360) * i10) / (i5 - this.minDay) > 20) {
                        break;
                    } else {
                        i10 *= 5;
                    }
                }
                int i11 = ((i5 / i10) / 360) * i10 * 360;
                while (true) {
                    if (i11 <= this.minDay || i11 < 0) {
                        break;
                    }
                    float f2 = i + ((i3 * (i11 - r8)) / (this.maxDay - r8));
                    this.engine.setColor(Colors.BLACK);
                    int i12 = (i11 / 360) / i10;
                    this.engine.setTransparency(i12 % 5 == 0 ? 120 : 30);
                    this.engine.drawImage(Resources.IMAGE_WORLD, f2, i2, 1.0f, i4, Resources.FRAME_RECT);
                    this.engine.setColor(Colors.GRAY);
                    this.engine.setTransparency(255);
                    int i13 = i11;
                    this.engine.drawText(font, "" + (i12 * i10), f2 + 2.0f, i2 + i4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
                    i11 = i13 - (i10 * 360);
                }
            }
        }
        int i14 = 1;
        while (true) {
            int i15 = i14 * 10;
            if (this.maxValue - this.minValue <= i15) {
                break;
            } else {
                i14 = i15;
            }
        }
        this.engine.setColor(Colors.BLACK);
        int i16 = this.minValue;
        for (int i17 = i16 - (((i16 % i14) + i14) % i14); i17 < this.maxValue; i17 += i14) {
            this.engine.setTransparency((i17 / i14) % 5 == 0 ? 120 : 30);
            float f3 = i4;
            int i18 = this.minValue;
            float f4 = f3 - (((i17 - i18) * f3) / (this.maxValue - i18));
            if (f4 < f3 && f4 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                this.engine.drawImage(Resources.IMAGE_WORLD, i, i2 + f4, i3, 1.0f, Resources.FRAME_RECT);
            }
        }
        this.engine.setTransparency(255);
        this.engine.setColor(Colors.BLACK);
        this.engine.setTransparency(120);
        Engine engine = this.engine;
        Image image = Resources.IMAGE_WORLD;
        float f5 = i;
        float f6 = i2 + i4;
        float f7 = i4;
        int i19 = this.minValue;
        float f8 = i3;
        engine.drawImage(image, f5, f6 - (((0 - i19) * f7) / (this.maxValue - i19)), f8, 1.0f, Resources.FRAME_RECT);
        this.engine.setTransparency(255);
        this.engine.setColor(Colors.GRAY);
        float f9 = i + 2;
        this.engine.drawText(font, "0", f9, f6 + ((this.minValue * f7) / (this.maxValue - r1)), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        this.engine.drawText(font, StringFormatter.format("%,d", Integer.valueOf(this.actualMaxValue)), f9, i2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        for (int i20 = 0; i20 < this.indices.size(); i20++) {
            int i21 = this.indices.get(i20);
            StatisticsItem item = this.statistics.getItem(i21);
            int iCountEntries = this.statistics.countEntries(i21);
            if (iCountEntries > 1) {
                this.engine.setColor(item.getColor());
                int i22 = iCountEntries - 1;
                float f10 = 0.0f;
                float f11 = 0.0f;
                for (int i23 = i22; i23 >= 0; i23--) {
                    int day = this.statistics.getDay(i23, i21);
                    int value = this.statistics.getValue(i23, i21);
                    int i24 = this.minDay;
                    float f12 = f5 + (((day - i24) * f8) / (this.maxDay - i24));
                    int i25 = this.minValue;
                    float f13 = f6 - (((value - i25) * f7) / (this.maxValue - i25));
                    if (i23 < i22) {
                        if (f12 < f5) {
                            float f14 = (f5 - f12) / (f10 - f12);
                            f13 = ((1.0f - f14) * f13) + (f14 * f11);
                            f12 = f5;
                        }
                        float f15 = f13;
                        Drawing.getInstance().drawLine(f12, f15, f10, f11, 1.0f, this.engine);
                        f11 = f15;
                    } else {
                        f11 = f13;
                    }
                    f10 = f12;
                    if (day < this.minDay) {
                        break;
                    }
                }
            }
        }
        this.engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "StatisticsCityInfo";
    }

    public String toString() {
        return "Statistics";
    }
}
