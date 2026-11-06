package info.flowersoft.theotown.city.components;

import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class Loan {
    public long estate;
    public long issuedDay;
    public long pricePerMonth;
    public long targetDay;

    public Loan(long j, long j2, long j3, long j4) {
        this.issuedDay = j;
        this.targetDay = j2;
        this.pricePerMonth = j3;
        this.estate = j4;
    }

    public Loan(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("issued day")) {
                this.issuedDay = jsonReader.nextLong();
            } else if (strNextName.equals("target day")) {
                this.targetDay = jsonReader.nextLong();
            } else if (strNextName.equals("price per month")) {
                this.pricePerMonth = jsonReader.nextLong();
            } else if (strNextName.equals("estate")) {
                this.estate = jsonReader.nextLong();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("issued day").value(this.issuedDay);
        jsonWriter.name("target day").value(this.targetDay);
        jsonWriter.name("price per month").value(this.pricePerMonth);
        jsonWriter.name("estate").value(this.estate);
    }

    public long getIssuedDay() {
        return this.issuedDay;
    }

    public long getTargetDay() {
        return this.targetDay;
    }

    public long getPricePerMonth() {
        return this.pricePerMonth;
    }

    public long getEstate() {
        return this.estate;
    }
}
