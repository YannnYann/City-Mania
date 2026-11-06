package info.flowersoft.theotown.components.firework;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class FireworkParticle implements Saveable {
    public AnimationDraft draft;
    public int restLifeTime;
    public float x;
    public float xSpeed;
    public float y;
    public float ySpeed;
    public float z;
    public float zSpeed;

    public FireworkParticle(JsonReader jsonReader) throws IOException {
        load(jsonReader);
    }

    public FireworkParticle(AnimationDraft animationDraft, float f, float f2, float f3, float f4, float f5, float f6, int i) {
        this.draft = animationDraft;
        this.x = f;
        this.y = f2;
        this.z = f3;
        this.xSpeed = f4;
        this.ySpeed = f5;
        this.zSpeed = f6;
        this.restLifeTime = i;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "id":
                    this.draft = (AnimationDraft) Drafts.ALL.get(jsonReader.nextString());
                    break;
                case "pos":
                    jsonReader.beginArray();
                    this.x = jsonReader.nextFloat();
                    this.y = jsonReader.nextFloat();
                    this.z = jsonReader.nextFloat();
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "vel":
                    jsonReader.beginArray();
                    this.xSpeed = jsonReader.nextFloat();
                    this.ySpeed = jsonReader.nextFloat();
                    this.zSpeed = jsonReader.nextFloat();
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

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.draft.id);
        jsonWriter.name("pos").beginArray();
        jsonWriter.value(this.x);
        jsonWriter.value(this.y);
        jsonWriter.value(this.z);
        jsonWriter.endArray();
        jsonWriter.name("vel").beginArray();
        jsonWriter.value(this.xSpeed);
        jsonWriter.value(this.ySpeed);
        jsonWriter.value(this.zSpeed);
        jsonWriter.endArray();
    }
}
