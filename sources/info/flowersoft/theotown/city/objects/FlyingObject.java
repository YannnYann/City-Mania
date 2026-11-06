package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.draft.SmokeDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class FlyingObject implements Saveable {
    public int controllerId;
    public long data;
    public long data2;
    public int dir;
    public FlyingObjectDraft draft;
    public int drawRadius;
    public int frame;
    public float height;
    public float nextHeight;
    public float p;
    public float speed;
    public SmokeDraft vapor = (SmokeDraft) Drafts.get("$watervapor00", SmokeDraft.class);
    public int visibleDir;
    public int x;
    public int y;

    public final float movePositionX(int i, float f) {
        if (i == 0) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return f * (i <= 2 ? 16.0f : -16.0f);
    }

    public FlyingObject(FlyingObjectDraft flyingObjectDraft, int i, int i2, int i3, int i4, int i5) {
        this.draft = flyingObjectDraft;
        this.x = i;
        this.y = i2;
        this.dir = i3;
        this.visibleDir = i3;
        float f = i4;
        this.height = f;
        this.nextHeight = f;
        this.controllerId = i5;
        this.drawRadius = flyingObjectDraft.drawRadius;
    }

    public FlyingObject(JsonReader jsonReader) throws IOException {
        load(jsonReader);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "height":
                    this.height = jsonReader.nextFloat();
                    break;
                case "p":
                    this.p = jsonReader.nextInt() / 1000.0f;
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "id":
                    String strNextString = jsonReader.nextString();
                    FlyingObjectDraft flyingObjectDraft = (FlyingObjectDraft) Drafts.ALL.get(strNextString);
                    this.draft = flyingObjectDraft;
                    if (flyingObjectDraft == null) {
                        throw new IllegalArgumentException("No flying object " + strNextString + " could be found.");
                    }
                    this.drawRadius = flyingObjectDraft.drawRadius;
                    break;
                    break;
                case "dir":
                    this.dir = jsonReader.nextInt();
                    break;
                case "data":
                    this.data = jsonReader.nextLong();
                    break;
                case "data2":
                    this.data2 = jsonReader.nextLong();
                    break;
                case "frame":
                    this.frame = jsonReader.nextInt();
                    break;
                case "speed":
                    this.speed = jsonReader.nextInt() / 1000.0f;
                    break;
                case "visible dir":
                    this.visibleDir = jsonReader.nextInt();
                    break;
                case "controller":
                    this.controllerId = jsonReader.nextInt();
                    break;
                case "next height":
                    this.nextHeight = jsonReader.nextFloat();
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
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
        jsonWriter.name("dir").value(this.dir);
        jsonWriter.name("visible dir").value(this.visibleDir);
        jsonWriter.name("height").value(this.height);
        jsonWriter.name("next height").value(this.nextHeight);
        jsonWriter.name("p").value((int) (this.p * 1000.0f));
        jsonWriter.name("speed").value((int) (this.speed * 1000.0f));
        jsonWriter.name("data").value(this.data);
        jsonWriter.name("data2").value(this.data2);
        jsonWriter.name("controller").value(this.controllerId);
        jsonWriter.name("frame").value(this.frame);
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = i;
    }

    public void flyTo(int i, int i2, float f) {
        if (this.p > 0.5f) {
            this.height = this.nextHeight;
            this.nextHeight = f;
            this.x += Direction.differenceX(this.dir);
            this.y += Direction.differenceY(this.dir);
        }
        this.dir = i;
        this.visibleDir = i2;
        this.p = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public void draw(Drawer drawer) {
        drawer.engine.setType(22);
        float f = this.p;
        float f2 = -((this.nextHeight * f) + ((1.0f - f) * this.height));
        int iRotateCW = Direction.rotateCW(this.dir, drawer.rotation);
        int i = this.draft.flyingType;
        if (i == 0) {
            drawHelicopter(16.0f, f2, iRotateCW, drawer);
        } else if (i == 1) {
            drawRocket(16.0f, f2, iRotateCW, drawer);
        } else {
            if (i != 2) {
                return;
            }
            drawAirplane(16.0f, f2, iRotateCW, drawer);
        }
    }

    public final float movePositionY(int i, float f) {
        if (i == 0) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return f * ((i * 2) % 16 <= 2 ? 8.0f : -8.0f);
    }

    public final void drawHelicopter(float f, float f2, int i, Drawer drawer) {
        float fMovePositionX = f + movePositionX(i, this.p);
        float fMovePositionY = f2 + movePositionY(i, this.p);
        int index = Direction.toIndex(this.visibleDir);
        int i2 = (((index - drawer.rotation) + 4) % 4) + (this.frame * 4);
        drawer.draw(Resources.IMAGE_WORLD, fMovePositionX, fMovePositionY, this.draft.frames[i2]);
        List<AnimationSpot> list = this.draft.animation;
        if (list == null || list.isEmpty()) {
            return;
        }
        drawer.engine.setAdditive(100);
        AnimationSpot animationSpot = this.draft.animation.get(0);
        if (animationSpot.isTargeted(i2)) {
            float f3 = this.speed;
            drawer.draw(Resources.IMAGE_WORLD, animationSpot.x + fMovePositionX, animationSpot.y + fMovePositionY, animationSpot.draft.frames[Math.min(Math.max(f3 < 0.5f ? ((((int) (f3 * 10.0f)) * (drawer.time / 10)) / 100) % 4 : ((drawer.time / 200) % 4) + 4, 0), 7)]);
        }
        drawer.engine.setAdditive(0);
        boolean zLightsOn = lightsOn(drawer);
        drawer.addShift(fMovePositionX, fMovePositionY);
        Drawing drawing = Drawing.getInstance();
        FlyingObjectDraft flyingObjectDraft = this.draft;
        List<AnimationSpot> list2 = flyingObjectDraft.animation;
        drawing.drawAnimations(drawer, list2, flyingObjectDraft.animationSpotIndices, index, i2, drawer.time / 200.0f, drawer.animationSpotFlags, null, null, null, zLightsOn, 1, list2.size());
        drawer.addShift(-fMovePositionX, -fMovePositionY);
    }

    public final void drawRocket(float f, float f2, int i, Drawer drawer) {
        Engine engine;
        Engine engine2 = drawer.engine;
        engine2.setClipRect(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, engine2.getVirtualWidth(), Math.round(drawer.getDrawingY((-((float) Math.ceil(drawer.terrainHeight))) * 12.0f)) - 1);
        float f3 = f - 4.0f;
        drawer.draw(Resources.IMAGE_WORLD, f3, f2, this.draft.frames[0]);
        List<AnimationSpot> list = this.draft.animation;
        if (list == null || list.isEmpty()) {
            engine = engine2;
        } else {
            AnimationSpot animationSpot = this.draft.animation.get(0);
            int iAbs = Math.abs(drawer.time / 100);
            int[] iArr = animationSpot.draft.frames;
            drawer.draw(Resources.IMAGE_WORLD, animationSpot.x + f3, animationSpot.y + f2, iArr[(iAbs % iArr.length) + (this.frame * 4)]);
            boolean zLightsOn = lightsOn(drawer);
            drawer.addShift(f3, f2);
            Drawing drawing = Drawing.getInstance();
            FlyingObjectDraft flyingObjectDraft = this.draft;
            List<AnimationSpot> list2 = flyingObjectDraft.animation;
            engine = engine2;
            drawing.drawAnimations(drawer, list2, flyingObjectDraft.animationSpotIndices, 0, 0, drawer.time / 200.0f, drawer.animationSpotFlags, null, null, null, zLightsOn, 1, list2.size());
            drawer.addShift(-f3, -f2);
        }
        engine.resetClipping();
    }

    public final void drawAirplane(float f, float f2, int i, Drawer drawer) {
        float fMovePositionX = f + movePositionX(i, this.p);
        float fMovePositionY = f2 + movePositionY(i, this.p);
        int index = Direction.toIndex(this.visibleDir);
        int i2 = (((index - drawer.rotation) + 4) % 4) + (this.frame * 4);
        Image image = Resources.IMAGE_WORLD;
        int[] iArr = this.draft.frames;
        drawer.draw(image, fMovePositionX, fMovePositionY, iArr[i2 % iArr.length]);
        if (this.draft.animation != null) {
            boolean zLightsOn = lightsOn(drawer);
            drawer.addShift(fMovePositionX, fMovePositionY);
            Drawing drawing = Drawing.getInstance();
            FlyingObjectDraft flyingObjectDraft = this.draft;
            drawing.drawAnimations(drawer, flyingObjectDraft.animation, flyingObjectDraft.animationSpotIndices, index, i2, drawer.time / 200.0f, drawer.animationSpotFlags, zLightsOn);
            drawer.addShift(-fMovePositionX, -fMovePositionY);
        }
    }

    public final boolean lightsOn(Drawer drawer) {
        return 1.0f - Math.abs(1.0f - ((((drawer.daytime + 0.05f) + (((float) ((Math.abs(((long) Math.floor(drawer.daytimeDay + 0.5d)) * 2987) % 10) - 5)) / 200.0f)) % 1.0f) * 2.0f)) < 0.4f;
    }

    public void update(float f) {
        this.p = Math.min(1.0f, this.p + (f * 1.5f * this.speed));
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getActualX() {
        return this.x + Direction.differenceX(this.dir);
    }

    public int getActualY() {
        return this.y + Direction.differenceY(this.dir);
    }

    public float getActualHeight() {
        return this.nextHeight;
    }

    public int getDir() {
        return this.dir;
    }

    public int getVisibleDir() {
        return this.visibleDir;
    }

    public float getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public float getNextHeight() {
        return this.nextHeight;
    }

    public void setNextHeight(int i) {
        this.nextHeight = i;
    }

    public FlyingObjectDraft getDraft() {
        return this.draft;
    }

    public float getP() {
        return this.p;
    }

    public void setP(float f) {
        this.p = f;
    }

    public float getSpeed() {
        return this.speed;
    }

    public void setSpeed(float f) {
        this.speed = f;
    }

    public int getControllerId() {
        return this.controllerId;
    }

    public void setControllerId(int i) {
        this.controllerId = i;
    }

    public int getDrawRadius() {
        return this.drawRadius;
    }
}
