package info.flowersoft.theotown.components;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.Demand;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultDemand extends Demand {
    public static final String[] VAR_OFFSET_NAMES = {"demand_res0_offset", "demand_res1_offset", "demand_res2_offset", "demand_com0_offset", "demand_com1_offset", "demand_com2_offset", "demand_ind0_offset", "demand_ind1_offset", "demand_ind2_offset"};
    public final float[] amount;
    public final float[] badHappinessFactors;
    public final float[] comBuilding;
    public final float[] commercial;
    public final float[] happinesses;
    public final float[] indBuilding;
    public final float[] industrial;
    public final int[] multiplier;
    public final float[] newDemands;
    public final int[] offset;
    public final float[] resBuilding;
    public final float[] residential;
    public BuildingSurvey survey;

    public final int getIndex(int i, int i2) {
        return (i * 3) + i2;
    }

    public DefaultDemand(JsonReader jsonReader) throws IOException {
        this();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "offset":
                    jsonReader.beginArray();
                    for (int i = 0; i < 9; i++) {
                        this.offset[i] = jsonReader.nextInt();
                    }
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "multiplier":
                    jsonReader.beginArray();
                    for (int i2 = 0; i2 < 9; i2++) {
                        this.multiplier[i2] = jsonReader.nextInt();
                    }
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "demands":
                    jsonReader.beginArray();
                    for (int i3 = 0; i3 < 3; i3++) {
                        this.residential[i3] = jsonReader.nextFloat();
                    }
                    for (int i4 = 0; i4 < 3; i4++) {
                        this.commercial[i4] = jsonReader.nextFloat();
                    }
                    for (int i5 = 0; i5 < 3; i5++) {
                        this.industrial[i5] = jsonReader.nextFloat();
                    }
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public DefaultDemand() {
        this.residential = new float[3];
        this.commercial = new float[3];
        this.industrial = new float[3];
        this.resBuilding = new float[3];
        this.comBuilding = new float[3];
        this.indBuilding = new float[3];
        this.offset = new int[9];
        int[] iArr = new int[9];
        this.multiplier = iArr;
        this.happinesses = new float[9];
        this.amount = new float[9];
        this.newDemands = new float[9];
        this.badHappinessFactors = new float[9];
        Arrays.fill(iArr, 1);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        super.prepare();
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("demands");
        jsonWriter.beginArray();
        float[][] fArr = {this.residential, this.commercial, this.industrial};
        for (int i = 0; i < 3; i++) {
            float[] fArr2 = fArr[i];
            for (int i2 = 0; i2 < 3; i2++) {
                jsonWriter.value(fArr2[i2]);
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("offset");
        jsonWriter.beginArray();
        for (int i3 = 0; i3 < 9; i3++) {
            jsonWriter.value(this.offset[i3]);
        }
        jsonWriter.endArray();
        jsonWriter.name("multiplier");
        jsonWriter.beginArray();
        for (int i4 = 0; i4 < 9; i4++) {
            jsonWriter.value(this.multiplier[i4]);
        }
        jsonWriter.endArray();
    }

    public void calculate() {
        BuildingSurvey buildingSurvey = this.survey;
        if (buildingSurvey != null) {
            calculate(buildingSurvey);
        }
    }

    public void calculate(BuildingSurvey buildingSurvey) {
        float f;
        this.survey = buildingSurvey;
        People people = (People) this.city.getComponent(9);
        int i = 0;
        while (i < 3) {
            int i2 = i * 3;
            this.happinesses[i2] = buildingSurvey.getResidentialBuildingHappiness(i, i == 0 ? 1.0f : 0.5f) - 0.5f;
            int i3 = i2 + 1;
            this.happinesses[i3] = buildingSurvey.getCommercialBuildingHappiness(i, 0.5f) - 0.5f;
            int i4 = i2 + 2;
            this.happinesses[i4] = buildingSurvey.getIndustrialBuildingHappiness(i, i == 0 ? 1.0f : 0.5f) - 0.5f;
            this.amount[i2] = people.getPeople(i);
            this.amount[i3] = buildingSurvey.getCommercialJobs(i, 0);
            this.amount[i4] = buildingSurvey.getIndustrialJobs(i, 0);
            i++;
        }
        for (int i5 = 0; i5 < this.city.countNeighbors(); i5++) {
            NeighborCity neighbor = this.city.getNeighbor(i5);
            if (neighbor != null) {
                BuildingSurvey survey = neighbor.getSurvey();
                if (!neighbor.hasInfinityMoney()) {
                    for (int i6 = 0; i6 < 3; i6++) {
                        float[] fArr = this.amount;
                        int i7 = i6 * 3;
                        int i8 = i7 + 1;
                        fArr[i8] = fArr[i8] + (Math.max(survey.getCommercialJobs(i6, 0) - neighbor.getInhabitants(i6), -100) * 0.1f);
                        float[] fArr2 = this.amount;
                        int i9 = i7 + 2;
                        fArr2[i9] = fArr2[i9] + (Math.max(survey.getIndustrialJobs(i6, 0) - neighbor.getInhabitants(i6), -100) * 0.1f);
                    }
                }
            }
        }
        int i10 = 2;
        int i11 = 0;
        while (true) {
            f = 2.0f;
            if (i11 >= 9) {
                break;
            }
            float[] fArr3 = this.badHappinessFactors;
            float f2 = this.happinesses[i11];
            fArr3[i11] = f2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? (f2 * 2.0f) + 1.0f : 1.0f;
            i11++;
        }
        float[] fArr4 = new float[9];
        float[] fArr5 = new float[9];
        int i12 = 0;
        while (i12 < 3) {
            int i13 = i12 * 3;
            fArr4[i13] = buildingSurvey.getResidentialSpace(i12, 1) + people.getPeopleNeededSpace(i12);
            fArr5[i13] = buildingSurvey.getResidentialSpace(i12, 1);
            int i14 = i13 + 1;
            float f3 = f;
            fArr4[i14] = (people.getPeople(i12) + ((i12 < i10 ? people.getPeople(i12 + 1) : 0) * this.badHappinessFactors[i14])) * 0.33333f;
            fArr5[i14] = buildingSurvey.getShoppingPlaces(i12, 1);
            int i15 = i13 + 2;
            fArr4[i15] = buildingSurvey.getShoppingPlaces(i12, 1) * f3 * this.badHappinessFactors[i15];
            fArr5[i15] = buildingSurvey.getProducers(i12, 1);
            i12++;
            f = f3;
            i10 = 2;
        }
        applyExternalTargets(fArr4);
        for (int i16 = 0; i16 < 9; i16++) {
            this.newDemands[i16] = fArr4[i16] - fArr5[i16];
        }
        int i17 = 0;
        while (true) {
            float[] fArr6 = this.newDemands;
            if (i17 >= fArr6.length) {
                break;
            }
            if (i17 % 3 > 0) {
                fArr6[i17] = fArr6[i17] + (this.happinesses[i17] * ((this.amount[i17] * 0.01f) + 10.0f));
            }
            fArr6[i17] = relax(fArr6[i17]);
            i17++;
        }
        if (this.city.getGameMode().hasInfinityMoney()) {
            int i18 = 0;
            while (true) {
                float[] fArr7 = this.newDemands;
                if (i18 >= fArr7.length) {
                    break;
                }
                fArr7[i18] = Math.max(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fArr7[i18]);
                i18++;
            }
        }
        long absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        for (int i19 = 0; i19 < 3; i19++) {
            float[] fArr8 = this.newDemands;
            int i20 = i19 * 3;
            float f4 = fArr8[i20];
            fArr8[i20] = f4 * getFactor(i19, 0, absoluteDay, f4);
            float[] fArr9 = this.newDemands;
            int i21 = i20 + 1;
            float f5 = fArr9[i21];
            fArr9[i21] = f5 * getFactor(i19, 1, absoluteDay, f5);
            float[] fArr10 = this.newDemands;
            int i22 = i20 + 2;
            float f6 = fArr10[i22];
            fArr10[i22] = f6 * getFactor(i19, 2, absoluteDay, f6);
        }
        for (int i23 = 0; i23 < 9; i23++) {
            float[] fArr11 = this.newDemands;
            fArr11[i23] = (fArr11[i23] * this.multiplier[(i23 / 3) + ((i23 % 3) * 3)]) + getOverallOffset(i23);
            fArr4[i23] = fArr5[i23] + this.newDemands[i23];
        }
        for (int i24 = 0; i24 < 3; i24++) {
            float[] fArr12 = this.residential;
            float[] fArr13 = this.newDemands;
            int i25 = i24 * 3;
            fArr12[i24] = fArr13[i25];
            int i26 = i25 + 1;
            this.commercial[i24] = fArr13[i26];
            int i27 = i25 + 2;
            this.industrial[i24] = fArr13[i27];
            float[] fArr14 = this.resBuilding;
            float fMin = fArr12[i24];
            if (fMin < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                fMin = Math.min(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fArr4[i25] - (fArr5[i25] * 0.8f));
            }
            fArr14[i24] = fMin;
            float[] fArr15 = this.comBuilding;
            float fMin2 = this.commercial[i24];
            if (fMin2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                fMin2 = Math.min(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fArr4[i26] - (fArr5[i26] * 0.8f));
            }
            fArr15[i24] = fMin2;
            float[] fArr16 = this.indBuilding;
            float fMin3 = this.industrial[i24];
            if (fMin3 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                fMin3 = Math.min(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fArr4[i27] - (fArr5[i27] * 0.8f));
            }
            fArr16[i24] = fMin3;
        }
    }

    public final void applyExternalTargets(float[] fArr) {
        int iCountActivePassengerTransport = ((DefaultAirport) this.city.getComponent(19)).countActivePassengerTransport();
        int index = getIndex(2, 1);
        fArr[index] = fArr[index] + (iCountActivePassengerTransport / 10.0f);
        float fFloor = (float) Math.floor(((DefaultInfluence) this.city.getComponent(2)).getGeneralInfluence(InfluenceType.CULTURE.ordinal()));
        int index2 = getIndex(2, 0);
        fArr[index2] = fArr[index2] + (fFloor / 10000.0f);
    }

    public long getOverallOffset(int i) {
        return ((long) this.offset[(i / 3) + ((i % 3) * 3)]) + getVarOffset(i);
    }

    public final long getVarOffset(int i) {
        return getVarValue(VAR_OFFSET_NAMES[i]);
    }

    public final long getVarValue(String str) {
        Long l = this.city.getTransitionVars().get(str);
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    @Override // info.flowersoft.theotown.city.components.Demand
    public float getResidential(int i) {
        return this.residential[i];
    }

    @Override // info.flowersoft.theotown.city.components.Demand
    public float getCommercial(int i) {
        return this.commercial[i];
    }

    @Override // info.flowersoft.theotown.city.components.Demand
    public float getIndustrial(int i) {
        return this.industrial[i];
    }

    @Override // info.flowersoft.theotown.city.components.Demand
    public float getBuildingDemand(int i, int i2) {
        if (i == 0) {
            return this.resBuilding[i2];
        }
        if (i == 1) {
            return this.comBuilding[i2];
        }
        if (i == 2) {
            return this.indBuilding[i2];
        }
        throw new IllegalArgumentException("Type " + i + " is unknown");
    }

    public void setOffset(int i, int i2) {
        this.offset[i] = i2;
    }

    public int getOffset(int i) {
        return this.offset[i];
    }

    public void setMultiplier(int i, int i2) {
        this.multiplier[i] = i2;
    }

    public int getMultiplier(int i) {
        return this.multiplier[i];
    }

    public final float relax(float f) {
        return Math.signum(f) * 200.0f * ((float) Math.log((Math.abs(f) / 200.0f) + 1.0f));
    }

    public final float getFactor(int i, int i2, long j, float f) {
        if (Math.abs(f) < 10.0f) {
            return 1.0f;
        }
        int i3 = (i2 * 7) + 60;
        float fCos = (((float) Math.cos((((j % ((long) i3)) - ((long) (i * 10))) / i3) * 2.0f * 3.1415927f)) * 0.5f) + 0.5f;
        return (fCos * fCos * ((Math.abs(f) - 10.0f) / Math.abs(f))) + (10.0f / Math.abs(f));
    }
}
