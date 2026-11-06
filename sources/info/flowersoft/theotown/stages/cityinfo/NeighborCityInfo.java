package info.flowersoft.theotown.stages.cityinfo;

import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.neighbors.RealNeighborCity;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class NeighborCityInfo extends ListBasedCityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 1385;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public boolean isAvailable(City city) {
        return !city.isReadonly();
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_NEIGHBORHOOD_COMMERCIAL;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(957);
    }

    public final void indicateAchievement() {
        TheoTown.gamesService.unlockAchievement("neighborhood_commercial_init");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        char c;
        long inhabitants;
        ArrayList arrayList;
        String[] strArr;
        long inhabitants2;
        boolean z;
        final boolean z2;
        NeighborCityInfo neighborCityInfo = this;
        final City city2 = city;
        char c2 = 1;
        super.build(city, gadget, stapel2DGameContext, gameStack);
        DefaultPower defaultPower = (DefaultPower) city2.getComponent(5);
        DefaultWater defaultWater = (DefaultWater) city2.getComponent(8);
        char c3 = 0;
        final DefaultBudget defaultBudget = (DefaultBudget) city2.getComponent(0);
        CoverageCalculator coverageCalculator = ((DefaultManagement) city2.getComponent(3)).getCoverageCalculator();
        boolean z3 = !city2.isReadonly();
        TranslationManager translator = stapel2DGameContext.getTranslator();
        int iMax = Math.max(defaultPower.nativeAvailablePower() - defaultPower.nativeConsumedPower(), 0);
        long jMax = Math.max(defaultWater.nativeAvailableWater() - defaultWater.nativeConsumedWater(), 0L);
        int iMax2 = Math.max(coverageCalculator.getNativeProvidedAmount(3) - coverageCalculator.getNativeNeededAmount(3), 0);
        int iMax3 = Math.max(coverageCalculator.getNativeProvidedAmount(4) - coverageCalculator.getNativeNeededAmount(4), 0);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < city2.countNeighbors(); i++) {
            NeighborCity neighbor = city2.getNeighbor(i);
            if (neighbor != null && neighbor.isCreated() && neighbor.isDirect()) {
                arrayList2.add(neighbor);
            }
        }
        if (arrayList2.isEmpty()) {
            neighborCityInfo.listBox.addItem(new ListItem(translator.translate(3092)));
            return;
        }
        String[] strArr2 = {translator.translate(2347), translator.translate(2072), translator.translate(2075), translator.translate(2353)};
        int i2 = 0;
        while (i2 < arrayList2.size()) {
            final NeighborCity neighborCity = (NeighborCity) arrayList2.get(i2);
            final TradingRelation tradingRelation = neighborCity.getTradingRelation();
            String dirName = getDirName(city2, neighborCity, strArr2);
            boolean zHasInfinityMoney = neighborCity.hasInfinityMoney();
            if (zHasInfinityMoney) {
                c = c2;
                inhabitants = Long.MAX_VALUE;
            } else {
                c = c2;
                inhabitants = (((long) neighborCity.getInhabitants()) * 2) + 500;
            }
            if (zHasInfinityMoney) {
                arrayList = arrayList2;
                strArr = strArr2;
                inhabitants2 = Long.MAX_VALUE;
            } else {
                arrayList = arrayList2;
                strArr = strArr2;
                inhabitants2 = (((long) neighborCity.getInhabitants()) * 4) + 500;
            }
            long inhabitants3 = zHasInfinityMoney ? Long.MAX_VALUE : (((long) neighborCity.getInhabitants()) * 4) + 500;
            long inhabitants4 = zHasInfinityMoney ? Long.MAX_VALUE : (((long) neighborCity.getInhabitants()) / 2) + 500;
            if ((neighborCity.hasPowerConnection() && checkAnyPowerConnection(city)) || neighborCityInfo.checkPowerConnection(city2, neighborCity)) {
                z = z3;
                z2 = c;
            } else {
                z = z3;
                z2 = c3;
            }
            char c4 = ((neighborCity.hasWaterConnection() && checkAnyWaterConnection(city)) || neighborCityInfo.checkWaterConnection(city2, neighborCity)) ? c : c3;
            char c5 = ((neighborCity.hasRoadConnection() && checkAnyRoadConnection(city)) || neighborCityInfo.checkRoadConnection(city2, neighborCity)) ? c : c3;
            char c6 = (neighborCity.canTrade() && neighborCity.hasInfinityMoney() == city2.getGameMode().hasInfinityMoney() && (!city2.isOnline() || neighborCity.getOwnerId() == city2.getAuthorId())) ? c : (char) 0;
            boolean zHasInfinityMoney2 = city2.getGameMode().hasInfinityMoney();
            final int i3 = iMax;
            String name = city2.getName();
            boolean z4 = z;
            StringBuilder sb = new StringBuilder();
            final boolean z5 = c6;
            sb.append(neighborCity.getName());
            sb.append(" (");
            sb.append(dirName);
            sb.append(")");
            neighborCityInfo.addClickableCategory(new String[]{name, " <-> ", sb.toString()}, 0, (Runnable) null);
            final TranslationManager translationManager = translator;
            int i4 = i2;
            final long j = inhabitants;
            TradingItem tradingItem = new TradingItem() { // from class: info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public int getIcon() {
                    return Resources.ICON_ENERGY;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String getName() {
                    return translationManager.translate(2350);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public boolean canBeTraded() {
                    return z5 && z2;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMaxAmount() {
                    return Math.min(i3, j);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMinAmount() {
                    return -neighborCity.getAvailablePower();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getAmount() {
                    return tradingRelation.getEnergyExport();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public void setAmount(long j2) {
                    tradingRelation.setEnergyExport(j2);
                    if (j2 == 0 || !city2.canAchieve()) {
                        return;
                    }
                    NeighborCityInfo.this.indicateAchievement();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String localizeAmount(long j2) {
                    return StringFormatter.format(translationManager.translate(10), Long.valueOf(j2));
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getPrice(long j2) {
                    return (int) defaultBudget.getPowerTradingPrice(neighborCity, j2);
                }
            };
            neighborCityInfo = this;
            final boolean z6 = c4;
            final long j2 = jMax;
            final DefaultBudget defaultBudget2 = defaultBudget;
            final long j3 = inhabitants2;
            TradingItem tradingItem2 = new TradingItem() { // from class: info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public int getIcon() {
                    return Resources.ICON_WATER;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String getName() {
                    return translationManager.translate(1050);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public boolean canBeTraded() {
                    return z5 && z6;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMaxAmount() {
                    return Math.min(j2, j3);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMinAmount() {
                    return -neighborCity.getAvailableWater();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getAmount() {
                    return tradingRelation.getWaterExport();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public void setAmount(long j4) {
                    tradingRelation.setWaterExport(j4);
                    if (j4 == 0 || !city.canAchieve()) {
                        return;
                    }
                    NeighborCityInfo.this.indicateAchievement();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String localizeAmount(long j4) {
                    return StringFormatter.format(translationManager.translate(417), Long.valueOf(j4));
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getPrice(long j4) {
                    return (int) defaultBudget2.getWaterTradingPrice(neighborCity, j4);
                }
            };
            defaultBudget = defaultBudget2;
            final int i5 = iMax2;
            final boolean z7 = c5;
            final long j4 = inhabitants3;
            TradingItem tradingItem3 = new TradingItem() { // from class: info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public int getIcon() {
                    return Resources.ICON_WASTE_DISPOSAL;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String getName() {
                    return translationManager.translate(2120);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public boolean canBeTraded() {
                    return z5 && z7;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMaxAmount() {
                    return Math.min(i5, j4);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMinAmount() {
                    return -neighborCity.getAvailableWasteDisposal();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getAmount() {
                    return tradingRelation.getWasteDisposalExport();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public void setAmount(long j5) {
                    tradingRelation.setWasteDisposalExport((int) j5);
                    if (j5 == 0 || !city.canAchieve()) {
                        return;
                    }
                    NeighborCityInfo.this.indicateAchievement();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String localizeAmount(long j5) {
                    return StringFormatter.format(translationManager.translate(762), Long.valueOf(j5));
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getPrice(long j5) {
                    return (int) defaultBudget.getWasteDisposalTradingPrice(neighborCity, j5);
                }
            };
            final int i6 = iMax3;
            final long j5 = inhabitants4;
            TradingItem tradingItem4 = new TradingItem() { // from class: info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public int getIcon() {
                    return Resources.ICON_BODY_DISPOSAL;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String getName() {
                    return translationManager.translate(2461);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public boolean canBeTraded() {
                    return z5 && z7;
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMaxAmount() {
                    return Math.min(i6, j5);
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getMinAmount() {
                    return -neighborCity.getAvailableBodyDisposal();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getAmount() {
                    return tradingRelation.getBodyDisposalExport();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public void setAmount(long j6) {
                    tradingRelation.setBodyDisposalExport((int) j6);
                    if (j6 == 0 || !city.canAchieve()) {
                        return;
                    }
                    NeighborCityInfo.this.indicateAchievement();
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public String localizeAmount(long j6) {
                    return StringFormatter.format(translationManager.translate(640), Long.valueOf(j6));
                }

                @Override // info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem
                public long getPrice(long j6) {
                    return (int) defaultBudget.getBodyDisposalTradingPrice(neighborCity, j6);
                }
            };
            TradingItem[] tradingItemArr = new TradingItem[4];
            tradingItemArr[0] = tradingItem;
            tradingItemArr[c] = tradingItem2;
            tradingItemArr[2] = tradingItem3;
            tradingItemArr[3] = tradingItem4;
            for (int i7 = 0; i7 < 4; i7++) {
                TradingItem tradingItem5 = tradingItemArr[i7];
                if (tradingItem5.canBeTraded()) {
                    tradingItem5.setAmount(MathUtils.clamp(tradingItem5.getAmount(), tradingItem5.getMinAmount(), tradingItem5.getMaxAmount()));
                } else {
                    tradingItem5.setAmount(0L);
                }
                neighborCityInfo.listBox.addItem(new TradingListItem(tradingItem5, translationManager, z4, zHasInfinityMoney2));
            }
            if (i4 < arrayList.size() - 1) {
                neighborCityInfo.addSeparator();
            }
            i2 = i4 + 1;
            city2 = city;
            iMax3 = i6;
            z3 = z4;
            iMax2 = i5;
            iMax = i3;
            c3 = 0;
            c2 = c;
            strArr2 = strArr;
            jMax = j2;
            translator = translationManager;
            arrayList2 = arrayList;
        }
    }

    public static String getDirName(City city, NeighborCity neighborCity, String[] strArr) {
        if (neighborCity instanceof RealNeighborCity) {
            RealNeighborCity realNeighborCity = (RealNeighborCity) neighborCity;
            int x = (realNeighborCity.getX() + (realNeighborCity.getWidth() / 2)) - (city.getWidth() / 2);
            int y = (realNeighborCity.getY() + (realNeighborCity.getHeight() / 2)) - (city.getHeight() / 2);
            if (Math.abs(x) > Math.abs(y)) {
                y = 0;
            } else {
                x = 0;
            }
            return strArr[Direction.toIndex(Direction.fromDifferential(x, y))];
        }
        return "Far away";
    }

    public final boolean checkAnyPowerConnection(City city) {
        return city.getWires().getConnectionSize() > 0;
    }

    public final boolean checkAnyWaterConnection(City city) {
        return city.getPipes().getConnectionSize() > 0;
    }

    public final boolean checkAnyRoadConnection(City city) {
        return city.getRoads().getConnectionSize() > 0;
    }

    public final boolean checkPowerConnection(City city, NeighborCity neighborCity) {
        for (int i = 0; i < city.getWires().getConnectionSize(); i++) {
            Wire connection = city.getWires().getConnection(i);
            if (connection.hasConnection()) {
                int connectionDir = connection.getConnectionDir();
                if (neighborCity.contains(connection.getX() + Direction.differenceX(connectionDir), connection.getY() + Direction.differenceY(connectionDir))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean checkWaterConnection(City city, NeighborCity neighborCity) {
        for (int i = 0; i < city.getPipes().getConnectionSize(); i++) {
            Pipe connection = city.getPipes().getConnection(i);
            if (connection.hasConnection()) {
                int connectionDir = connection.getConnectionDir();
                if (neighborCity.contains(connection.getX() + Direction.differenceX(connectionDir), connection.getY() + Direction.differenceY(connectionDir))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean checkRoadConnection(City city, NeighborCity neighborCity) {
        for (int i = 0; i < city.getRoads().getConnectionSize(); i++) {
            Road connection = city.getRoads().getConnection(i);
            if (connection.hasConnection()) {
                int connectionDir = connection.getConnectionDir();
                if (neighborCity.contains(connection.getX() + Direction.differenceX(connectionDir), connection.getY() + Direction.differenceY(connectionDir))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static abstract class TradingItem {
        public abstract boolean canBeTraded();

        public abstract long getAmount();

        public abstract int getIcon();

        public abstract long getMaxAmount();

        public abstract long getMinAmount();

        public abstract String getName();

        public abstract long getPrice(long j);

        public int getStep() {
            return 500;
        }

        public abstract String localizeAmount(long j);

        public abstract void setAmount(long j);

        public TradingItem() {
        }
    }

    public static class TradingListItem extends ListItem {
        public int amountWidth;
        public final boolean editable;
        public final boolean infiniteMoney;
        public final TradingItem item;
        public int maxX;
        public int minX;
        public final Translator translator;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 20;
        }

        public TradingListItem(TradingItem tradingItem, Translator translator, boolean z, boolean z2) {
            super("");
            this.item = tradingItem;
            this.translator = translator;
            this.editable = z;
            this.infiniteMoney = z2;
            if (tradingItem.canBeTraded()) {
                return;
            }
            tradingItem.setAmount(0L);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            Color color;
            Engine engine;
            long j;
            long j2;
            float f;
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Engine engine2 = skin.engine;
            Color color2 = Colors.WHITE;
            engine2.setColor(color2);
            engine2.setScale(0.5f, 0.5f);
            float f2 = i3;
            engine2.drawImage(Resources.IMAGE_WORLD, i2, f2, 20.0f, 20.0f, 0.5f, 0.5f, this.item.getIcon());
            engine2.setScale(1.0f, 1.0f);
            engine2.setColor(skin.cText);
            String name = this.item.getName();
            float f3 = i5;
            engine2.drawText(skin.fontDefault, name, i2 + 20, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            this.minX = ((Math.round(skin.fontDefault.getWidth(name)) / 10) * 10) + 20;
            if (this.item.canBeTraded()) {
                long amount = this.item.getAmount();
                long minAmount = this.item.getMinAmount();
                long maxAmount = this.item.getMaxAmount();
                long j3 = -this.item.getPrice(amount);
                if (this.infiniteMoney) {
                    j = minAmount;
                    j2 = maxAmount;
                    f = f3;
                } else {
                    String strLocalizeMoney = Localizer.localizeMoney(j3);
                    this.maxX = (i4 - Math.round(skin.fontDefault.getWidth(strLocalizeMoney))) - 2;
                    engine2.setColor(j3 >= 0 ? skin.cTextGreen : skin.cTextRed);
                    j = minAmount;
                    f = f3;
                    j2 = maxAmount;
                    engine2.drawText(skin.fontDefault, strLocalizeMoney, (this.maxX + i2) - 8, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
                }
                this.minX = 50;
                this.maxX = i4 - 30;
                String strLocalizeAmount = this.item.localizeAmount(-amount);
                engine2.setColor(skin.cText);
                engine2.drawText(skin.fontDefault, strLocalizeAmount, ((this.minX + this.maxX) / 2) + i2, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, 0.5f, 0.5f);
                this.amountWidth = Math.round(skin.fontDefault.getWidth(strLocalizeAmount)) + 8;
                if (this.editable) {
                    engine2.setColor(amount > j ? skin.cTextAccent : skin.cTextSecondary);
                    engine2.drawText(skin.fontSmall, "<-" + this.translator.translate(1310) + "(" + this.item.localizeAmount(-j) + ")", (((this.minX + this.maxX) / 2) + i2) - (this.amountWidth / 2), f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, 1.0f, 0.5f);
                    long j4 = j2;
                    engine2.setColor(amount < j4 ? skin.cTextAccent : skin.cTextSecondary);
                    engine = engine2;
                    color = color2;
                    engine.drawText(skin.fontSmall, this.translator.translate(204) + "(" + this.item.localizeAmount(-j4) + ")->", i2 + ((this.minX + this.maxX) / 2) + (this.amountWidth / 2), f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
                } else {
                    color = color2;
                    engine2.setColor(color);
                }
            } else {
                color = color2;
                engine2.setColor(skin.cTextSecondary);
                Font font = skin.fontDefault;
                String strTranslate = this.translator.translate(3389);
                int i6 = this.minX;
                engine = engine2;
                engine.drawText(font, strTranslate, (i2 + i6) - 8, f2, i4 - i6, f3, 1.0f, 0.5f);
            }
            engine2 = engine;
            engine2.setColor(color);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            long jMin;
            if (this.editable) {
                long minAmount = this.item.getMinAmount();
                long maxAmount = this.item.getMaxAmount();
                long amount = this.item.getAmount();
                int step = this.item.getStep();
                int i3 = this.minX;
                if (i >= i3 && i <= ((this.maxX + i3) / 2) - (this.amountWidth / 2)) {
                    long j = step;
                    long j2 = amount - j;
                    if (j2 > 0) {
                        j2 = (((j2 + j) - 1) / j) * j;
                    }
                    jMin = Math.max(j2, minAmount);
                } else {
                    int i4 = this.maxX;
                    if (i < ((i3 + i4) / 2) + (this.amountWidth / 2) || i >= i4) {
                        jMin = amount;
                    } else {
                        long j3 = step;
                        long j4 = amount + j3;
                        if (j4 < 0) {
                            j4 = ((-(((-j4) + j3) - 1)) / j3) * j3;
                        }
                        jMin = Math.min(j4, maxAmount);
                    }
                }
                this.item.setAmount(jMin);
                if (jMin != amount) {
                    playClickSound();
                }
            }
        }

        public final void playClickSound() {
            SoundPlayer.getInstance().play(Resources.SOUND_CLICK, SoundType.UI);
        }
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "NeighborCityInfo";
    }

    public String toString() {
        return "Neighbor";
    }
}
