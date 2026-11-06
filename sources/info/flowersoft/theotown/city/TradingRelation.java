package info.flowersoft.theotown.city;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class TradingRelation implements Saveable {
    public long bodyDisposalExport;
    public long energyExport;
    public String id;
    public long wasteDisposalExport;
    public long waterExport;

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "energy":
                    this.energyExport = jsonReader.nextLong();
                    break;
                case "body disposal":
                    this.bodyDisposalExport = jsonReader.nextLong();
                    break;
                case "id":
                    if (jsonReader.peek() == 12) {
                        jsonReader.skipValue();
                        this.id = "<unset>";
                        break;
                    } else {
                        this.id = jsonReader.nextString();
                        break;
                    }
                    break;
                case "water":
                    this.waterExport = jsonReader.nextLong();
                    break;
                case "waste disposal":
                    this.wasteDisposalExport = jsonReader.nextLong();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.id);
        jsonWriter.name("energy").value(this.energyExport);
        jsonWriter.name("water").value(this.waterExport);
        jsonWriter.name("waste disposal").value(this.wasteDisposalExport);
        jsonWriter.name("body disposal").value(this.bodyDisposalExport);
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    public long getEnergyExport() {
        return this.energyExport;
    }

    public void setEnergyExport(long j) {
        this.energyExport = j;
    }

    public long getWaterExport() {
        return this.waterExport;
    }

    public void setWaterExport(long j) {
        this.waterExport = j;
    }

    public long getWasteDisposalExport() {
        return this.wasteDisposalExport;
    }

    public void setWasteDisposalExport(long j) {
        this.wasteDisposalExport = j;
    }

    public long getBodyDisposalExport() {
        return this.bodyDisposalExport;
    }

    public void setBodyDisposalExport(long j) {
        this.bodyDisposalExport = j;
    }

    public TradingRelation createReversed(String str) {
        TradingRelation tradingRelation = new TradingRelation();
        tradingRelation.id = str;
        tradingRelation.energyExport = -this.energyExport;
        tradingRelation.waterExport = -this.waterExport;
        tradingRelation.wasteDisposalExport = -this.wasteDisposalExport;
        tradingRelation.bodyDisposalExport = -this.bodyDisposalExport;
        return tradingRelation;
    }
}
