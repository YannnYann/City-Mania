package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.scripting.LuaUtil;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class GlobalTransitionVariables {
    public static GlobalTransitionVariables instance;
    public final LifecycleListener lifecycleListener = new LifecycleListener() { // from class: info.flowersoft.theotown.resources.GlobalTransitionVariables.1
        @Override // com.badlogic.gdx.LifecycleListener
        public void resume() {
        }

        @Override // com.badlogic.gdx.LifecycleListener
        public void pause() {
            GlobalTransitionVariables.this.save();
        }

        @Override // com.badlogic.gdx.LifecycleListener
        public void dispose() {
            GlobalTransitionVariables.this.save();
        }
    };
    public final HashMap<String, Long> mapping = new HashMap<>();
    public LuaTable luaStorage = LuaValue.tableOf();
    public LuaTable luaFileStorage = LuaValue.tableOf();
    public LuaTable luaStorageProxy = LuaUtil.getProxy(this.luaStorage);
    public LuaTable luaFileStorageProxy = LuaUtil.getProxy(this.luaFileStorage);
    public final SSP ssp = new SSP("global_transition_variables");

    public GlobalTransitionVariables() {
        load();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0042 A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0010, B:7:0x0016, B:10:0x0022, B:12:0x0028, B:17:0x003f, B:18:0x0042, B:20:0x004a, B:24:0x0060, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:32:0x008f, B:33:0x0095, B:36:0x00a8, B:23:0x005d), top: B:45:0x0001, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0060 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0010, B:7:0x0016, B:10:0x0022, B:12:0x0028, B:17:0x003f, B:18:0x0042, B:20:0x004a, B:24:0x0060, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:32:0x008f, B:33:0x0095, B:36:0x00a8, B:23:0x005d), top: B:45:0x0001, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void load() {
        /*
            r9 = this;
            monitor-enter(r9)
            info.flowersoft.theotown.util.SSP r0 = r9.ssp     // Catch: java.lang.Throwable -> L3c
            info.flowersoft.theotown.util.SSP$Reader r0 = r0.load()     // Catch: java.lang.Throwable -> L3c
            java.lang.String r1 = "mapping"
            r2 = 0
            java.lang.String r1 = r0.getString(r1, r2)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L42
            boolean r3 = r1.isEmpty()     // Catch: java.lang.Throwable -> L3c
            if (r3 != 0) goto L42
            info.flowersoft.theotown.util.json.JSONObject r3 = new info.flowersoft.theotown.util.json.JSONObject     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            info.flowersoft.theotown.util.json.JSONArray r1 = r3.names()     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            if (r1 == 0) goto L42
            r4 = 0
        L22:
            int r5 = r1.length()     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            if (r4 >= r5) goto L42
            java.lang.String r5 = r1.getString(r4)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            long r6 = r3.getLong(r5)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            java.util.HashMap<java.lang.String, java.lang.Long> r8 = r9.mapping     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            r8.put(r5, r6)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L3e
            int r4 = r4 + 1
            goto L22
        L3c:
            r0 = move-exception
            goto Lad
        L3e:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L3c
        L42:
            java.lang.String r1 = "lua"
            java.lang.String r0 = r0.getString(r1, r2)     // Catch: java.lang.Throwable -> L3c
            if (r0 == 0) goto L60
            info.flowersoft.theotown.util.json.JSONObject r1 = new info.flowersoft.theotown.util.json.JSONObject     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L5c
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L5c
            vm2.LuaTable r0 = info.flowersoft.theotown.scripting.LuaTableSerializer.deserialize(r1)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L5c
            r9.luaStorage = r0     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L5c
            vm2.LuaTable r0 = info.flowersoft.theotown.scripting.LuaUtil.getProxy(r0)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L5c
            r9.luaStorageProxy = r0     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> L5c
            goto L60
        L5c:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L3c
        L60:
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L3c
            java.io.File r1 = info.flowersoft.theotown.resources.Resources.getTheoTownDir()     // Catch: java.lang.Throwable -> L3c
            java.lang.String r2 = ".pmodext"
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L3c
            boolean r1 = r0.exists()     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto Lab
            boolean r1 = r0.canRead()     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto Lab
            com.badlogic.gdx.Files r1 = com.badlogic.gdx.Gdx.files     // Catch: java.lang.Throwable -> L3c
            java.lang.String r0 = r0.getAbsolutePath()     // Catch: java.lang.Throwable -> L3c
            com.badlogic.gdx.files.FileHandle r0 = r1.absolute(r0)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r0 = info.flowersoft.theotown.util.Files.readTextFile(r0)     // Catch: java.lang.Throwable -> L3c
            if (r0 == 0) goto Lab
            r1 = 35
            int r1 = r0.indexOf(r1)     // Catch: java.lang.Throwable -> L3c
            if (r1 < 0) goto Lab
            int r1 = r1 + 1
            java.lang.String r0 = r0.substring(r1)     // Catch: java.lang.Throwable -> L3c
            info.flowersoft.theotown.util.json.JSONObject r1 = new info.flowersoft.theotown.util.json.JSONObject     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> La7
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> La7
            vm2.LuaTable r0 = info.flowersoft.theotown.scripting.LuaTableSerializer.deserialize(r1)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> La7
            r9.luaFileStorage = r0     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> La7
            vm2.LuaTable r0 = info.flowersoft.theotown.scripting.LuaUtil.getProxy(r0)     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> La7
            r9.luaFileStorageProxy = r0     // Catch: java.lang.Throwable -> L3c info.flowersoft.theotown.util.json.JSONException -> La7
            goto Lab
        La7:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L3c
        Lab:
            monitor-exit(r9)
            return
        Lad:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L3c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.GlobalTransitionVariables.load():void");
    }

    public synchronized JSONObject getMapping() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Long> entry : this.mapping.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public synchronized void save() {
        SSP.Writer writerEdit = this.ssp.edit();
        try {
            writerEdit.putString("mapping", getMapping().toString());
            writerEdit.putString("lua", LuaTableSerializer.serialize(this.luaStorage).toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        writerEdit.apply();
        File file = new File(Resources.getTheoTownDir(), ".pmodext");
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("Last played: " + InternetTime.getInstance().getTime() + "\n");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Access token: ");
            sb2.append(Hashing.md5(sb.toString()));
            sb.append(sb2.toString());
            for (int i = 0; i < 30; i++) {
                sb.append("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
            }
            Files.writeTextFile(file, ((Object) sb) + "#" + LuaTableSerializer.serialize(this.luaFileStorage));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public LuaTable getLuaStorage() {
        return this.luaStorageProxy;
    }

    public LuaTable getRawLuaStorage() {
        return this.luaStorage;
    }

    public LuaTable getLuaFileStorage() {
        return this.luaFileStorageProxy;
    }

    public LuaTable getRawLuaFileStorage() {
        return this.luaFileStorage;
    }

    public long add(String str, long j, long j2) {
        long j3 = get(str, j2) + j;
        set(str, j3);
        return j3;
    }

    public void set(String str, long j) {
        this.mapping.put(str, Long.valueOf(j));
    }

    public long get(String str, long j) {
        Long l = this.mapping.get(str);
        return l != null ? l.longValue() : j;
    }

    public void clear() {
        clearMapping();
        clearLuaStorage();
        clearLuaFileStorage();
    }

    public void clearMapping() {
        this.mapping.clear();
    }

    public void clearLuaStorage() {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        this.luaStorage = luaTableTableOf;
        this.luaStorageProxy = LuaUtil.getProxy(luaTableTableOf);
    }

    public void clearLuaFileStorage() {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        this.luaFileStorage = luaTableTableOf;
        this.luaFileStorageProxy = LuaUtil.getProxy(luaTableTableOf);
    }

    public List<String> getNames() {
        return new ArrayList(this.mapping.keySet());
    }

    public static void init() {
        if (instance != null) {
            dispose();
        }
        GlobalTransitionVariables globalTransitionVariables = new GlobalTransitionVariables();
        instance = globalTransitionVariables;
        Gdx.app.addLifecycleListener(globalTransitionVariables.lifecycleListener);
    }

    public static void dispose() {
        Gdx.app.removeLifecycleListener(instance.lifecycleListener);
        instance = null;
    }

    public static GlobalTransitionVariables getInstance() {
        return instance;
    }
}
