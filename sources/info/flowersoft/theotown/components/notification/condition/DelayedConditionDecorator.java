package info.flowersoft.theotown.components.notification.condition;

import info.flowersoft.theotown.components.DefaultDate;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class DelayedConditionDecorator extends ConditionDecorator {
    public long delayDays;
    public boolean isTriggered;
    public long triggerDay;

    public DelayedConditionDecorator(Condition condition, long j) {
        super(condition);
        this.delayDays = j;
        this.isTriggered = false;
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "condition":
                    jsonReader.beginObject();
                    this.condition.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "delayDays":
                    this.delayDays = jsonReader.nextLong();
                    break;
                case "triggerDay":
                    this.triggerDay = jsonReader.nextLong();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("delayDays").value(this.delayDays);
        jsonWriter.name("triggerDay").value(this.triggerDay);
        jsonWriter.name("condition").beginObject();
        this.condition.save(jsonWriter);
        jsonWriter.endObject();
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
    public boolean evaluate() {
        if (this.condition.evaluate()) {
            long absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
            if (!this.isTriggered) {
                this.isTriggered = true;
                this.triggerDay = absoluteDay;
            }
            return absoluteDay - this.triggerDay >= this.delayDays;
        }
        this.isTriggered = false;
        return false;
    }
}
