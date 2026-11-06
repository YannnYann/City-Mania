package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.CarOwner;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.components.traffic.carcontroller.ScriptedCarController;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.tools.FollowCarTool;
import io.blueflower.stapel2d.drawing.Color;
import vm2.Globals;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: loaded from: classes4.dex */
public class CarLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final CarDraft NULL_CAR;
    public ScriptedCarController carController;
    public final CarTrafficHandler carTrafficHandler;
    public City city;

    public CarLibrary(City city) {
        super("libs/Car.lua");
        this.NULL_CAR = (CarDraft) Drafts.get("$car_null00", CarDraft.class);
        this.city = city;
        CarTrafficHandler carTrafficHandler = (CarTrafficHandler) ((DefaultTraffic) city.getComponent(7)).getTrafficHandler(CarTrafficHandler.class);
        this.carTrafficHandler = carTrafficHandler;
        this.carController = (ScriptedCarController) carTrafficHandler.getCarController(ScriptedCarController.class);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary, info.flowersoft.theotown.scripting.LuaLibrary
    public void unload(Globals globals) {
        super.unload(globals);
        this.city = null;
        this.carController = null;
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        this.carController.setCarLibrary(luaValue);
        luaValue.set("getCars", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.1
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ArrayLibrary arrayLibrary = (ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class);
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                if (draftResolveDraft == null) {
                    draftResolveDraft = ScriptingEnvironment.getInstance().getCurrentScript().getDraft();
                }
                return arrayLibrary.createArray(CarLibrary.this.carController.getCarLuaReprs(draftResolveDraft));
            }
        });
        luaValue.set("spawn", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.2
            /* JADX WARN: Removed duplicated region for block: B:12:0x00c9  */
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public vm2.Varargs invoke(vm2.Varargs r12) {
                /*
                    Method dump skipped, instruction units count: 240
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass2.invoke(vm2.Varargs):vm2.Varargs");
            }
        });
        luaValue.set("isValid", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.3
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf((CarLibrary.this.carController == null || CarLibrary.this.resolveCarOwner(luaValue3).getCar().invalid) ? false : true);
            }
        });
        luaValue.set("getDraft", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.4
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return CarLibrary.this.resolveCarOwner(luaValue3).getCar().draft.luaRepr;
            }
        });
        luaValue.set("getFrame", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.5
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().frame);
            }
        });
        luaValue.set("setFrame", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.6
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CarLibrary.this.resolveCarOwner(luaValue3).getCar().frame = luaValue4.checkint();
                return LuaValue.NIL;
            }
        });
        luaValue.set("getXY", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.7
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Car car = CarLibrary.this.resolveCarOwner(varargs.arg1()).getCar();
                return LuaValue.varargsOf(LuaValue.valueOf(car.x / 2), LuaValue.valueOf(car.y / 2), LuaValue.valueOf(car.absLevel - CarLibrary.this.city.getTiles().getBaseTerrainHeight(car.x / 2, car.y / 2)));
            }
        });
        luaValue.set("getX", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.8
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().x / 2);
            }
        });
        luaValue.set("getY", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.9
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().y / 2);
            }
        });
        luaValue.set("getLevel", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.10
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Car car = CarLibrary.this.resolveCarOwner(luaValue3).getCar();
                return LuaValue.valueOf(car.absLevel - CarLibrary.this.city.getTiles().getBaseTerrainHeight(car.x / 2, car.y / 2));
            }
        });
        luaValue.set("getDir", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.11
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().dir);
            }
        });
        luaValue.set("getSpeed", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.12
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().speed);
            }
        });
        luaValue.set("setSpeed", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.13
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CarLibrary.this.resolveCarOwner(luaValue3).getCar().speed = (float) luaValue4.optdouble(1.0d);
                return LuaValue.NIL;
            }
        });
        luaValue.set("getEffectiveSpeed", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.14
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().lastSpeed);
            }
        });
        luaValue.set("wait", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.15
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Car car = CarLibrary.this.resolveCarOwner(luaValue3).getCar();
                if (!car.invalid && !car.paused) {
                    CarLibrary.this.carTrafficHandler.wait(car);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("driveTo", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.16
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Car car = CarLibrary.this.resolveCarOwner(varargs.arg1()).getCar();
                if (car.invalid) {
                    return LuaValue.FALSE;
                }
                MapArea mapArea = new MapArea();
                if (!varargs.arg(2).isint()) {
                    CarLibrary.this.resolveXYLTable(varargs.arg(2).checktable(), mapArea);
                } else {
                    CarLibrary.this.carController.resolvePoint(varargs.checkint(2), varargs.checkint(3), varargs.optint(4, Integer.MIN_VALUE), mapArea);
                }
                CarLibrary.this.carController.driveTo(car, mapArea);
                return LuaValue.NIL;
            }
        });
        luaValue.set("despawn", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.17
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CarLibrary.this.resolveCarOwner(luaValue3).getCar().invalid = true;
                return LuaValue.NIL;
            }
        });
        luaValue.set("getStorage", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.18
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return CarLibrary.this.resolveCarOwner(luaValue3).getStorage();
            }
        });
        luaValue.set("getOrig", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.19
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CarLibrary.this.assertPrivileged("orig");
                if (CarLibrary.this.resolveCarOwner(luaValue3) != null) {
                    return luaValue3.rawget(SimpleLuaLibrary.origKey);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("tailSize", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.20
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().tailSize());
            }
        });
        luaValue.set("addTail", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.21
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                CarOwner carOwnerResolveCarOwner = CarLibrary.this.resolveCarOwner(varargs.arg(1));
                CarDraft carDraft = (CarDraft) DraftLibrary.resolveDraft(varargs.arg(2), CarDraft.class);
                if (carDraft == null) {
                    carDraft = CarLibrary.this.NULL_CAR;
                }
                int iOptint = varargs.optint(3, 0);
                int i = iOptint - 1;
                int iOptint2 = varargs.optint(4, -1);
                Car car = i == 0 ? carOwnerResolveCarOwner.getCar() : null;
                if (i > 0) {
                    car = carOwnerResolveCarOwner.getCar().getTail(iOptint - 2);
                }
                if (car == null) {
                    car = carOwnerResolveCarOwner.getCar().getLastTail();
                }
                CarLibrary.this.carTrafficHandler.addTailCar(carDraft, car, iOptint2);
                return LuaValue.NIL;
            }
        });
        luaValue.set("removeTail", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.22
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CarOwner carOwnerResolveCarOwner = CarLibrary.this.resolveCarOwner(luaValue3);
                int iOptint = luaValue4.optint(0) - 1;
                if (carOwnerResolveCarOwner.getCar().getChild() == null) {
                    return LuaValue.FALSE;
                }
                Car tail = iOptint >= 0 ? carOwnerResolveCarOwner.getCar().getTail(iOptint) : null;
                if (tail == null) {
                    tail = carOwnerResolveCarOwner.getCar().getLastTail();
                }
                if (tail != carOwnerResolveCarOwner.getCar()) {
                    CarLibrary.this.carTrafficHandler.removeTailCar(tail);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("removeWholeTail", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.23
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CarOwner carOwnerResolveCarOwner = CarLibrary.this.resolveCarOwner(luaValue3);
                if (carOwnerResolveCarOwner.getCar().getChild() != null) {
                    CarLibrary.this.carTrafficHandler.removeTail(carOwnerResolveCarOwner.getCar());
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("getTailDraft", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.24
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CarOwner carOwnerResolveCarOwner = CarLibrary.this.resolveCarOwner(luaValue3);
                int iOptint = luaValue4.optint(0) - 1;
                if (carOwnerResolveCarOwner.getCar().getChild() != null) {
                    Car tail = iOptint >= 0 ? carOwnerResolveCarOwner.getCar().getTail(iOptint) : null;
                    if (tail == null) {
                        tail = carOwnerResolveCarOwner.getCar().getLastTail();
                    }
                    return tail.draft.luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getTailFrame", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.25
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CarOwner carOwnerResolveCarOwner = CarLibrary.this.resolveCarOwner(luaValue3);
                int iOptint = luaValue4.optint(0) - 1;
                if (carOwnerResolveCarOwner.getCar().getChild() != null) {
                    Car tail = iOptint >= 0 ? carOwnerResolveCarOwner.getCar().getTail(iOptint) : null;
                    if (tail == null) {
                        tail = carOwnerResolveCarOwner.getCar().getLastTail();
                    }
                    return LuaValue.valueOf(tail.frame);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setTailFrame", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.26
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                CarOwner carOwnerResolveCarOwner = CarLibrary.this.resolveCarOwner(luaValue3);
                int iOptint = luaValue4.optint(0) - 1;
                int iCheckint = luaValue5.checkint();
                if (carOwnerResolveCarOwner.getCar().getChild() != null) {
                    Car tail = iOptint >= 0 ? carOwnerResolveCarOwner.getCar().getTail(iOptint) : null;
                    if (tail == null) {
                        tail = carOwnerResolveCarOwner.getCar().getLastTail();
                    }
                    tail.frame = iCheckint;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getCapacity", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.27
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                return LuaValue.valueOf(CarLibrary.this.resolveCarOwner(luaValue3).getCar().getCapacity());
            }
        });
        luaValue.set("setColor", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.28
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                CarOwner carOwnerResolveCarOwner = CarLibrary.this.resolveCarOwner(luaValue3);
                Color colorFromHexRGB = !luaValue4.isnil() ? Color.fromHexRGB(luaValue4.checkjstring(), null, new Color()) : null;
                int iOptint = luaValue5.optint(-1);
                Car car = carOwnerResolveCarOwner.getCar();
                if (iOptint <= 0) {
                    car.setColor(colorFromHexRGB != null ? colorFromHexRGB.copy() : null);
                }
                int i = 1;
                while (true) {
                    if (i > iOptint && iOptint >= 0) {
                        break;
                    }
                    car = car.getChild();
                    if (car == null) {
                        break;
                    }
                    if (iOptint == i || iOptint < 0) {
                        car.setColor(colorFromHexRGB != null ? colorFromHexRGB.copy() : null);
                    }
                    i++;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("openFollowTool", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CarLibrary.29
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                Car car = CarLibrary.this.resolveCarOwner(luaValue3).getCar();
                if (car.invalid) {
                    return LuaValue.FALSE;
                }
                CarLibrary.this.city.applyComponent(new FollowCarTool(car));
                return LuaValue.TRUE;
            }
        });
    }

    public final void resolveXYLTable(LuaTable luaTable, MapArea mapArea) {
        int length = luaTable.length();
        for (int i = 1; i <= length; i += 3) {
            this.carController.resolvePoint(luaTable.get(i).checkint(), luaTable.get(i + 1).checkint(), luaTable.get(i + 2).optint(Integer.MIN_VALUE), mapArea);
        }
    }

    public final CarOwner resolveCarOwner(LuaValue luaValue) {
        return (CarOwner) CoerceLuaToJava.coerce(luaValue.rawget(SimpleLuaLibrary.origKey), CarOwner.class);
    }
}
