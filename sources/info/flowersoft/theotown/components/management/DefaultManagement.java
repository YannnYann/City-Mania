package info.flowersoft.theotown.components.management;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.Demand;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.BuildCommandResult;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.components.decoration.DecorationBuilder;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.InfoGrid;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultManagement extends CityComponent {
    public final ArrayDeque<BuildCommandResult> buildResults;
    public BuildingSurvey buildingSurvey;
    public final BuildingWorker buildingWorker;
    public final CoverageCalculator coverageCalculator;
    public final DecorationBuilder decorationBuilder;
    public final Queue<Runnable> finalActions;
    public final HappinessCalculator happinessCalculator;
    public final AugmentedHappinessModifier happinessModifier;
    public final HappinessWorker happinessWorker;
    public CityModifier modifier;
    public InfoGrid peopleInfoGrid;
    public final RoadWorker roadWorker;
    public final TreeWorker treeWorker;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 3;
    }

    public final float weight(float f) {
        return f;
    }

    public DefaultManagement(City city) {
        this.finalActions = new LinkedList();
        this.tiles = city.getTiles();
        this.buildingSurvey = new BuildingSurvey();
        this.happinessModifier = new AugmentedHappinessModifier();
        this.happinessCalculator = new HappinessCalculator();
        CoverageCalculator coverageCalculator = new CoverageCalculator();
        this.coverageCalculator = coverageCalculator;
        this.decorationBuilder = new DecorationBuilder();
        this.happinessWorker = new HappinessWorker();
        this.buildResults = new ArrayDeque<>();
        this.buildingWorker = new BuildingWorker(city, coverageCalculator);
        this.roadWorker = new RoadWorker(city);
        this.treeWorker = new TreeWorker(city);
    }

    public DefaultManagement(JsonReader jsonReader, City city) throws IOException {
        this(city);
        this.buildResults.clear();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "happiness modifier":
                    jsonReader.beginObject();
                    this.happinessModifier.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "survey":
                    jsonReader.beginObject();
                    this.buildingSurvey = new BuildingSurvey(jsonReader);
                    jsonReader.endObject();
                    break;
                case "attribute containers":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginArray();
                        Building building = this.tiles.getBuilding(jsonReader.nextInt(), jsonReader.nextInt());
                        jsonReader.beginObject();
                        if (building != null) {
                            ConcreteAttributeContainer concreteAttributeContainer = new ConcreteAttributeContainer();
                            concreteAttributeContainer.load(jsonReader);
                            building.setAttributeContainer(concreteAttributeContainer);
                        } else {
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        jsonReader.endArray();
                    }
                    jsonReader.endArray();
                    break;
                case "building worker":
                    jsonReader.beginObject();
                    this.buildingWorker.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "build results":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        this.buildResults.addLast(new BuildCommandResult(jsonReader));
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "people info grid":
                    this.peopleInfoGrid = new InfoGrid(jsonReader);
                    break;
                case "road worker":
                    jsonReader.beginObject();
                    this.roadWorker.load(jsonReader);
                    jsonReader.endObject();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        ConcreteAttributeContainer concreteAttributeContainer;
        jsonWriter.name("survey").beginObject();
        this.buildingSurvey.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("build results").beginArray();
        synchronized (this.buildResults) {
            try {
                for (BuildCommandResult buildCommandResult : this.buildResults) {
                    jsonWriter.beginObject();
                    buildCommandResult.save(jsonWriter);
                    jsonWriter.endObject();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("attribute containers").beginArray();
        for (int i = 0; i < this.city.getBuildings().size(); i++) {
            Building building = this.city.getBuildings().get(i);
            if (building != null && (concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer()) != null) {
                jsonWriter.beginArray();
                jsonWriter.value(building.getX());
                jsonWriter.value(building.getY());
                jsonWriter.beginObject();
                concreteAttributeContainer.save(jsonWriter);
                jsonWriter.endObject();
                jsonWriter.endArray();
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("happiness modifier").beginObject();
        this.happinessModifier.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("building worker").beginObject();
        this.buildingWorker.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("road worker").beginObject();
        this.roadWorker.save(jsonWriter);
        jsonWriter.endObject();
    }

    public AugmentedHappinessModifier getHappinessModifier() {
        return this.happinessModifier;
    }

    public BuildingWorker getBuildingWorker() {
        return this.buildingWorker;
    }

    public RoadWorker getRoadWorker() {
        return this.roadWorker;
    }

    public BuildingSurvey getBuildingSurvey() {
        return this.buildingSurvey;
    }

    public HappinessWorker getHappinessWorker() {
        return this.happinessWorker;
    }

    public Attribute getLowestHappiness() {
        return this.happinessWorker.lowestHappiness;
    }

    public float getLowestHappinessValue() {
        return this.happinessWorker.lowestHappinessValue;
    }

    public Building getLowestHappinessBuilding() {
        return this.happinessWorker.lowestHappinessBuilding;
    }

    public InfoGrid getPeopleInfoGrid() {
        return this.peopleInfoGrid;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        if (this.peopleInfoGrid == null) {
            this.peopleInfoGrid = new InfoGrid(city.getWidth(), city.getHeight(), 4);
            for (Building building : city.getBuildings()) {
                BuildingDraft draft = building.getDraft();
                this.peopleInfoGrid.add(building.getX(), building.getY(), draft.level * (draft.habitants + draft.workers));
            }
        }
        this.modifier = new CityModifier(city, true);
        addWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.management.DefaultManagement.1
            @Override // java.lang.Runnable
            public void run() {
                DefaultManagement.this.manage();
            }
        }, true));
        addWorker(this.buildingWorker);
        addWorker(this.roadWorker);
        addWorker(this.treeWorker);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        super.nextDay();
        this.happinessModifier.damp();
    }

    public final void manage() {
        this.coverageCalculator.calculate();
        BuildingSurvey buildingSurvey = this.buildingSurvey;
        buildingSurvey.set(this.happinessWorker.work(buildingSurvey));
        boolean zIsActive = ((DefaultCatastrophe) this.city.getComponent(6)).isActive();
        Demand demand = (Demand) this.city.getComponent(10);
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        for (int i = 0; i < 3; i++) {
            float buildingDemand = demand.getBuildingDemand(0, i);
            float buildingDemand2 = demand.getBuildingDemand(1, i);
            float buildingDemand3 = demand.getBuildingDemand(2, i);
            float fWeight = weight(buildingDemand);
            float fWeight2 = weight(buildingDemand2);
            float fWeight3 = weight(buildingDemand3);
            if (!zIsActive) {
                probabilitySelector.insert(getBuildingCommand(Zones.getInstance().RESIDENTIAL0, i, buildingDemand), fWeight);
                probabilitySelector.insert(getBuildingCommand(Zones.getInstance().COMMERCIAL0, i, buildingDemand2), fWeight2);
                probabilitySelector.insert(getBuildingCommand(Zones.getInstance().INDUSTRIAL0, i, buildingDemand3), fWeight3);
            }
            if (this.city.getGameMode().peopleMayLeave()) {
                probabilitySelector.insert(getLeaveCommand(Zones.getInstance().RESIDENTIAL0, i, buildingDemand), -fWeight);
                probabilitySelector.insert(getLeaveCommand(Zones.getInstance().COMMERCIAL0, i, buildingDemand2), -fWeight2);
                probabilitySelector.insert(getLeaveCommand(Zones.getInstance().INDUSTRIAL0, i, buildingDemand3), -fWeight3);
            }
        }
        probabilitySelector.insert(new EmptyBuildCommand(this.city, this.happinessCalculator, this.modifier, this.decorationBuilder), 1.0f);
        if (probabilitySelector.hasResult()) {
            BuildCommand buildCommand = (BuildCommand) probabilitySelector.getResult();
            BuildCommandResult buildCommandResultRun = buildCommand.run();
            if (buildCommandResultRun != null) {
                appendResult(buildCommandResultRun);
            }
            if (buildCommand.hasFinalActions()) {
                synchronized (this.finalActions) {
                    this.finalActions.addAll(buildCommand.getFinalActions());
                }
            }
        }
    }

    public final BuildingBuildCommand getBuildingCommand(ZoneDraft zoneDraft, int i, float f) {
        BuildingBuildCommand buildingBuildCommand = new BuildingBuildCommand(this.city, this.happinessCalculator, this.modifier, this.decorationBuilder);
        buildingBuildCommand.setTarget(zoneDraft, i, f);
        return buildingBuildCommand;
    }

    public final LeaveBuildCommand getLeaveCommand(ZoneDraft zoneDraft, int i, float f) {
        LeaveBuildCommand leaveBuildCommand = new LeaveBuildCommand(this.city, this.happinessCalculator, this.modifier, this.decorationBuilder);
        leaveBuildCommand.setTarget(zoneDraft, i, f);
        return leaveBuildCommand;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        this.happinessCalculator.setCity(this.city);
        this.happinessCalculator.setHappinessModifier(this.happinessModifier);
        this.coverageCalculator.setCity(this.city);
        this.decorationBuilder.setCity(this.city);
        this.happinessWorker.setCity(this.city, this.happinessCalculator);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void finishPrepare() {
        this.city.getComponent(2).finishPrepare();
        this.coverageCalculator.calculate();
        BuildingSurvey buildingSurvey = this.buildingSurvey;
        buildingSurvey.set(this.happinessWorker.work(buildingSurvey));
        this.buildingWorker.prepare();
        this.roadWorker.prepare();
        this.treeWorker.prepare();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        int i;
        super.update();
        if (this.finalActions.isEmpty()) {
            return;
        }
        long jMillis = TimeUtils.millis();
        synchronized (this.finalActions) {
            i = 0;
            while (true) {
                try {
                    if (this.finalActions.isEmpty() || TimeUtils.millis() - jMillis >= 5) {
                        if (this.finalActions.size() > 64) {
                        }
                    }
                    this.finalActions.poll().run();
                    i++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Gdx.app.debug("Management", "Spend overall time of " + (TimeUtils.millis() - jMillis) + "ms in final actions, processed " + i + ", " + this.finalActions.size() + " left");
    }

    public HappinessCalculator getHappinessCalculator() {
        return this.happinessCalculator;
    }

    public CoverageCalculator getCoverageCalculator() {
        return this.coverageCalculator;
    }

    public final void appendResult(BuildCommandResult buildCommandResult) {
        synchronized (this.buildResults) {
            while (this.buildResults.size() >= 32) {
                try {
                    this.buildResults.removeFirst();
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.buildResults.addLast(buildCommandResult);
        }
    }

    public BuildCommandResult getLastBuildResult() {
        synchronized (this.buildResults) {
            try {
                if (this.buildResults.isEmpty()) {
                    return null;
                }
                return this.buildResults.getLast();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public List<BuildCommandResult> getBuildResults() {
        ArrayList arrayList;
        synchronized (this.buildResults) {
            arrayList = new ArrayList(this.buildResults);
        }
        return arrayList;
    }
}
