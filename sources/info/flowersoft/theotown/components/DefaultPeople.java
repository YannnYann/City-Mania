package info.flowersoft.theotown.components;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.draft.BuildingType;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultPeople extends People {
    public CoverageCalculator coverageCalculator;
    public DefaultManagement management;
    public final float[] people;
    public final float[] peopleNeededSpace;
    public long peopleUponRestart;

    private float relax(float f) {
        return f * 0.1f;
    }

    public DefaultPeople() {
        this.peopleUponRestart = -1L;
        this.people = new float[3];
        this.peopleNeededSpace = new float[3];
    }

    public DefaultPeople(JsonReader jsonReader) throws IOException {
        this();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "level0":
                    this.people[0] = Math.max(jsonReader.nextFloat(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    break;
                case "level1":
                    this.people[1] = Math.max(jsonReader.nextFloat(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    break;
                case "level2":
                    this.people[2] = Math.max(jsonReader.nextFloat(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    break;
                case "p0":
                    this.peopleUponRestart = jsonReader.nextLong();
                    break;
                case "needed space":
                    jsonReader.beginArray();
                    for (int i = 0; i < 3; i++) {
                        this.peopleNeededSpace[i] = jsonReader.nextFloat();
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

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("level0").value(this.people[0]);
        jsonWriter.name("level1").value(this.people[1]);
        jsonWriter.name("level2").value(this.people[2]);
        jsonWriter.name("needed space").beginArray();
        for (int i = 0; i < 3; i++) {
            jsonWriter.value(this.peopleNeededSpace[i]);
        }
        jsonWriter.endArray();
        if (this.peopleUponRestart >= 0) {
            jsonWriter.name("p0").value(this.peopleUponRestart);
        }
    }

    public long getPeopleUponRestart() {
        return this.peopleUponRestart;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        DefaultManagement defaultManagement = (DefaultManagement) this.city.getComponent(3);
        this.management = defaultManagement;
        this.coverageCalculator = defaultManagement.getCoverageCalculator();
        super.prepare();
        nextDay();
    }

    public float countPeopleInBuilding(Building building) {
        int jobs;
        if (!building.isWorking()) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (this.management == null) {
            this.management = (DefaultManagement) this.city.getComponent(3);
        }
        BuildingSurvey buildingSurvey = this.management.getBuildingSurvey();
        int level = building.getLevel();
        if (building.getBuildingType() == BuildingType.RESIDENTIAL) {
            jobs = buildingSurvey.getResidentialSpace(level, 0);
        } else {
            jobs = buildingSurvey.getJobs(level, 0);
        }
        return (building.getOverallPeople() * this.people[level]) / Math.max(jobs, 1.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void calculate(info.flowersoft.theotown.city.components.BuildingSurvey r20) {
        /*
            Method dump skipped, instruction units count: 601
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.DefaultPeople.calculate(info.flowersoft.theotown.city.components.BuildingSurvey):void");
    }

    public final int getReachedEducationAmount(CoverageCalculator coverageCalculator, int i) {
        return Math.min(coverageCalculator.getReachedAmount(i), coverageCalculator.getProvidedAmount(i));
    }

    public void reset() {
        this.peopleUponRestart = getPeople(0) + getPeople(1) + getPeople(2);
    }

    @Override // info.flowersoft.theotown.city.components.People
    public int getPeople(int i) {
        return Math.round(this.people[i]);
    }

    public void addPeople(int i, int i2) {
        float[] fArr = this.people;
        fArr[i] = fArr[i] + i2;
    }

    @Override // info.flowersoft.theotown.city.components.People
    public float getPeopleNeededSpace(int i) {
        return this.peopleNeededSpace[i];
    }
}
