package info.flowersoft.theotown.components.transition;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultDemand;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import io.blueflower.stapel2d.util.Property;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class VariableCollector {
    public Calendar calendar = Calendar.getInstance();
    public City city;
    public DefaultDate date;
    public DefaultDemand demand;
    public Map<String, Property<Long>> variables;
    public DefaultWeather weather;

    public VariableCollector(City city, Map<String, Property<Long>> map) {
        this.city = city;
        this.weather = (DefaultWeather) city.getComponent(12);
        this.date = (DefaultDate) city.getComponent(1);
        this.demand = (DefaultDemand) city.getComponent(10);
        this.variables = map;
    }

    public void collect() {
        addBoolean("roadAutoJoin", new Property<Boolean>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.1
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(Settings.roadAutoJoin);
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Boolean bool) {
                Settings.roadAutoJoin = bool.booleanValue();
            }
        });
        addLong("winter", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.2
            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Settings.winter);
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
                Settings.winter = Math.min(Math.max(l.intValue(), 0), 2);
                WinterManager.getInstance().setWinter(WinterManager.shouldItBeWinter(Settings.winter));
            }
        });
        addBoolean("localWinter", new Property<Boolean>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.3
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(VariableCollector.this.city.getCityInfo().winter);
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Boolean bool) {
                WinterManager.getInstance().setWinter(bool.booleanValue() || WinterManager.shouldItBeWinter(Settings.winter));
                VariableCollector.this.city.getCityInfo().winter = bool.booleanValue();
            }
        });
        addLong("weatherTime", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.4
            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.weather.getTime());
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
                VariableCollector.this.weather.setTime(l.intValue());
            }
        });
        addBoolean("weatherFog", new Property<Boolean>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.5
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(VariableCollector.this.weather.isFogEnabled());
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Boolean bool) {
                VariableCollector.this.weather.setFogEnabled(bool.booleanValue());
            }
        });
        addBoolean("weatherLocked", new Property<Boolean>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.6
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(VariableCollector.this.weather.isTimeLocked());
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Boolean bool) {
                VariableCollector.this.weather.setTimeLocked(bool.booleanValue());
            }
        });
        addConstant("WEATHER_NORMAL", 0L);
        addConstant("WEATHER_SUNNY", 290373L);
        addConstant("WEATHER_RAIN", 849711L);
        addConstant("WEATHER_LIGHTNING", 622697L);
        addLong("day", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.7
            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.date.getAbsoluteDay());
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
                VariableCollector.this.date.setAbsoluteDay(l.longValue());
            }
        });
        addLong("cityRotation", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.8
            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.city.getRotation());
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
                VariableCollector.this.city.setRotation(l.intValue());
            }
        });
        addLong("wireCount", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.9
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.city.getWires().size());
            }
        });
        addLong("pipeCount", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.10
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.city.getPipes().size());
            }
        });
        addLong("roadCount", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.11
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.city.getRoads().size());
            }
        });
        addLong("buildingCount", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.12
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.city.getBuildings().size());
            }
        });
        addLong("gameSpeed", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.13
            public final int[] INPUT_MAPPING;
            public final int[] OUTPUT_MAPPING;

            {
                int i = 0;
                int[] iArr = {2, 3, 0, 4, 1};
                this.OUTPUT_MAPPING = iArr;
                this.INPUT_MAPPING = new int[iArr.length];
                while (true) {
                    int[] iArr2 = this.OUTPUT_MAPPING;
                    if (i >= iArr2.length) {
                        return;
                    }
                    this.INPUT_MAPPING[iArr2[i]] = i;
                    i++;
                }
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(this.OUTPUT_MAPPING[VariableCollector.this.date.getSpeed()]);
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
                VariableCollector.this.date.setSpeed(this.INPUT_MAPPING[l.intValue()]);
            }
        });
        addLong("gameMode", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.14
            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.city.getGameMode().ordinal());
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
                if (VariableCollector.this.city.getGameMode().ordinal() != l.longValue() && l.longValue() >= 0 && l.longValue() <= GameMode.FREE.ordinal()) {
                    VariableCollector.this.city.setGameMode(GameMode.values()[l.intValue()]);
                } else if (l.longValue() == 3292442) {
                    VariableCollector.this.city.setGameMode(GameMode.DEVELOPER);
                }
            }
        });
        addLong("disaster", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.15
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(((DefaultCatastrophe) VariableCollector.this.city.getComponent(6)).isActive() ? 1L : 0L);
            }
        });
        addBoolean("music", new Property<Boolean>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.16
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(Settings.musicLevel == 0);
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Boolean bool) {
                if (bool.booleanValue() != (Settings.musicLevel == 0)) {
                    Settings.musicLevel = bool.booleanValue() ? 50 : 0;
                    MusicBox.getInstance().update();
                }
            }
        });
        addConstant("isDeveloper", TheoTown.DEBUG);
        addLong("demand_res0", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.17
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getResidential(0)));
            }
        });
        addLong("demand_res1", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.18
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getResidential(1)));
            }
        });
        addLong("demand_res2", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.19
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getResidential(2)));
            }
        });
        addLong("demand_com0", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.20
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getCommercial(0)));
            }
        });
        addLong("demand_com1", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.21
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getCommercial(1)));
            }
        });
        addLong("demand_com2", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.22
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getCommercial(2)));
            }
        });
        addLong("demand_ind0", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.23
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getIndustrial(0)));
            }
        });
        addLong("demand_ind1", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.24
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getIndustrial(1)));
            }
        });
        addLong("demand_ind2", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.25
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(Math.round(VariableCollector.this.demand.getIndustrial(2)));
            }
        });
        addBoolean("isConnected", new Property<Boolean>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.26
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Boolean bool) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(InternetTime.getInstance().isConnected());
            }
        });
        addLong("real_day", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.27
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.calendar.get(5));
            }
        });
        addLong("real_month", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.28
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.calendar.get(2));
            }
        });
        addLong("real_year", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.29
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.calendar.get(1));
            }
        });
        addLong("real_hour", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.30
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.calendar.get(11));
            }
        });
        addLong("real_minute", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.31
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.calendar.get(12));
            }
        });
        addLong("real_second", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.32
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(VariableCollector.this.calendar.get(13));
            }
        });
        addLong("real_time", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.33
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(System.currentTimeMillis());
            }
        });
        addLong("plugin_count", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.34
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                Iterator<Draft> it = Drafts.ALL.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (it.next().plugin) {
                        i++;
                    }
                }
                return Long.valueOf(i);
            }
        });
        addLong("diamonds", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.35
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(GameHandler.getInstance().getDiamonds());
            }
        });
        addLong("version", new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.36
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(TheoTown.VERSION_CODE);
            }
        });
        addConstant("premium", TheoTown.PREMIUM);
        addBoolean("uberMode", new Property<Boolean>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.37
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(VariableCollector.this.city.isUber());
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Boolean bool) {
                if (ScriptingEnvironment.getInstance().isPrivileged()) {
                    VariableCollector.this.city.setUber(bool.booleanValue());
                }
            }
        });
    }

    public final void addBoolean(String str, Property<Boolean> property) {
        addLong(str, new PropertyAdapter(property));
    }

    public final void addLong(String str, Property<Long> property) {
        this.variables.put(str, property);
    }

    public final void addConstant(String str, boolean z) {
        addConstant(str, z ? 1L : 0L);
    }

    public final void addConstant(final String str, final long j) {
        this.variables.put(str, new Property<Long>() { // from class: info.flowersoft.theotown.components.transition.VariableCollector.38
            @Override // io.blueflower.stapel2d.util.Getter
            public Long get() {
                return Long.valueOf(j);
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Long l) {
                Gdx.app.debug("VariableCollector", "May not set const " + str);
            }
        });
    }

    public static class PropertyAdapter extends io.blueflower.stapel2d.util.PropertyAdapter<Boolean, Long> {
        public PropertyAdapter(Property<Boolean> property) {
            super(property);
        }

        @Override // io.blueflower.stapel2d.util.PropertyAdapter
        public Boolean toInner(Long l) {
            return Boolean.valueOf(l.longValue() != 0);
        }

        @Override // io.blueflower.stapel2d.util.PropertyAdapter
        public Long toOuter(Boolean bool) {
            return Long.valueOf(bool.booleanValue() ? 1L : 0L);
        }
    }
}
