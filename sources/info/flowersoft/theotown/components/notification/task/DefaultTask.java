package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DefaultTask implements Task {
    public City city;
    public long growOffset;
    public boolean growOnly;
    public int icon;
    public long lastRawValue;
    public long lastValue;
    public boolean once;
    public boolean running;
    public long startValue;
    public int successCounter;
    public long targetValue;
    public String text;

    public abstract long getRawValue();

    public DefaultTask(int i, String str, City city) {
        this.city = city;
        this.icon = i;
        this.text = str;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "grow offset":
                    this.growOffset = jsonReader.nextLong();
                    break;
                case "success ctr":
                    this.successCounter = jsonReader.nextInt();
                    break;
                case "values":
                    jsonReader.beginArray();
                    this.startValue = jsonReader.nextLong();
                    this.targetValue = jsonReader.nextLong();
                    this.lastValue = jsonReader.nextLong();
                    this.lastRawValue = jsonReader.nextLong();
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "running":
                    this.running = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        if (this.running) {
            jsonWriter.name("running").value(this.running);
        }
        if (this.successCounter != 0) {
            jsonWriter.name("success ctr").value(this.successCounter);
        }
        jsonWriter.name("values").beginArray();
        jsonWriter.value(this.startValue);
        jsonWriter.value(this.targetValue);
        jsonWriter.value(this.lastValue);
        jsonWriter.value(this.lastRawValue);
        jsonWriter.endArray();
        if (this.growOffset != 0) {
            jsonWriter.name("grow offset").value(this.growOffset);
        }
    }

    public int getLevel() {
        return this.successCounter;
    }

    public DefaultTask growOnly() {
        this.growOnly = true;
        return this;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public final long getValue() {
        long j;
        long rawValue = getRawValue();
        if (this.running) {
            long j2 = this.growOffset;
            long j3 = rawValue + j2;
            if (this.growOnly) {
                long j4 = this.lastRawValue;
                if (rawValue < j4) {
                    long j5 = j2 + (j4 - rawValue);
                    this.growOffset = j5;
                    j3 = rawValue + j5;
                }
            }
            long jAbs = j3 - this.lastValue;
            if (Math.abs(jAbs) > 1) {
                jAbs /= 100;
                if (jAbs == 0) {
                    long j6 = j3 - this.lastValue;
                    jAbs = j6 / Math.abs(j6);
                }
            }
            j = this.lastValue + jAbs;
        } else {
            j = rawValue;
        }
        this.lastValue = j;
        this.lastRawValue = rawValue;
        return j;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public boolean isValid() {
        return this.running || !this.once || this.successCounter == 0;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public void start() {
        this.startValue = getRawValue();
        this.targetValue = getTargetValue();
        this.lastValue = this.startValue;
        this.running = true;
        this.growOffset = 0L;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public void stop(boolean z) {
        if (z) {
            this.successCounter++;
        }
        this.running = false;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public int getIcon() {
        return this.icon;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public String getText() {
        return this.text;
    }
}
