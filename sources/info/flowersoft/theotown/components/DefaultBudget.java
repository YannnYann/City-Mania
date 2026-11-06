package info.flowersoft.theotown.components;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3670j8;
import com.ironsource.mediationsdk.demandOnly.e;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingList;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.RoadList;
import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.Loan;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.airport.Airplane;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultBudget extends CityComponent {
    public static final int[] BUILDING_INCOME = {20, 50, 200, 20, 50, 200, 20, 50, 200};
    public static final float[] INCOME_GAMEMODE_FACTOR = {1.0f, 1.0f, 1.0f};
    public long addedForDay;
    public final JSONObject beginnerConfig;
    public final JSONObject budgetConfig;
    public final long[] budgetItemAccumulatorEarned;
    public final long[] budgetItemAccumulatorSpent;
    public final int[] budgetItemBase;
    public final long[] budgetItemBuildingsEarned;
    public final long[] budgetItemBuildingsSpent;
    public final long[][] budgetItemHistoryEarned;
    public final long[][] budgetItemHistorySpent;
    public final long[] budgetItemRoadsSpent;
    public final List<Draft> budgetItems;
    public double carry;
    public DefaultDate date;
    public long dayTarget;
    public boolean doubleIncome;
    public long estateRaw;
    public double expectedMonthlyIncome;
    public final JSONObject gameModePriceFactors;
    public double lastMonthlyIncome;
    public final List<Loan> loanList;
    public final List<BudgetLog> log;
    public double monthlyIncome;
    public double nextMonthlyIncome;
    public final List<PlacedPrice> placedPrices;
    public final float[] taxFactor;
    public final List<TaxModification> taxModifications;
    public final int[] taxes;

    public long getPriceForTerrain(boolean z) {
        return 1000L;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 0;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextMonth() {
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextYear() {
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.components.DefaultBudget$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$city$GameMode;

        static {
            int[] iArr = new int[GameMode.values().length];
            $SwitchMap$info$flowersoft$theotown$city$GameMode = iArr;
            try {
                iArr[GameMode.HARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.MIDDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.EASY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.SANDBOX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.NOLOGIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public final float getGameModePriceFactor() {
        double dOptDouble;
        int i = AnonymousClass2.$SwitchMap$info$flowersoft$theotown$city$GameMode[this.city.getGameMode().ordinal()];
        if (i == 1) {
            dOptDouble = this.gameModePriceFactors.optDouble("hard", 1.0d);
        } else if (i == 2) {
            dOptDouble = this.gameModePriceFactors.optDouble("medium", 1.0d);
        } else {
            dOptDouble = this.gameModePriceFactors.optDouble("easy", 1.0d);
        }
        return (float) dOptDouble;
    }

    public final float getBuildingPriceFactor() {
        return getGameModePriceFactor() * 0.2f;
    }

    public final float getRoadPriceFactor() {
        return getGameModePriceFactor() * 0.001f;
    }

    public final float getZonePriceFactor() {
        return getGameModePriceFactor() * 0.0025f;
    }

    public final float getAirplanePriceFactorPriceFactor() {
        return getGameModePriceFactor() * 0.1f;
    }

    public DefaultBudget() {
        this.budgetConfig = Resources.getSpecificConfig("budget");
        this.beginnerConfig = Resources.getSpecificConfig("beginner");
        this.gameModePriceFactors = Resources.getSpecificConfig("game mode price factor");
        List<Draft> draftsWithTag = Drafts.getDraftsWithTag("budget item", Draft.class);
        this.budgetItems = draftsWithTag;
        int[] iArr = {draftsWithTag.size(), 30};
        int i = 0;
        Class cls = Long.TYPE;
        this.budgetItemHistoryEarned = (long[][]) Array.newInstance((Class<?>) cls, iArr);
        this.budgetItemHistorySpent = (long[][]) Array.newInstance((Class<?>) cls, draftsWithTag.size(), 30);
        this.budgetItemBase = new int[draftsWithTag.size()];
        this.budgetItemAccumulatorEarned = new long[draftsWithTag.size()];
        this.budgetItemAccumulatorSpent = new long[draftsWithTag.size()];
        this.budgetItemBuildingsEarned = new long[draftsWithTag.size()];
        this.budgetItemBuildingsSpent = new long[draftsWithTag.size()];
        this.budgetItemRoadsSpent = new long[draftsWithTag.size()];
        this.monthlyIncome = -2.147483648E9d;
        this.nextMonthlyIncome = -2.147483648E9d;
        this.lastMonthlyIncome = -2.147483648E9d;
        this.expectedMonthlyIncome = -2.147483648E9d;
        this.taxModifications = new ArrayList();
        this.log = new ArrayList();
        for (int i2 = 0; i2 < this.budgetItems.size(); i2++) {
            this.budgetItems.get(i2).ordinal = i2;
        }
        this.carry = 0.0d;
        this.taxes = new int[9];
        this.taxFactor = new float[9];
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.taxes;
            if (i3 >= iArr2.length) {
                break;
            }
            iArr2[i3] = 70;
            this.taxFactor[i3] = 1.0f;
            i3++;
        }
        this.placedPrices = new ArrayList();
        this.loanList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = this.budgetConfig.optJSONArray("building income");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() >= BUILDING_INCOME.length) {
            int i4 = 0;
            while (true) {
                int[] iArr3 = BUILDING_INCOME;
                if (i4 >= iArr3.length) {
                    break;
                }
                iArr3[i4] = jSONArrayOptJSONArray.optInt(i4, iArr3[i4]);
                i4++;
            }
        }
        JSONArray jSONArrayOptJSONArray2 = this.budgetConfig.optJSONArray("income gamemode factor");
        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() >= INCOME_GAMEMODE_FACTOR.length) {
            while (true) {
                float[] fArr = INCOME_GAMEMODE_FACTOR;
                if (i >= fArr.length) {
                    break;
                }
                fArr[i] = (float) jSONArrayOptJSONArray2.optDouble(i, fArr[i]);
                i++;
            }
        }
        setEstate(0.0d);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0101 A[LOOP:9: B:52:0x00fb->B:54:0x0101, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DefaultBudget(io.blueflower.stapel2d.util.json.JsonReader r9) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.DefaultBudget.<init>(io.blueflower.stapel2d.util.json.JsonReader):void");
    }

    public DefaultBudget(int i) {
        this();
        setEstate(i);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.date = (DefaultDate) city.getComponent(1);
        addWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.DefaultBudget.1
            @Override // java.lang.Runnable
            public void run() {
                DefaultBudget.this.nextMonthlyIncome = r0.calculateMonthlyIncome();
            }
        }));
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void finishPrepare() {
        super.finishPrepare();
        nextDay();
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("estate").value(getEstate());
        for (int i = 0; i < this.taxes.length; i++) {
            jsonWriter.name("tax " + i).value(this.taxes[i]);
        }
        jsonWriter.name("loans").beginArray();
        for (Loan loan : this.loanList) {
            jsonWriter.beginObject();
            loan.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("budget items").beginArray();
        for (int i2 = 0; i2 < this.budgetItems.size(); i2++) {
            Draft draft = this.budgetItems.get(i2);
            jsonWriter.beginObject();
            jsonWriter.name(C3670j8.x).value(draft.id);
            jsonWriter.name("history").beginArray();
            int i3 = 0;
            while (true) {
                long[] jArr = this.budgetItemHistoryEarned[i2];
                if (i3 < jArr.length) {
                    jsonWriter.value(jArr[(this.budgetItemBase[i2] + i3) % jArr.length]);
                    long[] jArr2 = this.budgetItemHistorySpent[i2];
                    jsonWriter.value(jArr2[(this.budgetItemBase[i2] + i3) % jArr2.length]);
                    i3++;
                }
            }
            jsonWriter.endArray();
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        if (this.log.isEmpty()) {
            return;
        }
        jsonWriter.name("log").beginArray();
        for (int i4 = 0; i4 < this.log.size(); i4++) {
            BudgetLog budgetLog = this.log.get(i4);
            jsonWriter.beginObject();
            jsonWriter.name("change").value(budgetLog.change);
            jsonWriter.name("newValue").value(budgetLog.newValue);
            jsonWriter.name("day").value(budgetLog.day);
            jsonWriter.name("tag").value(budgetLog.tag);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long getBuildingIncome(int r11, int r12) {
        /*
            r10 = this;
            int[] r0 = info.flowersoft.theotown.components.DefaultBudget.BUILDING_INCOME
            r0 = r0[r11]
            double r0 = (double) r0
            double r2 = (double) r12
            double r0 = r0 * r2
            int[] r12 = info.flowersoft.theotown.components.DefaultBudget.AnonymousClass2.$SwitchMap$info$flowersoft$theotown$city$GameMode
            info.flowersoft.theotown.city.City r2 = r10.city
            info.flowersoft.theotown.city.GameMode r2 = r2.getGameMode()
            int r2 = r2.ordinal()
            r12 = r12[r2]
            r2 = 2
            r3 = 1
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            if (r12 == r3) goto L34
            if (r12 == r2) goto L2f
            r2 = 3
            if (r12 == r2) goto L28
            r2 = 4
            if (r12 == r2) goto L2f
            r2 = 5
            if (r12 == r2) goto L2f
            r2 = r4
            goto L39
        L28:
            float[] r12 = info.flowersoft.theotown.components.DefaultBudget.INCOME_GAMEMODE_FACTOR
            r2 = 0
            r12 = r12[r2]
        L2d:
            double r2 = (double) r12
            goto L39
        L2f:
            float[] r12 = info.flowersoft.theotown.components.DefaultBudget.INCOME_GAMEMODE_FACTOR
            r12 = r12[r3]
            goto L2d
        L34:
            float[] r12 = info.flowersoft.theotown.components.DefaultBudget.INCOME_GAMEMODE_FACTOR
            r12 = r12[r2]
            goto L2d
        L39:
            double r0 = r0 + r4
            double r0 = java.lang.Math.log10(r0)
            r6 = 4615063718147915776(0x400c000000000000, double:3.5)
            double r0 = java.lang.Math.pow(r6, r0)
            double r0 = r0 - r4
            r6 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r0 = r0 * r6
            double r0 = r0 * r2
            float[] r12 = r10.taxFactor
            r11 = r12[r11]
            double r11 = (double) r11
            double r0 = r0 * r11
            info.flowersoft.theotown.util.json.JSONObject r11 = r10.beginnerConfig
            java.lang.String r12 = "boost"
            boolean r11 = r11.optBoolean(r12)
            if (r11 == 0) goto L7e
            info.flowersoft.theotown.util.json.JSONObject r11 = r10.beginnerConfig
            java.lang.String r12 = "time last seconds"
            long r11 = r11.optLong(r12)
            info.flowersoft.theotown.util.json.JSONObject r2 = r10.beginnerConfig
            java.lang.String r3 = "boost value"
            double r2 = r2.optDouble(r3, r4)
            long r6 = info.flowersoft.theotown.resources.Settings.playTimeSeconds
            int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
            if (r8 >= 0) goto L7e
            r8 = 0
            int r8 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
            if (r8 <= 0) goto L7e
            double r2 = r2 - r4
            double r6 = (double) r6
            double r11 = (double) r11
            double r6 = r6 / r11
            double r11 = r4 - r6
            double r2 = r2 * r11
            double r2 = r2 + r4
            double r0 = r0 * r2
        L7e:
            long r11 = java.lang.Math.round(r0)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.DefaultBudget.getBuildingIncome(int, int):long");
    }

    public double getEstate() {
        return Double.longBitsToDouble(((((long) System.identityHashCode(this)) << 32) | ((long) System.identityHashCode(this.taxModifications))) ^ this.estateRaw);
    }

    public void setEstate(double d) {
        this.estateRaw = Double.doubleToRawLongBits(d) ^ ((((long) System.identityHashCode(this)) << 32) | ((long) System.identityHashCode(this.taxModifications)));
    }

    public void spend(double d, String str) {
        if (this.city.getGameMode().hasInfinityMoney()) {
            return;
        }
        earn(-d, str);
    }

    public void spend(double d, float f, float f2, String str) {
        if (this.city.getGameMode().hasInfinityMoney()) {
            return;
        }
        spend(d, str);
        addPlacedPrice(-d, f, f2);
    }

    public boolean canSpend(long j) {
        return this.city.getGameMode().hasInfinityMoney() || getEstate() >= ((double) j) || j <= 0;
    }

    public void earn(double d, String str) {
        if (this.city.getGameMode().hasInfinityMoney()) {
            return;
        }
        setEstate(getEstate() + d);
        addToLog(d, str);
    }

    public void earn(double d, float f, float f2, String str) {
        if (this.city.getGameMode().hasInfinityMoney()) {
            return;
        }
        earn(d, str);
        addPlacedPrice(d, f, f2);
    }

    public int getDiamondPriceForMoney(long j) {
        return (int) Math.max(Math.min((int) ((100 * j) / Math.max(getExpectedMonthlyIncome(), 1.0d)), j / 500), 10L);
    }

    public double getMoneyForDiamonds(int i) {
        return Math.max(getExpectedMonthlyIncome() / 100.0d, 500.0d) * ((double) i);
    }

    public double getExpectedMonthlyIncome() {
        if (this.expectedMonthlyIncome == -2.147483648E9d) {
            getMonthlyIncome();
        }
        return this.expectedMonthlyIncome;
    }

    public double getMonthlyIncome() {
        if (this.monthlyIncome == -2.147483648E9d) {
            double dCalculateMonthlyIncome = calculateMonthlyIncome();
            this.monthlyIncome = dCalculateMonthlyIncome;
            this.nextMonthlyIncome = dCalculateMonthlyIncome;
        }
        if (this.lastMonthlyIncome == -2.147483648E9d) {
            this.lastMonthlyIncome = this.monthlyIncome;
        }
        float dayPart = this.date.getDayPart();
        return (Math.round((((double) dayPart) * this.monthlyIncome) + (((double) (1.0f - dayPart)) * this.lastMonthlyIncome)) + getBudgetItemsEarned()) - getBudgetItemsSpent();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        Engine engine = drawer.engine;
        long ms = getMS();
        Iterator<PlacedPrice> it = this.placedPrices.iterator();
        while (it.hasNext()) {
            PlacedPrice next = it.next();
            float f = ((int) (ms - next.time)) / 2000.0f;
            if (f > 1.0f) {
                it.remove();
            } else {
                float f2 = next.tx;
                float f3 = next.ty;
                float fOriginalToRotatedX = this.city.originalToRotatedX(f2, f3) + 0.5f;
                float fOriginalToRotatedY = this.city.originalToRotatedY(f2, f3) + 0.5f;
                int iFloor = (int) Math.floor(f2);
                int iFloor2 = (int) Math.floor(f3);
                Font font = Resources.skin.fontDefault;
                IsoConverter isoConverter = this.city.getIsoConverter();
                float fIsoToAbsX = isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY);
                float fIsoToAbsY = isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY);
                if (this.city.isValid(iFloor, iFloor2)) {
                    fIsoToAbsY -= (this.city.getTiles().getTerrainAvgHeight(iFloor, iFloor2) * 12.0f) * isoConverter.getAbsScaleY();
                }
                float absScaleX = isoConverter.getAbsScaleX();
                float absScaleY = isoConverter.getAbsScaleY();
                float scaleY = fIsoToAbsY - (((f * 20.0f) + 20.0f) * engine.getScaleY());
                engine.setTransparency(Math.round((1.0f - (f * f)) * 255.0f));
                engine.setColor(Colors.BLACK);
                engine.drawText(font, next.text, fIsoToAbsX - absScaleX, scaleY, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f);
                engine.drawText(font, next.text, fIsoToAbsX + absScaleX, scaleY, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f);
                engine.drawText(font, next.text, fIsoToAbsX, scaleY - absScaleY, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f);
                engine.drawText(font, next.text, fIsoToAbsX, scaleY + absScaleY, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f);
                engine.setColor(next.price < 0 ? Colors.RED : Colors.GREEN);
                engine.drawText(font, next.text, fIsoToAbsX, scaleY, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f);
            }
        }
        engine.setTransparency(255);
        engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        long jRound = ((long) Math.round(this.dayTarget * this.date.getDayPart())) - this.addedForDay;
        setEstate(getEstate() + jRound);
        this.addedForDay += jRound;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        super.nextDay();
        setEstate((getEstate() + this.dayTarget) - this.addedForDay);
        this.addedForDay = 0L;
        this.doubleIncome = GameHandler.getInstance().getTimedEffectManager().consumeDoubleIncomeDays();
        this.lastMonthlyIncome = this.monthlyIncome;
        double d = this.nextMonthlyIncome;
        this.monthlyIncome = d;
        double d2 = this.carry;
        if (d + d2 >= 0.0d) {
            this.carry = (d2 + d) % 30.0d;
        } else {
            this.carry = -((-(d2 + d)) % 30.0d);
        }
        this.dayTarget = Math.round((d + this.carry) / 30.0d);
        int i = 0;
        while (true) {
            long[][] jArr = this.budgetItemHistoryEarned;
            if (i >= jArr.length) {
                return;
            }
            long[] jArr2 = jArr[i];
            int[] iArr = this.budgetItemBase;
            int i2 = iArr[i];
            long[] jArr3 = this.budgetItemAccumulatorEarned;
            jArr2[i2] = jArr3[i];
            long[] jArr4 = this.budgetItemHistorySpent[i];
            long[] jArr5 = this.budgetItemAccumulatorSpent;
            jArr4[i2] = jArr5[i];
            iArr[i] = (i2 + 1) % jArr2.length;
            jArr3[i] = 0;
            jArr5[i] = 0;
            i++;
        }
    }

    public final long getBudgetItemEarned(int i) {
        long j = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.budgetItemHistoryEarned[i];
            if (i2 >= jArr.length) {
                return j;
            }
            j += jArr[i2];
            i2++;
        }
    }

    public final long getBudgetItemSpent(int i) {
        long j = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.budgetItemHistorySpent[i];
            if (i2 >= jArr.length) {
                return j;
            }
            j += jArr[i2];
            i2++;
        }
    }

    public final long getBudgetItemsEarned() {
        long budgetItemEarned = 0;
        for (int i = 0; i < this.budgetItems.size(); i++) {
            budgetItemEarned += getBudgetItemEarned(i);
        }
        return budgetItemEarned;
    }

    public final long getBudgetItemsSpent() {
        long budgetItemSpent = 0;
        for (int i = 0; i < this.budgetItems.size(); i++) {
            budgetItemSpent += getBudgetItemSpent(i);
        }
        return budgetItemSpent;
    }

    public boolean notifyAboutBudgetItemContribution(Draft draft, long j) {
        int i = 0;
        while (true) {
            if (i >= this.budgetItems.size()) {
                i = -1;
                break;
            }
            if (this.budgetItems.get(i).equals(draft)) {
                break;
            }
            i++;
        }
        if (i < 0) {
            return false;
        }
        if (j > 0) {
            long[] jArr = this.budgetItemAccumulatorEarned;
            jArr[i] = jArr[i] + j;
            return true;
        }
        if (j >= 0) {
            return true;
        }
        long[] jArr2 = this.budgetItemAccumulatorSpent;
        jArr2[i] = jArr2[i] - j;
        return true;
    }

    public float getTaxes(ZoneDraft zoneDraft, int i) {
        int i2;
        return (!zoneDraft.rci || (i2 = zoneDraft.base.oldId) < 0 || i2 >= 3) ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : this.taxes[(i2 * 3) + i] / 10.0f;
    }

    public void setTaxes(ZoneDraft zoneDraft, int i, float f) {
        int i2;
        if (!zoneDraft.rci || (i2 = zoneDraft.base.oldId) < 0 || i2 >= 3) {
            return;
        }
        this.taxes[(i2 * 3) + i] = Math.round(f * 10.0f);
    }

    public final long calculateMonthlyIncome() {
        long amount = 0;
        long amount2 = 0;
        for (BudgetItem budgetItem : getIncomeItems(false)) {
            amount += budgetItem.getAmount();
            if (this.doubleIncome) {
                amount += budgetItem.getAmount();
            }
            if (budgetItem.isModifyable()) {
                int modifyable = budgetItem.getModifyable();
                budgetItem.setModifyable(100);
                amount2 += budgetItem.getAmount();
                budgetItem.setModifyable(modifyable);
            } else {
                amount2 += budgetItem.getAmount();
            }
        }
        for (BudgetItem budgetItem2 : getSpendingItems(false)) {
            amount += budgetItem2.getAmount();
            amount2 += budgetItem2.getAmount();
        }
        if (GameHandler.getInstance().getTimedEffectManager().getRemainingDoubledIncomeMS() > 0 && amount >= 0) {
            amount *= 2;
        }
        this.expectedMonthlyIncome = amount2;
        return amount;
    }

    public long getPrice(ZoneDraft zoneDraft, int i) {
        long basePrice = getBasePrice(zoneDraft);
        float zonePriceFactor = zoneDraft.priceFactor;
        if (zonePriceFactor == -1.0f) {
            zonePriceFactor = getZonePriceFactor();
        }
        if (zoneDraft == Zones.getInstance().RESIDENTIAL0 || zoneDraft == Zones.getInstance().RESIDENTIAL1) {
            zonePriceFactor /= 2.0f;
        }
        return (((long) i) * (((long) Math.round(this.city.getZoneCounter()[zoneDraft.tempId] * zonePriceFactor * basePrice)) + basePrice)) + getPriceAdditionByDrafts(zoneDraft.addPriceDrafts, i, 0, 0, 0);
    }

    public long getBasePrice(ZoneDraft zoneDraft) {
        return zoneDraft.price;
    }

    public long getPrice(BuildingDraft buildingDraft, int i) {
        if (buildingDraft.diamondPrice.get() > 0 && !buildingDraft.isBoughtInFeature(this.city)) {
            return 0L;
        }
        float buildingPriceFactor = buildingDraft.priceFactor;
        if (buildingPriceFactor == -1.0f) {
            buildingPriceFactor = getBuildingPriceFactor();
        }
        return getGrowingPrice(buildingDraft.price, buildingPriceFactor, this.city.getBuildings().getBuildingsOfDraft(buildingDraft).size(), i) + getPriceAdditionByDrafts(buildingDraft.addPriceDrafts, i, 0, 0, 0);
    }

    public long getPrice(RoadDraft roadDraft, int i, int i2, int i3, int i4) {
        float roadPriceFactor = roadDraft.priceFactor;
        if (roadPriceFactor == -1.0f) {
            roadPriceFactor = getRoadPriceFactor();
        }
        float f = roadPriceFactor;
        int size = this.city.getRoads().getRoadsOfDraft(roadDraft).size();
        long growingPrice = getGrowingPrice(((long) roadDraft.bridgePrice) * 2, f, size, i3);
        int i5 = size + i3;
        long growingPrice2 = growingPrice + getGrowingPrice(roadDraft.bridgePrice, f, i5, i2);
        int i6 = i5 + i2;
        return growingPrice2 + getGrowingPrice(roadDraft.price, f, i6, i) + getGrowingPrice(roadDraft.tunnelPrice, f, i6 + i, i4) + getPriceAdditionByDrafts(roadDraft.addPriceDrafts, i, i2, i3, i4);
    }

    public final long getPriceAdditionByDrafts(Draft[] draftArr, int i, int i2, int i3, int i4) {
        long price;
        long price2;
        long j = 0;
        if (draftArr != null) {
            int i5 = i + i2 + i3 + i4;
            for (Draft draft : draftArr) {
                if (draft instanceof PipeDraft) {
                    price = getPrice((PipeDraft) draft, i5);
                } else if (draft instanceof WireDraft) {
                    price = getPrice((WireDraft) draft, i5);
                } else if (draft instanceof BuildingDraft) {
                    price = getPrice((BuildingDraft) draft, i5);
                } else if (draft instanceof RoadDraft) {
                    price = getPrice((RoadDraft) draft, i, i2, i3, i4);
                } else if (draft instanceof ZoneDraft) {
                    price = getPrice((ZoneDraft) draft, i5);
                } else if (draft instanceof RailDraft) {
                    price = getPrice((RailDraft) draft, i + i4, i2 + i3);
                } else {
                    if (draft instanceof TreeDraft) {
                        price2 = getPrice((TreeDraft) draft);
                    } else if (draft instanceof BusStopDraft) {
                        price2 = getPrice((BusStopDraft) draft);
                    } else if (draft instanceof RoadDecorationDraft) {
                        price = getPrice((RoadDecorationDraft) draft, i5);
                    }
                    price = price2 * ((long) i5);
                }
                j += price;
            }
        }
        return j;
    }

    public long getPrice(RoadDecorationDraft roadDecorationDraft, int i) {
        return ((long) i) * ((long) roadDecorationDraft.price);
    }

    public long getPrice(PipeDraft pipeDraft, int i) {
        return (((long) i) * ((long) pipeDraft.price)) + getPriceAdditionByDrafts(pipeDraft.addPriceDrafts, i, 0, 0, 0);
    }

    public long getPrice(WireDraft wireDraft, int i) {
        return (((long) i) * ((long) wireDraft.price)) + getPriceAdditionByDrafts(wireDraft.addPriceDrafts, i, 0, 0, 0);
    }

    public long getPrice(RailDraft railDraft, int i, int i2) {
        return (((long) i) * ((long) railDraft.price)) + getPriceAdditionByDrafts(railDraft.addPriceDrafts, i, i2, 0, 0);
    }

    public long getPrice(TreeDraft treeDraft) {
        return ((long) treeDraft.price) + getPriceAdditionByDrafts(treeDraft.addPriceDrafts, 1, 0, 0, 0);
    }

    public long getPrice(BusStopDraft busStopDraft) {
        return ((long) busStopDraft.price) + getPriceAdditionByDrafts(busStopDraft.addPriceDrafts, 1, 0, 0, 0);
    }

    public long getPrice(FlyingObjectDraft flyingObjectDraft, int i) {
        Iterator it = new SafeListAccessor(((DefaultAirport) this.city.getComponent(19)).getAirplanes()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (((Airplane) it.next()).getDraft() == flyingObjectDraft) {
                i2++;
            }
        }
        return getGrowingPrice(flyingObjectDraft.price, getAirplanePriceFactorPriceFactor(), i2, i);
    }

    public final long getGrowingPrice(long j, float f, int i, int i2) {
        return (((long) i2) * j) + ((long) Math.round(f * ((i * i2) + ((i2 * (i2 - 1)) / 2)) * j));
    }

    public Loan addLoan(int i, long j, long j2) {
        long absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        Loan loan = new Loan(absoluteDay, (((long) i) * 30) + absoluteDay, j2, j);
        this.loanList.add(loan);
        earn(j, "take loan");
        return loan;
    }

    public List<Loan> getLoans() {
        return this.loanList;
    }

    public boolean canAddLoan() {
        return this.loanList.size() < getMaxLoanCount();
    }

    public int getMaxLoanCount() {
        return this.budgetConfig.optInt("loan count base", 5) + (this.budgetConfig.optInt("loan count factor", 0) * this.city.getRank().ordinal);
    }

    public long getLoanValue() {
        return this.budgetConfig.optLong("loan value base", 10000L) + (this.budgetConfig.optLong("loan value factor", 0L) * ((long) this.city.getRank().ordinal));
    }

    public int getLoanTermMonths() {
        return this.budgetConfig.optInt("loan term months", 96);
    }

    public long getLoanMonthlyPrice() {
        return Math.round((getLoanValue() / ((double) getLoanTermMonths())) * ((double) (((float) this.budgetConfig.optDouble("loan interest rate", 0.10000000149011612d)) + 1.0f)));
    }

    public long getLoanPayBackPrice(Loan loan) {
        long absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        long targetDay = loan.getTargetDay() - loan.getIssuedDay();
        long issuedDay = absoluteDay - loan.getIssuedDay();
        long pricePerMonth = ((loan.getPricePerMonth() * targetDay) / 30) - loan.getEstate();
        return (((pricePerMonth * issuedDay) / targetDay) + loan.getEstate()) - ((loan.getPricePerMonth() * issuedDay) / 30);
    }

    public void payBackLoan(Loan loan) {
        this.loanList.remove(loan);
        spend(getLoanPayBackPrice(loan), "pay back loan");
    }

    public final void applyMonthlyPriceAdjustments(long[] jArr) {
        int iOrdinal = BuildingType.POLICE.ordinal();
        long j = jArr[iOrdinal];
        BuildingType buildingType = BuildingType.SWAT;
        jArr[iOrdinal] = j + jArr[buildingType.ordinal()];
        jArr[buildingType.ordinal()] = 0;
    }

    public List<BudgetItem> getIncomeItems(boolean z) {
        int i;
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        int iClamp;
        int i6;
        int iClamp2;
        int i7;
        int i8;
        DraftLocalizer draftLocalizer;
        ArrayList arrayList = new ArrayList();
        People people = (People) this.city.getComponent(9);
        BuildingSurvey buildingSurvey = ((DefaultManagement) this.city.getComponent(3)).getBuildingSurvey();
        DraftLocalizer draftLocalizer2 = new DraftLocalizer(this.city);
        Arrays.fill(this.budgetItemBuildingsEarned, 0L);
        BuildingList buildings = this.city.getBuildings();
        long[] jArr = new long[BuildingType.cachedValues().length];
        for (Building building : new SafeListAccessor(buildings)) {
            long monthlyPrice = building.getMonthlyPrice();
            if (monthlyPrice < 0 && building.isWorking()) {
                if (building.getDraft().budgetItem == null) {
                    int iOrdinal = building.getBuildingType().ordinal();
                    jArr[iOrdinal] = jArr[iOrdinal] - monthlyPrice;
                } else {
                    long[] jArr2 = this.budgetItemBuildingsEarned;
                    int i9 = building.getDraft().budgetItem.ordinal;
                    jArr2[i9] = jArr2[i9] - monthlyPrice;
                }
            }
        }
        List<Airplane> airplanes = ((DefaultAirport) this.city.getComponent(19)).getAirplanes();
        long jFloor = 0;
        for (int i10 = 0; i10 < airplanes.size(); i10++) {
            jFloor = (long) (jFloor + Math.floor(airplanes.get(i10).getDraft().capacity * 6.9f));
        }
        BuildingType buildingType = BuildingType.AIRPORT;
        int iOrdinal2 = buildingType.ordinal();
        jArr[iOrdinal2] = jArr[iOrdinal2] + jFloor;
        if (jFloor >= 1000 && this.city.canAchieve()) {
            TheoTown.gamesService.unlockAchievement("airport_build");
        }
        int iCalculateNeighborCosts = calculateNeighborCosts();
        int i11 = iCalculateNeighborCosts < 0 ? 0 : iCalculateNeighborCosts;
        applyMonthlyPriceAdjustments(jArr);
        int iClamp3 = MathUtils.clamp(people.getPeople(0), 0, 1000000000);
        int iClamp4 = MathUtils.clamp(people.getPeople(1), 0, 1000000000);
        int iClamp5 = MathUtils.clamp(people.getPeople(2), 0, 1000000000);
        int iClamp6 = MathUtils.clamp(buildingSurvey.getShoppingPlaces(0, 0), 0, 1000000000);
        int iClamp7 = MathUtils.clamp(buildingSurvey.getShoppingPlaces(1, 0), 0, 1000000000);
        int iClamp8 = MathUtils.clamp(buildingSurvey.getShoppingPlaces(2, 0), 0, 1000000000);
        int iClamp9 = MathUtils.clamp(buildingSurvey.getProducers(0, 0), 0, 1000000000);
        int iClamp10 = MathUtils.clamp(buildingSurvey.getProducers(1, 0), 0, 1000000000);
        int iClamp11 = MathUtils.clamp(buildingSurvey.getProducers(2, 0), 0, 1000000000);
        int i12 = iClamp6 + iClamp9;
        int i13 = iClamp7 + iClamp10;
        int i14 = iClamp8 + iClamp11;
        DraftLocalizer draftLocalizer3 = draftLocalizer2;
        if (i12 > iClamp3) {
            long j = iClamp3;
            long j2 = ((long) iClamp6) * j;
            long j3 = i12;
            i2 = 0;
            int iClamp12 = MathUtils.clamp((int) (j2 / j3), 0, 1000000000);
            i = iClamp7;
            iClamp9 = MathUtils.clamp((int) ((((long) iClamp9) * j) / j3), 0, 1000000000);
            i3 = iClamp12;
            c = 51712;
        } else {
            i = iClamp7;
            c = 51712;
            i2 = 0;
            i3 = iClamp6;
        }
        int i15 = iClamp9;
        if (i13 > iClamp4) {
            i5 = i15;
            long j4 = iClamp4;
            i4 = iClamp3;
            long j5 = i13;
            iClamp = MathUtils.clamp((int) ((((long) i) * j4) / j5), 0, 1000000000);
            i6 = 0;
            iClamp2 = MathUtils.clamp((int) ((((long) iClamp10) * j4) / j5), 0, 1000000000);
            i7 = i14;
        } else {
            i4 = iClamp3;
            i5 = i15;
            iClamp = i;
            i6 = i2;
            iClamp2 = iClamp10;
            i7 = i14;
        }
        int i16 = iClamp;
        if (i7 > iClamp5) {
            long j6 = iClamp5;
            long j7 = i7;
            int iClamp13 = MathUtils.clamp((int) ((((long) iClamp8) * j6) / j7), 0, 1000000000);
            int i17 = (int) ((((long) iClamp11) * j6) / j7);
            i6 = 0;
            iClamp11 = MathUtils.clamp(i17, 0, 1000000000);
            i8 = iClamp13;
        } else {
            i8 = iClamp8;
        }
        int i18 = iClamp11;
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().RESIDENTIAL0, 0, i4, 1544));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().RESIDENTIAL0, 1, iClamp4, 1543));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().RESIDENTIAL0, 2, iClamp5, 1549));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().COMMERCIAL0, 0, i3, 3373));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().COMMERCIAL0, 1, i16, 3368));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().COMMERCIAL0, 2, i8, 3371));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().INDUSTRIAL0, 0, i5, 2372));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().INDUSTRIAL0, 1, iClamp2, 2369));
        arrayList.add(new TaxPayerBudgetItem(this, Zones.getInstance().INDUSTRIAL0, 2, i18, 2368));
        arrayList.add(new SimpleBudgetItem(this, 1669, jArr[BuildingType.BUS_DEPOT.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 827, jArr[BuildingType.RAILWAY_STATION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2349, jArr[BuildingType.PARK.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1761, jArr[BuildingType.SPORT.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 678, jArr[BuildingType.PUBLIC.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, e.a.k, jArr[BuildingType.RELIGION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2062, jArr[BuildingType.ENERGY.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 32, jArr[BuildingType.WATER.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2493, jArr[BuildingType.POLICE.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 3489, jArr[BuildingType.FIRE_BRIGADE.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2375, jArr[BuildingType.MEDIC.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1358, jArr[BuildingType.EDUCATION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1177, jArr[BuildingType.AWARD.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1759, jArr[BuildingType.LANDMARK.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 23, jArr[BuildingType.MILITARY.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2002, jArr[buildingType.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2524, jArr[BuildingType.DECORATION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, IronSourceError.ERROR_NT_INSTANCE_INIT_TIMEOUT, jArr[BuildingType.TERRAIN.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1199, jArr[BuildingType.WASTE_DISPOSAL.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2585, jArr[BuildingType.BODY_DISPOSAL.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1385, i11));
        int i19 = i6;
        while (i19 < this.budgetItems.size()) {
            long budgetItemEarned = this.budgetItemBuildingsEarned[i19];
            if (z) {
                budgetItemEarned += getBudgetItemEarned(i19);
            }
            if (budgetItemEarned > 0) {
                draftLocalizer = draftLocalizer3;
                arrayList.add(new SimpleBudgetItem(this, draftLocalizer.getTitle(this.budgetItems.get(i19)), budgetItemEarned));
            } else {
                draftLocalizer = draftLocalizer3;
            }
            i19++;
            draftLocalizer3 = draftLocalizer;
        }
        return arrayList;
    }

    public List<BudgetItem> getSpendingItems(boolean z) {
        long j;
        RoadDraft roadDraft;
        int i;
        ArrayList arrayList = new ArrayList();
        long[] jArr = new long[BuildingType.values().length];
        DraftLocalizer draftLocalizer = new DraftLocalizer(this.city);
        BuildingList buildings = this.city.getBuildings();
        RoadList roads = this.city.getRoads();
        this.city.getRails();
        long j2 = 0;
        Arrays.fill(this.budgetItemBuildingsSpent, 0L);
        Arrays.fill(this.budgetItemRoadsSpent, 0L);
        for (Building building : new SafeListAccessor(buildings)) {
            long monthlyPrice = building.getMonthlyPrice();
            if (monthlyPrice > 0 && building.isWorking()) {
                if (building.getDraft().budgetItem == null) {
                    int iOrdinal = building.getBuildingType().ordinal();
                    jArr[iOrdinal] = jArr[iOrdinal] - monthlyPrice;
                } else {
                    long[] jArr2 = this.budgetItemBuildingsSpent;
                    int i2 = building.getDraft().budgetItem.ordinal;
                    jArr2[i2] = jArr2[i2] + monthlyPrice;
                }
            }
        }
        int i3 = 0;
        int i4 = 0;
        long j3 = 0;
        while (i4 < roads.size()) {
            Road road = roads.get(i4);
            if (road != null && (i = (roadDraft = road.draft).monthlyPrice) > 0) {
                Draft draft = roadDraft.budgetItem;
                if (draft == null) {
                    j3 -= (long) i;
                    j = j2;
                } else {
                    long[] jArr3 = this.budgetItemRoadsSpent;
                    int i5 = draft.ordinal;
                    j = j2;
                    jArr3[i5] = jArr3[i5] + ((long) i);
                }
            } else {
                j = j2;
            }
            i4++;
            j2 = j;
        }
        long j4 = j2;
        JSONArray jSONArrayOptArray = JSONUtil.optArray(this.budgetConfig, "road spending");
        long j5 = -Math.round(jSONArrayOptArray.optDouble(0, 10.0d) * (Math.pow(jSONArrayOptArray.optDouble(1, 3.0d), Math.log10((jSONArrayOptArray.optDouble(2, 1.0d) * (-j3)) + 1.0d)) - 1.0d));
        int i6 = 0;
        while (true) {
            long[] jArr4 = this.budgetItemRoadsSpent;
            if (i6 >= jArr4.length) {
                break;
            }
            int i7 = i6;
            jArr4[i7] = Math.round(jSONArrayOptArray.optDouble(i3, 10.0d) * (Math.pow(jSONArrayOptArray.optDouble(1, 3.0d), Math.log10((jSONArrayOptArray.optDouble(2, 1.0d) * this.budgetItemRoadsSpent[i7]) + 1.0d)) - 1.0d));
            long[] jArr5 = this.budgetItemBuildingsSpent;
            jArr5[i7] = jArr5[i7] + this.budgetItemRoadsSpent[i7];
            i6 = i7 + 1;
            i3 = 0;
        }
        long absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        Iterator<Loan> it = this.loanList.iterator();
        int pricePerMonth = 0;
        while (it.hasNext()) {
            Loan next = it.next();
            if (absoluteDay > next.getTargetDay()) {
                it.remove();
            } else {
                pricePerMonth = (int) (((long) pricePerMonth) - next.getPricePerMonth());
            }
        }
        int iCalculateNeighborCosts = calculateNeighborCosts();
        if (iCalculateNeighborCosts > 0) {
            iCalculateNeighborCosts = 0;
        }
        applyMonthlyPriceAdjustments(jArr);
        arrayList.add(new SimpleBudgetItem(this, 1609, j5));
        arrayList.add(new SimpleBudgetItem(this, 1669, jArr[BuildingType.BUS_DEPOT.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 827, jArr[BuildingType.RAILWAY_STATION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2349, jArr[BuildingType.PARK.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1761, jArr[BuildingType.SPORT.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 678, jArr[BuildingType.PUBLIC.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, e.a.k, jArr[BuildingType.RELIGION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2062, jArr[BuildingType.ENERGY.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 32, jArr[BuildingType.WATER.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2493, jArr[BuildingType.POLICE.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 3489, jArr[BuildingType.FIRE_BRIGADE.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2375, jArr[BuildingType.MEDIC.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1358, jArr[BuildingType.EDUCATION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1177, jArr[BuildingType.AWARD.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1759, jArr[BuildingType.LANDMARK.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 23, jArr[BuildingType.MILITARY.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2002, jArr[BuildingType.AIRPORT.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2524, jArr[BuildingType.DECORATION.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, IronSourceError.ERROR_NT_INSTANCE_INIT_TIMEOUT, jArr[BuildingType.TERRAIN.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1199, jArr[BuildingType.WASTE_DISPOSAL.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 2585, jArr[BuildingType.BODY_DISPOSAL.ordinal()]));
        arrayList.add(new SimpleBudgetItem(this, 1244, pricePerMonth));
        arrayList.add(new SimpleBudgetItem(this, 1385, iCalculateNeighborCosts));
        for (int i8 = 0; i8 < this.budgetItems.size(); i8++) {
            long budgetItemSpent = this.budgetItemBuildingsSpent[i8];
            if (z) {
                budgetItemSpent += getBudgetItemSpent(i8);
            }
            if (budgetItemSpent > j4) {
                arrayList.add(new SimpleBudgetItem(this, draftLocalizer.getTitle(this.budgetItems.get(i8)), -budgetItemSpent));
            }
        }
        return arrayList;
    }

    public final int calculateNeighborCosts() {
        int powerTradingPrice = 0;
        for (int i = 0; i < this.city.countNeighbors(); i++) {
            NeighborCity neighbor = this.city.getNeighbor(i);
            if (neighbor != null) {
                TradingRelation tradingRelation = neighbor.getTradingRelation();
                powerTradingPrice = (int) (((long) ((int) (((long) ((int) (((long) ((int) (((long) powerTradingPrice) - getPowerTradingPrice(neighbor, tradingRelation.getEnergyExport())))) - getWaterTradingPrice(neighbor, tradingRelation.getWaterExport())))) - getWasteDisposalTradingPrice(neighbor, tradingRelation.getWasteDisposalExport())))) - getBodyDisposalTradingPrice(neighbor, tradingRelation.getBodyDisposalExport()));
            }
        }
        return powerTradingPrice;
    }

    public final long getMS() {
        return TimeUtils.millis();
    }

    public final void addPlacedPrice(double d, float f, float f2) {
        PlacedPrice placedPrice = new PlacedPrice();
        placedPrice.tx = f;
        placedPrice.ty = f2;
        placedPrice.price = (long) d;
        placedPrice.text = StringFormatter.format(this.city.getTranslator().translate(3173), Localizer.localizeMoney(d));
        placedPrice.time = getMS();
        this.placedPrices.add(placedPrice);
    }

    public void clearPlacedPrices() {
        this.placedPrices.clear();
    }

    public long getPowerTradingPrice(NeighborCity neighborCity, long j) {
        return (-j) / ((long) (j > 0 ? 15 : 10));
    }

    public long getWaterTradingPrice(NeighborCity neighborCity, long j) {
        return (-j) / ((long) (j > 0 ? 75 : 50));
    }

    public long getWasteDisposalTradingPrice(NeighborCity neighborCity, long j) {
        return ((-j) / ((long) (j > 0 ? 75 : 50))) * 10;
    }

    public long getBodyDisposalTradingPrice(NeighborCity neighborCity, long j) {
        return ((-j) / ((long) (j > 0 ? 5 : 3))) / 10;
    }

    public static class PlacedPrice {
        public long price;
        public String text;
        public long time;
        public float tx;
        public float ty;

        public PlacedPrice() {
        }
    }

    public static class SimpleBudgetItem extends BudgetItem {
        public final long amount;
        public final int title;
        public String titleRaw;

        public SimpleBudgetItem(DefaultBudget defaultBudget, int i, long j) {
            super(defaultBudget);
            this.title = i;
            this.amount = j;
        }

        public SimpleBudgetItem(DefaultBudget defaultBudget, String str, long j) {
            this(defaultBudget, 0, j);
            this.titleRaw = str;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public long getAmount() {
            return this.amount;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public int getNameId() {
            return this.title;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public String getNameRaw() {
            return this.titleRaw;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public boolean isVisible() {
            return this.amount != 0;
        }
    }

    public class TaxPayerBudgetItem extends BudgetItem {
        public final int count;
        public final int idx;
        public final int title;

        @Override // info.flowersoft.theotown.components.BudgetItem
        public int getMaxModifyableValue() {
            return 200;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public int getMinModifyableValue() {
            return 0;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public int getModifyStep() {
            return 5;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public String getNameRaw() {
            return null;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public boolean isModifyable() {
            return true;
        }

        public TaxPayerBudgetItem(DefaultBudget defaultBudget, ZoneDraft zoneDraft, int i, int i2, int i3) {
            super(defaultBudget);
            this.count = i2;
            this.title = i3;
            this.idx = (zoneDraft.oldId * 3) + i;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public long getAmount() {
            return (DefaultBudget.this.getBuildingIncome(this.idx, this.count) * ((long) DefaultBudget.this.taxes[this.idx])) / 1000;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public int getNameId() {
            return this.title;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public int getModifyable() {
            return DefaultBudget.this.taxes[this.idx];
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public void setModifyable(int i) {
            DefaultBudget.this.taxes[this.idx] = i;
        }

        @Override // info.flowersoft.theotown.components.BudgetItem
        public int getExtra() {
            return this.count;
        }
    }

    public List<BudgetLog> getLog() {
        return this.log;
    }

    public final void addToLog(double d, String str) {
        BudgetLog budgetLog = new BudgetLog();
        budgetLog.newValue = getEstate();
        budgetLog.change = d;
        budgetLog.tag = str;
        budgetLog.day = this.date.getAbsoluteDay() + ((double) this.date.getDayPart());
        if (this.log.size() >= 100) {
            this.log.remove(0);
        }
        this.log.add(budgetLog);
    }

    public static class BudgetLog {
        public double change;
        public double day;
        public double newValue;
        public String tag;

        public String toString() {
            return "Day " + Math.round(this.day) + ": " + this.change + "  new value: " + this.newValue + "   tag: " + this.tag;
        }
    }

    public void addTaxFactor(String str, float[] fArr) {
        if (fArr == null || fArr.length < 9) {
            throw new IllegalArgumentException("Illegal tax factor");
        }
        removeTaxFactor(str);
        this.taxModifications.add(new TaxModification(str, fArr));
        recalculateTaxFactors();
    }

    public void removeTaxFactor(String str) {
        for (int i = 0; i < this.taxModifications.size(); i++) {
            if (this.taxModifications.get(i).id.equals(str)) {
                this.taxModifications.remove(i);
                recalculateTaxFactors();
                return;
            }
        }
    }

    public final void recalculateTaxFactors() {
        Arrays.fill(this.taxFactor, 1.0f);
        for (int i = 0; i < this.taxModifications.size(); i++) {
            float[] fArr = this.taxModifications.get(i).factors;
            int i2 = 0;
            while (true) {
                float[] fArr2 = this.taxFactor;
                if (i2 < fArr2.length) {
                    fArr2[i2] = fArr2[i2] * fArr[i2];
                    i2++;
                }
            }
        }
    }

    public static class TaxModification {
        public float[] factors;
        public String id;

        public TaxModification(String str, float[] fArr) {
            this.id = str;
            this.factors = fArr;
        }
    }
}
