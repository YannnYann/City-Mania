package info.flowersoft.theotown.components;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.components.disaster.BlizzardDisaster;
import info.flowersoft.theotown.components.disaster.CrimeDisaster;
import info.flowersoft.theotown.components.disaster.EarthQuakeDisaster;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.components.disaster.FloodingDisaster;
import info.flowersoft.theotown.components.disaster.GenericBuildingDisaster;
import info.flowersoft.theotown.components.disaster.GreenSlimeDisaster;
import info.flowersoft.theotown.components.disaster.IllnessDisaster;
import info.flowersoft.theotown.components.disaster.MeteoriteDisaster;
import info.flowersoft.theotown.components.disaster.NuclearPlantDisaster;
import info.flowersoft.theotown.components.disaster.NukeDisaster;
import info.flowersoft.theotown.components.disaster.PinkSlimeDisaster;
import info.flowersoft.theotown.components.disaster.RiotDisaster;
import info.flowersoft.theotown.components.disaster.TornadoDisaster;
import info.flowersoft.theotown.components.disaster.UfoDisaster;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tutorial.Tutorial;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultCatastrophe extends Catastrophe {
    public final Map<Class<? extends Disaster>, Disaster> classToDisaster;
    public final List<DisasterState> disasterStates;
    public final List<String> disasterTags;
    public final List<Disaster> disasters;
    public final List<Flash> flashs;
    public long lastDisaster;
    public final List<Quake> quakes;

    public DefaultCatastrophe(City city) {
        this.disasterStates = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.disasters = arrayList;
        this.disasterTags = new ArrayList();
        this.classToDisaster = new HashMap();
        this.flashs = new ArrayList();
        this.quakes = new ArrayList();
        registerDisaster(new FireDisaster(), "fire");
        registerDisaster(new MeteoriteDisaster(), "meteor");
        registerDisaster(new EarthQuakeDisaster(), "earthquake");
        registerDisaster(new NukeDisaster(), "nuke");
        registerDisaster(new TornadoDisaster(), "tornado");
        registerDisaster(new NuclearPlantDisaster(), "nuclear plant");
        registerDisaster(new IllnessDisaster(), "illness");
        registerDisaster(new FloodingDisaster(), "flooding");
        registerDisaster(new RiotDisaster(), "riot");
        registerDisaster(new CrimeDisaster(), "crime");
        registerDisaster(new UfoDisaster(), "ufo");
        registerDisaster(new GenericBuildingDisaster(), "generic building");
        registerDisaster(new GreenSlimeDisaster(), "green slime");
        registerDisaster(new PinkSlimeDisaster(), "pink slime");
        registerDisaster(new BlizzardDisaster(), "blizzard");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Disaster) it.next()).bind(city);
        }
    }

    public final void registerDisaster(Disaster disaster, String str) {
        this.disasters.add(disaster);
        this.disasterTags.add(str);
        this.classToDisaster.put((Class<? extends Disaster>) disaster.getClass(), disaster);
        this.disasterStates.add(new DisasterState());
    }

    public <T> T getDisaster(Class<T> cls) {
        return (T) this.classToDisaster.get(cls);
    }

    public Disaster getDisaster(String str) {
        for (int i = 0; i < this.disasterTags.size(); i++) {
            if (this.disasterTags.get(i).equals(str)) {
                return this.disasters.get(i);
            }
        }
        return null;
    }

    public String getDisasterTag(Disaster disaster) {
        for (int i = 0; i < this.disasters.size(); i++) {
            if (this.disasters.get(i) == disaster) {
                return this.disasterTags.get(i);
            }
        }
        return null;
    }

    public final int getDisasterIndex(Disaster disaster) {
        for (int i = 0; i < this.disasters.size(); i++) {
            if (this.disasters.get(i) == disaster) {
                return i;
            }
        }
        return -1;
    }

    public void setAutoActive(Disaster disaster, boolean z) {
        int disasterIndex = getDisasterIndex(disaster);
        if (disasterIndex >= 0) {
            this.disasterStates.get(disasterIndex).autoActive = z;
        }
    }

    public DefaultCatastrophe(City city, JsonReader jsonReader) throws IOException {
        this(city);
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            for (int i = 0; i < this.disasters.size() && strNextName != null; i++) {
                if (strNextName.equals(this.disasterTags.get(i))) {
                    loadDisaster(this.disasters.get(i), jsonReader);
                    strNextName = null;
                }
            }
            if (strNextName != null) {
                if (strNextName.equals("last disaster")) {
                    this.lastDisaster = jsonReader.nextLong();
                } else {
                    jsonReader.skipValue();
                }
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        for (int i = 0; i < this.disasters.size(); i++) {
            Disaster disaster = this.disasters.get(i);
            String str = this.disasterTags.get(i);
            if (disaster.saveMe()) {
                saveDisaster(disaster, str, jsonWriter);
            }
        }
        jsonWriter.name("last disaster").value(this.lastDisaster);
    }

    public final void loadDisaster(Disaster disaster, JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        disaster.load(jsonReader);
        jsonReader.endObject();
    }

    public final void saveDisaster(Disaster disaster, String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(str);
        jsonWriter.beginObject();
        disaster.save(jsonWriter);
        jsonWriter.endObject();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(final City city) {
        super.bind(city);
        addWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.DefaultCatastrophe.1
            public int counter;

            @Override // java.lang.Runnable
            public void run() {
                DefaultDate defaultDate = (DefaultDate) city.getComponent(1);
                long absoluteDay = defaultDate.getAbsoluteDay();
                for (Disaster disaster : DefaultCatastrophe.this.disasters) {
                    synchronized (city) {
                        try {
                            disaster.update();
                            if (!disaster.isSilent() && disaster.isActive()) {
                                DefaultCatastrophe.this.lastDisaster = absoluteDay;
                            }
                        } finally {
                        }
                    }
                }
                if (Settings.catastrophes && !defaultDate.isInFreezeMode() && Tutorial.isVisible(Tutorial.FLAG_CATASTROPHE) && city.getTransitionVar("_disable_all_disasters", 0L) == 0 && !city.isReadonly() && !city.isUber() && this.counter >= 13 && absoluteDay - DefaultCatastrophe.this.lastDisaster >= 13) {
                    this.counter = 0;
                    for (int i = 0; i < DefaultCatastrophe.this.disasters.size(); i++) {
                        Disaster disaster2 = (Disaster) DefaultCatastrophe.this.disasters.get(i);
                        DisasterState disasterState = (DisasterState) DefaultCatastrophe.this.disasterStates.get(i);
                        if (disaster2.isAutoEnabled()) {
                            if (city.getTransitionVar("_disable_" + DefaultCatastrophe.this.getDisasterTag(disaster2) + "_disaster", 0L) == 0 && disasterState.autoActive && Resources.RND.nextFloat() < disaster2.getAutoProbability() && disaster2.issue()) {
                                break;
                            }
                        }
                    }
                }
                this.counter++;
            }
        }));
    }

    public boolean isActive() {
        for (Disaster disaster : this.disasters) {
            if (!disaster.isSilent() && disaster.isActive()) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Catastrophe
    public List<Disaster> getDisasters() {
        return this.disasters;
    }

    public List<Disaster> getActiveDisasters() {
        ArrayList arrayList = new ArrayList();
        for (Disaster disaster : this.disasters) {
            if (disaster.isActive()) {
                arrayList.add(disaster);
            }
        }
        return arrayList;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        super.prepare();
        Iterator<Disaster> it = this.disasters.iterator();
        while (it.hasNext()) {
            it.next().prepare();
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public synchronized void update() {
        try {
            DefaultDate defaultDate = (DefaultDate) this.city.getComponent(1);
            int animationTime = defaultDate.getAnimationTime();
            if (defaultDate.getSpeed() == 2) {
                return;
            }
            Iterator<Quake> it = this.quakes.iterator();
            while (it.hasNext()) {
                float f = (animationTime - it.next().issueTime) / 8000.0f;
                if (f >= 1.0f) {
                    it.remove();
                } else {
                    IsoConverter isoConverter = this.city.getIsoConverter();
                    float absShiftX = isoConverter.getAbsShiftX();
                    float absShiftY = isoConverter.getAbsShiftY();
                    isoConverter.getAbsScaleX();
                    float f2 = f - 0.5f;
                    isoConverter.setAbsShift(absShiftX, (float) (((double) absShiftY) + (((double) (isoConverter.getAbsScaleY() * (1.0f - ((4.0f * f2) * f2)) * 2.0f)) * Math.cos(f * 251.32742f))));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public synchronized void drawAfter(Drawer drawer) {
        try {
            Engine engine = drawer.engine;
            if (!this.city.getLod().isNoBackground()) {
                Iterator<Disaster> it = this.disasters.iterator();
                while (it.hasNext()) {
                    it.next().draw(engine);
                }
                int animationTime = ((DefaultDate) this.city.getComponent(1)).getAnimationTime();
                Iterator<Flash> it2 = this.flashs.iterator();
                while (it2.hasNext()) {
                    float f = (animationTime - it2.next().issueTime) / 4000.0f;
                    if (f >= 1.0f) {
                        it2.remove();
                    } else {
                        int iMin = (int) Math.min(((float) Math.exp(-f)) * 1.1f * (1.0f - f) * 255.0f, 255.0f);
                        engine.setColor(Colors.WHITE);
                        engine.setTransparency(iMin);
                        engine.setAdditive(255);
                        engine.setScale(1.0f, 1.0f);
                        engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.city.getView().getWidth(), this.city.getView().getHeight(), Resources.FRAME_RECT);
                        engine.setAdditive(0);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean issueDisaster(Class<? extends Disaster> cls, int i, int i2) {
        Disaster next;
        Iterator<Disaster> it = this.disasters.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (next.getClass().equals(cls)) {
            }
        }
        throw new IllegalArgumentException("No disaster found of type " + cls);
        return next.issue(i, i2);
    }

    @Override // info.flowersoft.theotown.city.components.Catastrophe
    public synchronized void issueFlash() {
        Flash flash = new Flash();
        flash.issueTime = ((DefaultDate) this.city.getComponent(1)).getAnimationTime();
        this.flashs.add(flash);
    }

    @Override // info.flowersoft.theotown.city.components.Catastrophe
    public synchronized void issueQuake() {
        Quake quake = new Quake();
        quake.issueTime = ((DefaultDate) this.city.getComponent(1)).getAnimationTime();
        this.quakes.add(quake);
    }

    public static class Flash {
        public int issueTime;

        public Flash() {
        }
    }

    public static class Quake {
        public int issueTime;

        public Quake() {
        }
    }

    public static class DisasterState {
        public boolean autoActive;

        public DisasterState() {
            this.autoActive = true;
        }
    }
}
