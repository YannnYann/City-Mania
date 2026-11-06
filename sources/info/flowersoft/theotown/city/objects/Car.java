package info.flowersoft.theotown.city.objects;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.resources.Drafts;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class Car {
    public int absLevel;
    public Car absParent;
    public Car child;
    public Color color;
    public int controller;
    public long data;
    public long data2;
    public int dir;
    public CarDraft draft;
    public boolean fadeIn;
    public boolean fadeOut;
    public int flags;
    public int frame;
    public int id;
    public boolean invalid;
    public boolean isImportant;
    public int lastDir;
    public int lastLevel;
    public int lastMovement;
    public float lastSpeed;
    public int lastX;
    public int lastY;
    public CarOwner owner;
    public float p;
    public Car parent;
    public boolean paused;
    public int prog;
    public float speed;
    public Way way;
    public int wealthLevel;
    public int x;
    public int y;

    public interface CarResolver {
        Car get(int i);
    }

    public Car(JsonReader jsonReader, CarResolver carResolver) throws IOException {
        this.speed = 1.0f;
        this.wealthLevel = 0;
        this.fadeIn = true;
        this.id = -1;
        this.paused = false;
        this.isImportant = false;
        this.data = 0L;
        this.prog = 0;
        this.dir = -1;
        this.absParent = this;
        int iNextInt = 32;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "last movement":
                case "lm":
                    this.lastMovement = jsonReader.nextInt();
                    break;
                case "parent":
                    setParent(carResolver.get(jsonReader.nextInt()));
                    break;
                case "paused":
                    this.paused = jsonReader.nextBoolean();
                    break;
                case "important":
                    this.isImportant = jsonReader.nextBoolean();
                    break;
                case "d":
                case "draft":
                    CarDraft carDraft = (CarDraft) Drafts.get(jsonReader.nextString(), CarDraft.class);
                    this.draft = carDraft;
                    if (carDraft != null) {
                        break;
                    } else {
                        while (jsonReader.hasNext()) {
                            jsonReader.skipValue();
                        }
                        return;
                    }
                    break;
                case "f":
                case "frame":
                    int iNextInt2 = jsonReader.nextInt();
                    CarDraft carDraft2 = this.draft;
                    this.frame = (short) (iNextInt2 % (carDraft2.frames.length / carDraft2.framesPerVariant));
                    break;
                case "p":
                    this.p = jsonReader.nextFloat() / 100.0f;
                    break;
                case "s":
                case "speed":
                    this.speed = jsonReader.nextFloat();
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "fd":
                    this.fadeOut = jsonReader.nextBoolean();
                    break;
                case "fi":
                    this.fadeIn = jsonReader.nextBoolean();
                    break;
                case "id":
                    this.id = jsonReader.nextInt();
                    break;
                case "ls":
                    this.lastSpeed = jsonReader.nextInt() / 100.0f;
                    break;
                case "lx":
                    this.lastX = jsonReader.nextInt();
                    break;
                case "ly":
                    this.lastY = jsonReader.nextInt();
                    break;
                case "wl":
                    iNextInt = jsonReader.nextInt();
                    break;
                case "wy":
                    jsonReader.beginObject();
                    this.way = new Way(jsonReader);
                    jsonReader.endObject();
                    break;
                case "dir":
                    this.dir = jsonReader.nextInt();
                    break;
                case "lvl":
                    this.absLevel = jsonReader.nextInt();
                    break;
                case "way":
                    jsonReader.beginArray();
                    ArrayList arrayList = new ArrayList(iNextInt);
                    while (jsonReader.hasNext()) {
                        arrayList.add(Short.valueOf((short) jsonReader.nextInt()));
                    }
                    jsonReader.endArray();
                    this.way = new Way(arrayList);
                    break;
                case "data":
                    this.data = jsonReader.nextLong();
                    break;
                case "ldir":
                    this.lastDir = jsonReader.nextInt();
                    break;
                case "llvl":
                    this.lastLevel = jsonReader.nextInt();
                    break;
                case "prg2":
                    this.prog = (short) jsonReader.nextInt();
                    break;
                case "prog":
                    this.prog = (short) (jsonReader.nextInt() - 2);
                    break;
                case "wlvl":
                    this.wealthLevel = jsonReader.nextInt();
                    break;
                case "color":
                    jsonReader.beginArray();
                    this.color = new Color(jsonReader.nextInt(), jsonReader.nextInt(), jsonReader.nextInt());
                    jsonReader.endArray();
                    break;
                case "data2":
                    this.data2 = jsonReader.nextLong();
                    break;
                case "owner":
                    jsonReader.beginObject();
                    try {
                        this.owner = new CarOwner(this, jsonReader);
                        break;
                    } catch (IOException e) {
                        e.printStackTrace();
                        while (jsonReader.hasNext()) {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case "controller":
                    this.controller = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (this.dir == -1) {
            int dir = this.way.getDir(this.prog);
            this.dir = dir;
            this.lastX = this.x;
            this.lastY = this.y;
            this.lastLevel = this.absLevel;
            this.lastDir = dir;
        }
    }

    public Car(Car car, CarDraft carDraft, int i, int i2) {
        this.speed = 1.0f;
        this.wealthLevel = 0;
        this.fadeIn = true;
        this.draft = carDraft;
        this.controller = -1;
        int i3 = car.lastX;
        this.x = i3;
        int i4 = car.lastY;
        this.y = i4;
        int i5 = car.lastDir;
        this.dir = i5;
        int i6 = car.lastLevel;
        this.absLevel = i6;
        this.lastX = i3;
        this.lastY = i4;
        this.lastDir = i5;
        this.lastLevel = i6;
        this.id = i2;
        this.frame = (short) i;
        setParent(car);
    }

    public Car(CarDraft carDraft, Way way, int i, int i2, int i3) {
        this.speed = 1.0f;
        this.wealthLevel = 0;
        this.fadeIn = true;
        this.draft = carDraft;
        this.x = way.getStartX();
        this.y = way.getStartY();
        this.absLevel = way.getStartLevel();
        this.way = way;
        this.prog = 0;
        this.frame = (short) i;
        this.p = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.controller = i2;
        this.id = i3;
        int dir = way.getDir(0);
        this.dir = dir;
        this.absParent = this;
        this.lastX = this.x;
        this.lastY = this.y;
        this.lastLevel = this.absLevel;
        this.lastDir = dir;
    }

    public void setParent(Car car) {
        Car car2;
        Car car3 = this.parent;
        if (car3 != null) {
            car3.child = null;
        }
        if (car != null && (car2 = car.child) != null) {
            car2.setParent(null);
        }
        this.parent = car;
        if (car != null) {
            car.child = this;
            this.absParent = car.absParent;
        } else {
            this.absParent = this;
        }
        for (Car car4 = this.child; car4 != null; car4 = car4.child) {
            car4.absParent = this.absParent;
        }
    }

    public Car getParent() {
        return this.parent;
    }

    public Car getAbsParent() {
        while (true) {
            Car car = this.absParent;
            Car car2 = car.parent;
            if (car2 == null) {
                return car;
            }
            this.absParent = car2;
        }
    }

    public Car getChild() {
        return this.child;
    }

    public int tailSize() {
        int i = 0;
        for (Car car = this.child; car != null; car = car.child) {
            i++;
        }
        return i;
    }

    public int getCapacity() {
        int i = this.draft.capacity;
        for (Car car = this.child; car != null; car = car.child) {
            i += car.draft.capacity;
        }
        return i;
    }

    public Car getTail(int i) {
        Car car = this.child;
        while (car != null && i > 0) {
            car = car.child;
            i--;
        }
        return car;
    }

    public Car getLastTail() {
        Car car = this;
        while (true) {
            Car car2 = car.child;
            if (car2 == null) {
                return car;
            }
            car = car2;
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("d").value(this.draft.id);
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
        jsonWriter.name("dir").value(this.dir);
        jsonWriter.name("lx").value(this.lastX);
        jsonWriter.name("ly").value(this.lastY);
        if (this.lastLevel != 0) {
            jsonWriter.name("llvl").value(this.lastLevel);
        }
        jsonWriter.name("ldir").value(this.lastDir);
        if (this.way != null) {
            jsonWriter.name("wy");
            jsonWriter.beginObject();
            this.way.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.name("prg2");
        jsonWriter.value(this.prog);
        jsonWriter.name("f").value(this.frame);
        jsonWriter.name("p").value((int) (this.p * 100.0f));
        jsonWriter.name("lm").value(this.lastMovement);
        if (this.controller != 0) {
            jsonWriter.name("controller").value(this.controller);
        }
        jsonWriter.name(C3670j8.x).value(this.id);
        if (this.paused) {
            jsonWriter.name(C3522b4.i.e0).value(true);
        }
        if (this.isImportant) {
            jsonWriter.name("important").value(true);
        }
        if (this.data != 0) {
            jsonWriter.name("data").value(this.data);
        }
        if (this.data2 != 0) {
            jsonWriter.name("data2").value(this.data2);
        }
        if (this.lastSpeed >= 0.01f) {
            jsonWriter.name("ls").value(Math.round(this.lastSpeed * 100.0f));
        }
        if (this.absLevel != 0) {
            jsonWriter.name("lvl").value(this.absLevel);
        }
        if (this.parent != null) {
            jsonWriter.name("parent").value(this.parent.id);
        }
        if (this.speed != 1.0f) {
            jsonWriter.name("s").value(this.speed);
        }
        if (this.wealthLevel != 0) {
            jsonWriter.name("wlvl").value(this.wealthLevel);
        }
        if (!this.fadeIn) {
            jsonWriter.name("fi").value(this.fadeIn);
        }
        if (this.fadeOut) {
            jsonWriter.name("fd").value(this.fadeOut);
        }
        if (this.owner != null) {
            jsonWriter.name("owner");
            jsonWriter.beginObject();
            this.owner.save(jsonWriter);
            jsonWriter.endObject();
        }
        if (this.color != null) {
            jsonWriter.name(C3522b4.i.S);
            jsonWriter.beginArray();
            jsonWriter.value(this.color.getRed());
            jsonWriter.value(this.color.getGreen());
            jsonWriter.value(this.color.getBlue());
            jsonWriter.endArray();
        }
    }

    public CarOwner getOwner() {
        return this.owner;
    }

    public void setOwner(CarOwner carOwner) {
        this.owner = carOwner;
    }

    public void driveTo(Way way) {
        if (way.getDir(0) != 0 && (this.x != way.getStartX() || this.y != way.getStartY())) {
            this.lastX = this.x;
            this.lastY = this.y;
            this.lastLevel = this.absLevel;
            int i = this.dir;
            if (i == 0) {
                i = this.lastDir;
            }
            this.lastDir = i;
        }
        this.x = way.getStartX();
        this.y = way.getStartY();
        this.prog = 0;
        this.p = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.way = way;
        this.absLevel = way.getStartLevel();
        this.dir = way.getDir(0);
    }

    public int getId() {
        return this.id;
    }

    public Color getColor() {
        return this.color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public boolean isWaiting() {
        Way way = this.way;
        return way != null && way.size() == 2 && this.way.getDir(1) == 0;
    }

    public int hashCode() {
        return this.id;
    }
}
