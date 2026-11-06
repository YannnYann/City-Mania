package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.zip.GZIPOutputStream;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class StorageHandler extends CommandBasedHandler {
    public StorageHandler(final City city) {
        final GlobalTransitionVariables globalTransitionVariables = GlobalTransitionVariables.getInstance();
        addCommand("storage stats", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                this.f$0.showStorageStats(city, setter);
            }
        });
        addCommand("dump global lua storage", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                StorageHandler.m2321$r8$lambda$nZZVr80FauwO4t23ABXe8UeSu4(this.f$0, globalTransitionVariables, setter);
            }
        });
        addCommand("clear global lua storage", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda3
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                StorageHandler.$r8$lambda$rGZxL4SUWjOEB2toIdX9FL2eg2k(globalTransitionVariables, setter);
            }
        });
        addCommand("dump global lua file storage", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda4
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                StorageHandler.$r8$lambda$WEKxPTBPDWSStjZR5Hx0n3V4YSI(this.f$0, globalTransitionVariables, setter);
            }
        });
        addCommand("clear global lua file storage", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda5
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                StorageHandler.$r8$lambda$zeZMui4uZBwwtOv2xCGpIlaZjfE(globalTransitionVariables, setter);
            }
        });
        addCommand("dump mapping", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda6
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                StorageHandler.$r8$lambda$rgkQiKiXuLlrarl2V6vDae438NI(this.f$0, globalTransitionVariables, setter);
            }
        });
        addCommand("clear mapping", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda7
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                StorageHandler.m2319$r8$lambda$V68TEnzDf7mbH7eSmNaxz80Ek(globalTransitionVariables, setter);
            }
        });
        if (city != null) {
            addCommand("dump city lua storage", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda8
                @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
                public final void handle(Setter setter) {
                    StorageHandler.m2320$r8$lambda$cSuRvcK57NcFNJYJlGO22NttLM(this.f$0, city, setter);
                }
            });
            addCommand("clear city lua storage", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda9
                @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
                public final void handle(Setter setter) {
                    StorageHandler.$r8$lambda$CYidpGO_3O1IWrXi7u5wZxB735k(city, setter);
                }
            });
            addCommand("dump city mapping", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda10
                @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
                public final void handle(Setter setter) {
                    StorageHandler storageHandler = this.f$0;
                    storageHandler.dumpString("city_mapping.dump", storageHandler.getCityMapping(city).toString(), setter);
                }
            });
            addCommand("clear city mapping", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda1
                @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
                public final void handle(Setter setter) {
                    StorageHandler.$r8$lambda$mbqUA8WBl0dBGEeJG5a966iXS5g(city, setter);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$nZZVr80FauwO-4t23ABXe8UeSu4, reason: not valid java name */
    public static /* synthetic */ void m2321$r8$lambda$nZZVr80FauwO4t23ABXe8UeSu4(StorageHandler storageHandler, GlobalTransitionVariables globalTransitionVariables, Setter setter) {
        storageHandler.getClass();
        storageHandler.dumpStorageTable("global_lua_storage.dump", globalTransitionVariables.getRawLuaStorage(), setter);
    }

    public static /* synthetic */ void $r8$lambda$rGZxL4SUWjOEB2toIdX9FL2eg2k(GlobalTransitionVariables globalTransitionVariables, Setter setter) {
        globalTransitionVariables.clearLuaStorage();
        setter.set("done");
    }

    public static /* synthetic */ void $r8$lambda$WEKxPTBPDWSStjZR5Hx0n3V4YSI(StorageHandler storageHandler, GlobalTransitionVariables globalTransitionVariables, Setter setter) {
        storageHandler.getClass();
        storageHandler.dumpStorageTable("global_lua_file_storage.dump", globalTransitionVariables.getRawLuaFileStorage(), setter);
    }

    public static /* synthetic */ void $r8$lambda$zeZMui4uZBwwtOv2xCGpIlaZjfE(GlobalTransitionVariables globalTransitionVariables, Setter setter) {
        globalTransitionVariables.clearLuaFileStorage();
        setter.set("done");
    }

    public static /* synthetic */ void $r8$lambda$rgkQiKiXuLlrarl2V6vDae438NI(StorageHandler storageHandler, GlobalTransitionVariables globalTransitionVariables, Setter setter) {
        storageHandler.getClass();
        storageHandler.dumpString("mapping.dump", globalTransitionVariables.getMapping().toString(), setter);
    }

    /* JADX INFO: renamed from: $r8$lambda$V68T-EnzDf7m-bH7eSmNaxz80Ek, reason: not valid java name */
    public static /* synthetic */ void m2319$r8$lambda$V68TEnzDf7mbH7eSmNaxz80Ek(GlobalTransitionVariables globalTransitionVariables, Setter setter) {
        globalTransitionVariables.clearMapping();
        setter.set("done");
    }

    /* JADX INFO: renamed from: $r8$lambda$cS-uRvcK57NcFNJYJlGO22NttLM, reason: not valid java name */
    public static /* synthetic */ void m2320$r8$lambda$cSuRvcK57NcFNJYJlGO22NttLM(StorageHandler storageHandler, City city, Setter setter) {
        storageHandler.getClass();
        storageHandler.dumpStorageTable("city_lua_storage.dump", city.getRawLuaStorage(), setter);
    }

    public static /* synthetic */ void $r8$lambda$CYidpGO_3O1IWrXi7u5wZxB735k(City city, Setter setter) {
        city.setLuaStorage(LuaValue.tableOf());
        setter.set("done");
    }

    public static /* synthetic */ void $r8$lambda$mbqUA8WBl0dBGEeJG5a966iXS5g(City city, Setter setter) {
        city.getTransitionVars().clear();
        setter.set("done");
    }

    public final void showStorageStats(City city, Setter<String> setter) {
        GlobalTransitionVariables globalTransitionVariables = GlobalTransitionVariables.getInstance();
        StringBuilder sb = new StringBuilder();
        sb.append("lua storage: ");
        Locale locale = Locale.ENGLISH;
        sb.append(String.format(locale, "%,d", Integer.valueOf(getStorageTableSize(globalTransitionVariables.getRawLuaStorage()))));
        sb.append(" bytes");
        setter.set(sb.toString());
        setter.set("lua file storage: " + String.format(locale, "%,d", Integer.valueOf(getStorageTableSize(globalTransitionVariables.getRawLuaFileStorage()))) + " bytes");
        setter.set("mapping: " + String.format(locale, "%,d", Integer.valueOf(globalTransitionVariables.getMapping().toString().length())) + " bytes");
        if (city != null) {
            setter.set("city lua storage: " + String.format(locale, "%,d", Integer.valueOf(getStorageTableSize(city.getRawLuaStorage()))) + " bytes");
            setter.set("city mapping: " + String.format(locale, "%,d", Integer.valueOf(getCityMapping(city).toString().length())) + " bytes");
        }
    }

    public final JSONObject getCityMapping(City city) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Long> entry : city.getTransitionVars().entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public final int getStorageTableSize(LuaTable luaTable) {
        try {
            return LuaTableSerializer.serialize(luaTable).toString().length();
        } catch (JSONException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public final void dumpStorageTable(String str, LuaTable luaTable, Setter<String> setter) {
        try {
            dumpString(str, LuaTableSerializer.serialize(luaTable).toString(), setter);
        } catch (JSONException e) {
            setter.set("Lua table serialization failed " + e);
        }
    }

    public final void dumpString(String str, String str2, Setter<String> setter) {
        File file = new File(Resources.getTheoTownDir(), str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            Random random = Resources.RND;
            fileOutputStream.write(random.nextInt(256));
            fileOutputStream.write(random.nextInt(256));
            fileOutputStream.write(random.nextInt(256));
            fileOutputStream.flush();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(fileOutputStream);
            gZIPOutputStream.write(random.nextInt(256));
            gZIPOutputStream.write(random.nextInt(256));
            gZIPOutputStream.write(random.nextInt(256));
            gZIPOutputStream.write(str2.getBytes(StandardCharsets.UTF_8));
            gZIPOutputStream.close();
            setter.set("Dumped to " + file.getAbsolutePath());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
