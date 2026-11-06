package info.flowersoft.theotown.city;

import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class CityInfo implements Saveable {
    public long creationTime;
    public long saveTime;
    public String tutorialStage = null;
    public long playtimeSeconds = 0;
    public boolean winter = false;

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "winter":
                    this.winter = jsonReader.nextBoolean();
                    break;
                case "tutorial stage":
                    this.tutorialStage = jsonReader.nextString();
                    break;
                case "save time":
                    this.saveTime = jsonReader.nextLong();
                    break;
                case "creation":
                    this.creationTime = jsonReader.nextLong();
                    break;
                case "playtime":
                    this.playtimeSeconds = jsonReader.nextLong();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        if (this.tutorialStage != null) {
            jsonWriter.name("tutorial stage").value(this.tutorialStage);
        }
        jsonWriter.name("playtime").value(this.playtimeSeconds);
        jsonWriter.name("winter").value(this.winter);
        jsonWriter.name("creation").value(this.creationTime);
        jsonWriter.name("save time").value(this.saveTime);
    }
}
