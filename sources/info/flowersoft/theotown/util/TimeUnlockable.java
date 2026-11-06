package info.flowersoft.theotown.util;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.resources.InternetTime;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class TimeUnlockable implements Saveable {
    public boolean locked;
    public boolean paused;
    public long startMS;
    public long waitingTime;

    public TimeUnlockable(long j) {
        this.locked = true;
        this.startMS = InternetTime.getInstance().getTime();
        this.waitingTime = j;
    }

    public TimeUnlockable(JsonReader jsonReader) throws IOException {
        this.locked = true;
        load(jsonReader);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "locked":
                    this.locked = jsonReader.nextBoolean();
                    break;
                case "paused":
                    this.paused = jsonReader.nextBoolean();
                    break;
                case "start ms":
                    this.startMS = jsonReader.nextLong();
                    break;
                case "waiting time":
                    this.waitingTime = jsonReader.nextLong();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("start ms").value(this.startMS);
        jsonWriter.name("waiting time").value(this.waitingTime);
        jsonWriter.name("locked").value(this.locked);
        jsonWriter.name(C3522b4.i.e0).value(this.paused);
    }

    public boolean isUnlocked() {
        if (this.locked) {
            this.locked = getRemainingTimeMS() > 0;
        }
        return !this.locked;
    }

    public long getRemainingTimeMS() {
        if (this.paused) {
            return this.waitingTime;
        }
        long time = (this.startMS + this.waitingTime) - InternetTime.getInstance().getTime();
        if (time < 0) {
            return 0L;
        }
        if (time <= this.waitingTime) {
            return time;
        }
        this.startMS = InternetTime.getInstance().getTime();
        return this.waitingTime;
    }

    public synchronized void reduceWaitingTime(long j) {
        this.waitingTime = Math.max(this.waitingTime - j, 0L);
    }

    public void unlockImmediately() {
        this.locked = false;
    }

    public void lock(long j) {
        this.startMS = InternetTime.getInstance().getTime();
        this.waitingTime = j;
        this.locked = j > 0;
    }

    public boolean isPaused() {
        return this.paused;
    }

    public synchronized void pause() {
        if (!this.paused) {
            this.waitingTime = getRemainingTimeMS();
            this.paused = true;
        }
    }

    public synchronized void resume() {
        if (this.paused) {
            this.startMS = InternetTime.getInstance().getTime();
            this.paused = false;
        }
    }

    public static TimeUnlockable createUnlocked() {
        TimeUnlockable timeUnlockable = new TimeUnlockable(0L);
        timeUnlockable.unlockImmediately();
        return timeUnlockable;
    }
}
