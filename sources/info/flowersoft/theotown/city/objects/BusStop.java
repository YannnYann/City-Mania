package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class BusStop {
    public BusStopDraft draft;
    public long lastVisit;
    public final int level;
    public float usage;
    public int waiting;
    public int x;
    public int y;

    public BusStop(JsonReader jsonReader) throws MissingDraftException, IOException {
        this.lastVisit = 0L;
        this.usage = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.waiting = 0;
        int iNextInt = 0;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "id":
                    this.draft = (BusStopDraft) Drafts.getOrThrow(jsonReader.nextString(), BusStopDraft.class);
                    break;
                case "lvl":
                    iNextInt = jsonReader.nextInt();
                    break;
                case "usage":
                    this.usage = jsonReader.nextFloat();
                    break;
                case "last visit":
                    this.lastVisit = jsonReader.nextLong();
                    break;
                case "waiting":
                    this.waiting = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        this.level = iNextInt;
    }

    public void save(JsonWriter jsonWriter, boolean z) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.draft.id);
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
        if (this.level != 0) {
            jsonWriter.name("lvl").value(this.level);
        }
        if (z) {
            jsonWriter.name("last visit").value(this.lastVisit);
            jsonWriter.name("usage").value(this.usage);
            jsonWriter.name("waiting").value(this.waiting);
        }
    }

    public BusStop(BusStopDraft busStopDraft, int i, int i2, int i3) {
        this.draft = busStopDraft;
        this.x = i;
        this.y = i2;
        this.level = i3;
    }

    public BusStopDraft getDraft() {
        return this.draft;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public long getLastVisit() {
        return this.lastVisit;
    }

    public void setLastVisit(long j) {
        this.lastVisit = j;
    }

    public void removeWaiters(int i) {
        float fMin = Math.min((this.waiting * 2.0f) / this.draft.capacity, 1.0f);
        float f = this.usage;
        if (fMin > f) {
            this.usage = (f * 0.5f) + (fMin * 0.5f);
        } else {
            this.usage = (f * 0.9f) + (fMin * 0.1f);
        }
        this.waiting = Math.max(this.waiting - i, 0);
    }

    public int getWaiting() {
        return this.waiting;
    }

    public float getOverallUsage() {
        return Math.max(this.usage, this.waiting / this.draft.capacity);
    }

    public void setUsage(float f) {
        this.usage = f;
        this.waiting = 0;
    }

    public boolean addWaiter() {
        return addWaiters(1);
    }

    public boolean addWaiters(int i) {
        int i2 = this.waiting + i;
        this.waiting = i2;
        return i2 <= this.draft.capacity;
    }

    public final int getOffset() {
        return Math.max(Math.min(Math.round(((this.draft.frames.length / 4) + 1) * this.usage), (this.draft.frames.length / 4) - 1), 0) * 4;
    }

    public final boolean lightsOn(Drawer drawer) {
        return 1.0f - Math.abs(1.0f - ((((drawer.daytime + 0.05f) + (((float) ((Math.abs(((long) this.y) + (((long) Math.floor(drawer.daytimeDay + 0.5d)) * 2987)) % 10) - 5)) / 200.0f)) % 1.0f) * 2.0f)) < 0.4f;
    }

    public void drawBack(Drawer drawer, int i) {
        drawer.engine.setType(16);
        if (!Direction.isIn(2, i)) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, this.draft.frames[getOffset() + 1]);
        }
        if (!Direction.isIn(4, i)) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, this.draft.frames[getOffset() + 2]);
        }
        if (this.draft.animationSpots != null) {
            boolean zLightsOn = lightsOn(drawer);
            Drawing drawing = Drawing.getInstance();
            BusStopDraft busStopDraft = this.draft;
            drawing.drawAnimations(drawer, busStopDraft.animationSpots, busStopDraft.animationSpotIndices, i, i, drawer.time / 200.0f, drawer.animationSpotFlags, zLightsOn);
        }
    }

    public void drawFront(Drawer drawer, int i) {
        drawer.engine.setType(16);
        if (!Direction.isIn(8, i)) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, this.draft.frames[getOffset() + 3]);
        }
        if (!Direction.isIn(1, i)) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, this.draft.frames[getOffset()]);
        }
        if (this.draft.animationFGSpots != null) {
            boolean zLightsOn = lightsOn(drawer);
            Drawing drawing = Drawing.getInstance();
            BusStopDraft busStopDraft = this.draft;
            drawing.drawAnimations(drawer, busStopDraft.animationFGSpots, busStopDraft.animationFGSpotIndices, i, i, drawer.time / 200.0f, drawer.animationSpotFlags, zLightsOn);
        }
    }
}
