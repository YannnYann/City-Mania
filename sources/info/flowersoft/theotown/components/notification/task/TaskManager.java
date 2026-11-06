package info.flowersoft.theotown.components.notification.task;

import com.ironsource.C3647i2;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Saveable;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class TaskManager implements Saveable {
    public City city;
    public Task currentTask;
    public boolean disabled;
    public boolean hasNewTask;
    public long startValue;
    public long targetValue;
    public List<Task> tasks = new ArrayList();
    public Map<Task, String> taskToTag = new HashMap();
    public Map<String, Task> tagToTask = new HashMap();
    public int currentTaskIndex = -1;

    public TaskManager(City city) {
        this.city = city;
        buildTasks();
    }

    public final void buildTasks() {
        Translator translator = this.city.getTranslator();
        addTask(new ZoneTask(Resources.ICON_RESIDENTIAL, translator.translate(1049), Arrays.asList(Zones.getInstance().RESIDENTIAL0, Zones.getInstance().RESIDENTIAL1), 30, this.city), "res zone00");
        addTask(new ZoneTask(Resources.ICON_COMMERCIAL, translator.translate(172), Arrays.asList(Zones.getInstance().COMMERCIAL0, Zones.getInstance().COMMERCIAL1), 15, this.city), "com zone00");
        addTask(new ZoneTask(Resources.ICON_INDUSTRIAL, translator.translate(EventTypeExtended.EVENT_TYPE_EXTENDED_WATERFALL_FINISHED_VALUE), Arrays.asList(Zones.getInstance().INDUSTRIAL0, Zones.getInstance().INDUSTRIAL1, Zones.getInstance().FARM, Zones.getInstance().HARBOR), 15, this.city), "ind zone00");
        addTask(new RoadTask(Resources.ICON_ROAD, translator.translate(863), null, 10, this.city), "road00");
        addTask(new BuildingTypeTask(Resources.ICON_PARK, translator.translate(2230), Collections.singletonList(BuildingType.PARK), 2, this.city), "park00");
        addTask(new PeopleTask(Resources.ICON_INHABITANTS, translator.translate(3194), null, 100, this.city), "people00");
        addTask(new BudgetTask(Resources.ICON_MONEY, translator.translate(3058), 1, 5000L, this.city).growOnly(), "earn money00");
        addTask(new BudgetTask(Resources.ICON_MONEY, translator.translate(145), -1, 1000L, this.city).growOnly(), "spend money00");
    }

    public final void addTask(Task task, String str) {
        if (this.tagToTask.containsKey(str)) {
            throw new IllegalArgumentException("Duplicate tag " + str);
        }
        this.tasks.add(task);
        this.taskToTag.put(task, str);
        this.tagToTask.put(str, task);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "values":
                    jsonReader.beginArray();
                    this.startValue = jsonReader.nextLong();
                    this.targetValue = jsonReader.nextLong();
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "current task index":
                    this.currentTaskIndex = jsonReader.nextInt();
                    break;
                case "tasks":
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        Task task = this.tagToTask.get(jsonReader.nextName());
                        if (task != null) {
                            jsonReader.beginObject();
                            task.load(jsonReader);
                            jsonReader.endObject();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case "disabled":
                    this.disabled = jsonReader.nextBoolean();
                    break;
                case "current task":
                    this.currentTask = this.tagToTask.get(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("tasks").beginObject();
        for (int i = 0; i < this.tasks.size(); i++) {
            Task task = this.tasks.get(i);
            jsonWriter.name(this.taskToTag.get(task)).beginObject();
            task.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endObject();
        if (this.currentTask != null) {
            jsonWriter.name("current task").value(this.taskToTag.get(this.currentTask));
        }
        jsonWriter.name("current task index").value(this.currentTaskIndex);
        jsonWriter.name("values").beginArray();
        jsonWriter.value(this.startValue);
        jsonWriter.value(this.targetValue);
        jsonWriter.endArray();
        jsonWriter.name(C3647i2.e).value(this.disabled);
    }

    public boolean isActive() {
        return this.currentTask != null;
    }

    public Task getCurrentTask() {
        return this.currentTask;
    }

    public long getStartValue() {
        return this.startValue;
    }

    public long getTargetValue() {
        return this.targetValue;
    }

    public long getCurrentValue() {
        return this.currentTask.getValue();
    }

    public final void stopCurrentTask(boolean z) {
        Task task = this.currentTask;
        if (task != null) {
            task.stop(z);
            this.currentTask = null;
        }
    }

    public boolean hasNewTask() {
        boolean z = this.hasNewTask;
        this.hasNewTask = false;
        return z;
    }

    public void reset() {
        stopCurrentTask(false);
        this.currentTaskIndex = -1;
    }

    public boolean isDisabled() {
        return this.disabled;
    }

    public void setDisabled(boolean z) {
        this.disabled = z;
    }

    public void dismissCurrentTask() {
        stopCurrentTask(false);
    }

    public String getCurrentTaskId() {
        Task task = this.currentTask;
        return this.taskToTag.get(this.currentTask) + (task instanceof DefaultTask ? ((DefaultTask) task).getLevel() : -1);
    }

    public void update() {
        Resources.CONFIG.optJSONObject("task");
        Task task = this.currentTask;
        if (task == null) {
            return;
        }
        if (!task.isValid()) {
            stopCurrentTask(false);
        } else if (this.currentTask.getValue() >= this.targetValue) {
            stopCurrentTask(true);
        }
    }
}
