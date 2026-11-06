package info.flowersoft.theotown.components.notification.condition;

import info.flowersoft.theotown.city.City;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ConditionGroup extends Condition {
    public List<Condition> conditionList;
    public Operator operator;
    public boolean startValue;

    public interface Operator {
        boolean op(boolean z, boolean z2);
    }

    public ConditionGroup(City city) {
        this(new Operator() { // from class: info.flowersoft.theotown.components.notification.condition.ConditionGroup.1
            @Override // info.flowersoft.theotown.components.notification.condition.ConditionGroup.Operator
            public boolean op(boolean z, boolean z2) {
                return z && z2;
            }
        }, true, city);
    }

    public ConditionGroup(Operator operator, boolean z, City city) {
        super(city);
        this.conditionList = new ArrayList();
        this.operator = operator;
        this.startValue = z;
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
    public boolean evaluate() {
        boolean zOp = this.startValue;
        Iterator<Condition> it = this.conditionList.iterator();
        while (it.hasNext()) {
            zOp = this.operator.op(zOp, it.next().evaluate());
        }
        return zOp;
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        Iterator<Condition> it = this.conditionList.iterator();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().startsWith("condition") && it.hasNext()) {
                jsonReader.beginObject();
                it.next().load(jsonReader);
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        int i = 0;
        for (Condition condition : this.conditionList) {
            jsonWriter.name("condition" + i).beginObject();
            condition.save(jsonWriter);
            jsonWriter.endObject();
            i++;
        }
    }

    public void addCondition(Condition condition) {
        this.conditionList.add(condition);
    }

    public boolean removeCondition(Condition condition) {
        return this.conditionList.remove(condition);
    }
}
