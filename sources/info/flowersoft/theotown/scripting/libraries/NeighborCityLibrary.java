package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.neighbors.VirtualNeighborCity;
import info.flowersoft.theotown.components.DefaultNeighborhood;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.util.NameGenerator;
import java.util.ArrayList;
import java.util.List;
import vm2.Globals;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.lib.OneArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: loaded from: classes4.dex */
public class NeighborCityLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public DefaultNeighborhood neighborhood;

    public NeighborCityLibrary(City city) {
        super("libs/NeighborCity.lua");
        this.neighborhood = (DefaultNeighborhood) city.getComponent(21);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary, info.flowersoft.theotown.scripting.LuaLibrary
    public void unload(Globals globals) {
        super.unload(globals);
        this.neighborhood = null;
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(final LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.set("create", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.1
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                String strCheckjstring = luaValue3.checkjstring();
                String strOptjstring = luaValue4.optjstring(null);
                if (strOptjstring == null) {
                    strOptjstring = NameGenerator.generateFiltered();
                }
                return NeighborCityLibrary.this.getLuaRepr(luaValue, NeighborCityLibrary.this.neighborhood.create(ScriptingEnvironment.getInstance().getCurrentDraft(), strCheckjstring, strOptjstring));
            }
        });
        luaValue.set("get", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.2
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                String strCheckjstring = luaValue3.checkjstring();
                VirtualNeighborCity draftNeighborById = NeighborCityLibrary.this.neighborhood.getDraftNeighborById(ScriptingEnvironment.getInstance().getCurrentDraft(), strCheckjstring);
                if (draftNeighborById != null) {
                    return NeighborCityLibrary.this.getLuaRepr(luaValue, draftNeighborById);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getNeighbors", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.3
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                Draft currentDraft = ScriptingEnvironment.getInstance().getCurrentDraft();
                ArrayLibrary arrayLibrary = (ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class);
                List<VirtualNeighborCity> draftNeighbors = NeighborCityLibrary.this.neighborhood.getDraftNeighbors(currentDraft);
                ArrayList arrayList = new ArrayList(draftNeighbors.size());
                for (int i = 0; i < draftNeighbors.size(); i++) {
                    arrayList.add(NeighborCityLibrary.this.getLuaRepr(luaValue, draftNeighbors.get(i)));
                }
                return arrayLibrary.createArray(arrayList);
            }
        });
        luaValue.set("isValid", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.4
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                VirtualNeighborCity virtualNeighborCityResolveNeighbor = NeighborCityLibrary.this.resolveNeighbor(luaValue3);
                return LuaValue.valueOf((NeighborCityLibrary.this.neighborhood == null || virtualNeighborCityResolveNeighbor == null || virtualNeighborCityResolveNeighbor.isInvalid()) ? false : true);
            }
        });
        luaValue.set("delete", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.5
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                VirtualNeighborCity virtualNeighborCityResolveNeighbor = NeighborCityLibrary.this.resolveNeighbor(luaValue3);
                if (virtualNeighborCityResolveNeighbor != null && NeighborCityLibrary.this.neighborhood != null) {
                    NeighborCityLibrary.this.neighborhood.remove(virtualNeighborCityResolveNeighbor);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getId", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.6
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(NeighborCityLibrary.this.resolveNeighbor(luaValue3).getId());
            }
        });
        luaValue.set("getName", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.7
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(NeighborCityLibrary.this.resolveNeighbor(luaValue3).getName());
            }
        });
        luaValue.set("setName", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.8
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                NeighborCityLibrary.this.resolveNeighbor(luaValue3).setName(luaValue4.checkjstring());
                return LuaValue.NIL;
            }
        });
        for (final ResourceRepr resourceRepr : collectResourceReprs()) {
            luaValue.set("set" + resourceRepr.name, new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.9
                @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                    resourceRepr.set(NeighborCityLibrary.this.resolveNeighbor(luaValue3), luaValue4.checklong());
                    return LuaValue.NIL;
                }
            });
            luaValue.set("get" + resourceRepr.name, new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.10
                @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                public LuaValue call(LuaValue luaValue3) {
                    return LuaValue.valueOf(resourceRepr.get(NeighborCityLibrary.this.resolveNeighbor(luaValue3)));
                }
            });
            luaValue.set("set" + resourceRepr.name + "Export", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.11
                @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                    resourceRepr.set(NeighborCityLibrary.this.resolveNeighbor(luaValue3), luaValue4.checklong());
                    return LuaValue.NIL;
                }
            });
            luaValue.set("get" + resourceRepr.name + "Export", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.12
                @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                public LuaValue call(LuaValue luaValue3) {
                    return LuaValue.valueOf(resourceRepr.getExport(NeighborCityLibrary.this.resolveNeighbor(luaValue3)));
                }
            });
        }
    }

    public final ResourceRepr[] collectResourceReprs() {
        return new ResourceRepr[]{new ResourceRepr("Power") { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.13
            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long get(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getAvailablePower();
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public void set(VirtualNeighborCity virtualNeighborCity, long j) {
                virtualNeighborCity.setPower(j);
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long getExport(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getTradingRelation().getEnergyExport();
            }
        }, new ResourceRepr("Water") { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.14
            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long get(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getAvailableWater();
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public void set(VirtualNeighborCity virtualNeighborCity, long j) {
                virtualNeighborCity.setWater(j);
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long getExport(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getTradingRelation().getWaterExport();
            }
        }, new ResourceRepr("WasteDisposal") { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.15
            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long get(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getAvailableWasteDisposal();
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public void set(VirtualNeighborCity virtualNeighborCity, long j) {
                virtualNeighborCity.setWasteDisposal(j);
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long getExport(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getTradingRelation().getWasteDisposalExport();
            }
        }, new ResourceRepr("BodyDisposal") { // from class: info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.16
            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long get(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getAvailableBodyDisposal();
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public void set(VirtualNeighborCity virtualNeighborCity, long j) {
                virtualNeighborCity.setBodyDisposal(j);
            }

            @Override // info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr
            public long getExport(VirtualNeighborCity virtualNeighborCity) {
                return virtualNeighborCity.getTradingRelation().getBodyDisposalExport();
            }
        }};
    }

    public final LuaTable getLuaRepr(LuaValue luaValue, VirtualNeighborCity virtualNeighborCity) {
        LuaTable luaRepr = virtualNeighborCity.getLuaRepr();
        if (luaRepr != null) {
            return luaRepr;
        }
        LuaTable luaTableChecktable = luaValue.invokemethod("_new", CoerceJavaToLua.coerce(virtualNeighborCity)).arg1().checktable();
        virtualNeighborCity.setLuaRepr(luaTableChecktable);
        return luaTableChecktable;
    }

    public final VirtualNeighborCity resolveNeighbor(LuaValue luaValue) {
        return (VirtualNeighborCity) CoerceLuaToJava.coerce(luaValue.get(SimpleLuaLibrary.origKey), VirtualNeighborCity.class);
    }

    public static abstract class ResourceRepr {
        public final String name;

        public abstract long get(VirtualNeighborCity virtualNeighborCity);

        public abstract long getExport(VirtualNeighborCity virtualNeighborCity);

        public abstract void set(VirtualNeighborCity virtualNeighborCity, long j);

        public ResourceRepr(String str) {
            this.name = str;
        }
    }
}
