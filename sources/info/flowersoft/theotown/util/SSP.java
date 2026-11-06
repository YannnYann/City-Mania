package info.flowersoft.theotown.util;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.utils.Base64Coder;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class SSP {
    public final boolean compress;
    public final boolean disguise;
    public final boolean encrypt;
    public final String name;
    public String token;

    public interface Reader {
        Map<String, ?> getAll();

        JSONArray getArray(String str);

        boolean getBoolean(String str, boolean z);

        int getInt(String str, int i);

        long getLong(String str, long j);

        JSONObject getObject(String str);

        String getString(String str, String str2);

        Set<String> getStringSet(String str, Set<String> set);
    }

    public interface Writer {
        void apply();

        void putArray(String str, JSONArray jSONArray);

        void putBoolean(String str, boolean z);

        void putInt(String str, int i);

        void putLong(String str, long j);

        void putObject(String str, JSONObject jSONObject);

        void putString(String str, String str2);

        void putStringSet(String str, Set<String> set);
    }

    public static String migratePrefFile(String str) {
        File file = TheoTown.APP_PREFS_DIR;
        if (file == null || !file.getName().equals(".prefs") || Gdx.app.getType() != Application.ApplicationType.Desktop) {
            return str;
        }
        File file2 = new File(TheoTown.APP_PREFS_DIR, "theotown");
        file2.mkdirs();
        File file3 = new File(TheoTown.APP_PREFS_DIR, str);
        File file4 = new File(file2, str);
        if (!file4.exists() && file3.exists()) {
            file3.renameTo(file4);
        }
        return "theotown" + File.separator + str;
    }

    public SSP(String str) {
        this(str, true, true, true);
    }

    public SSP(String str, boolean z, boolean z2, boolean z3) {
        this.name = str;
        this.token = TheoTown.DEVICE_MANUFACTURER + ":" + TheoTown.DEVICE_MODEL;
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            this.token = ":";
        }
        this.disguise = z;
        this.encrypt = z2;
        this.compress = z3;
    }

    public final String getSecureName(String str) {
        if (this.disguise) {
            return new String(Base64Coder.encode(Hashing.md5((this.token + ":" + str).getBytes()))).replace('/', '_').replace('+', '-');
        }
        return str.replace('/', '_').replace('+', '-');
    }

    public final void xorBytes(byte[] bArr, String str) {
        byte[] bArrMd5 = Hashing.md5((str + ":some text").getBytes());
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArrMd5[i % bArrMd5.length]);
        }
    }

    public Reader load() {
        String string = Gdx.app.getPreferences(migratePrefFile(getSecureName(this.name))).getString(getSecureName(this.name + ":data"), "");
        if (string != null && !string.isEmpty()) {
            try {
                byte[] bArrDecode = Base64Coder.decode(string.replace("\n", "").replace(" ", ""));
                if (this.encrypt) {
                    xorBytes(bArrDecode, this.name);
                }
                if (this.compress) {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArrDecode));
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    StreamCopyUtil.copyTo(gZIPInputStream, byteArrayOutputStream);
                    bArrDecode = byteArrayOutputStream.toByteArray();
                }
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrDecode, 0, bArrDecode.length - 16);
                if (Arrays.equals(Hashing.md5(bArrCopyOfRange), Arrays.copyOfRange(bArrDecode, bArrDecode.length - 16, bArrDecode.length))) {
                    final JSONObject jSONObject = new JSONObject(new String(bArrCopyOfRange, StandardCharsets.UTF_8)).getJSONObject("prefs");
                    return new Reader() { // from class: info.flowersoft.theotown.util.SSP.1
                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public boolean getBoolean(String str, boolean z) {
                            return jSONObject.optBoolean(str, z);
                        }

                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public int getInt(String str, int i) {
                            return jSONObject.optInt(str, i);
                        }

                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public long getLong(String str, long j) {
                            return jSONObject.optLong(str, j);
                        }

                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public String getString(String str, String str2) {
                            return jSONObject.optString(str, str2);
                        }

                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public Set<String> getStringSet(String str, Set<String> set) {
                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
                            if (jSONArrayOptJSONArray != null) {
                                set = new HashSet<>();
                                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                    set.add(jSONArrayOptJSONArray.optString(i));
                                }
                            }
                            return set;
                        }

                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public Map<String, ?> getAll() {
                            HashMap map = new HashMap();
                            JSONArray jSONArrayNames = jSONObject.names();
                            if (jSONArrayNames != null) {
                                for (int i = 0; i < jSONArrayNames.length(); i++) {
                                    String strOptString = jSONArrayNames.optString(i);
                                    Object objOpt = jSONObject.opt(strOptString);
                                    if (objOpt != null) {
                                        if (objOpt instanceof JSONArray) {
                                            map.put(strOptString, getStringSet(strOptString, null));
                                        } else {
                                            map.put(strOptString, objOpt);
                                        }
                                    }
                                }
                            }
                            return map;
                        }

                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public JSONObject getObject(String str) {
                            return jSONObject.optJSONObject(str);
                        }

                        @Override // info.flowersoft.theotown.util.SSP.Reader
                        public JSONArray getArray(String str) {
                            return jSONObject.optJSONArray(str);
                        }
                    };
                }
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            } catch (OutOfMemoryError e3) {
                e3.printStackTrace();
            }
        }
        final Preferences preferences = Gdx.app.getPreferences(migratePrefFile(this.name));
        return new Reader() { // from class: info.flowersoft.theotown.util.SSP.2
            @Override // info.flowersoft.theotown.util.SSP.Reader
            public JSONArray getArray(String str) {
                return null;
            }

            @Override // info.flowersoft.theotown.util.SSP.Reader
            public JSONObject getObject(String str) {
                return null;
            }

            @Override // info.flowersoft.theotown.util.SSP.Reader
            public boolean getBoolean(String str, boolean z) {
                return preferences.getBoolean(str, z);
            }

            @Override // info.flowersoft.theotown.util.SSP.Reader
            public int getInt(String str, int i) {
                return preferences.getInteger(str, i);
            }

            @Override // info.flowersoft.theotown.util.SSP.Reader
            public long getLong(String str, long j) {
                try {
                    try {
                        return preferences.getLong(str, j);
                    } catch (ClassCastException unused) {
                        return j;
                    }
                } catch (ClassCastException unused2) {
                    return preferences.contains(str) ? preferences.getInteger(str, (int) j) : j;
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Reader
            public String getString(String str, String str2) {
                return preferences.getString(str, str2);
            }

            @Override // info.flowersoft.theotown.util.SSP.Reader
            public Set<String> getStringSet(String str, Set<String> set) {
                Object obj = preferences.get().get(str);
                return obj instanceof Set ? (Set) obj : set;
            }

            @Override // info.flowersoft.theotown.util.SSP.Reader
            public Map<String, ?> getAll() {
                return preferences.get();
            }
        };
    }

    public Writer edit() {
        final JSONObject jSONObject = new JSONObject();
        return new Writer() { // from class: info.flowersoft.theotown.util.SSP.3
            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void putBoolean(String str, boolean z) {
                try {
                    jSONObject.put(str, z);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void putInt(String str, int i) {
                try {
                    jSONObject.put(str, i);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void putLong(String str, long j) {
                try {
                    jSONObject.put(str, j);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void putString(String str, String str2) {
                try {
                    jSONObject.put(str, str2);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void putStringSet(String str, Set<String> set) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<String> it = set.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next());
                    }
                    jSONObject.put(str, jSONArray);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void putObject(String str, JSONObject jSONObject2) {
                try {
                    jSONObject.put(str, jSONObject2);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void putArray(String str, JSONArray jSONArray) {
                try {
                    jSONObject.put(str, jSONArray);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.util.SSP.Writer
            public void apply() {
                SSP.this.saveSecured(jSONObject);
            }
        };
    }

    public final void saveSecured(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("prefs", jSONObject);
            jSONObject2.put("version", 1);
            jSONObject2.put("version code", TheoTown.VERSION_CODE);
            jSONObject2.put("time", InternetTime.getInstance().getTime());
            jSONObject2.put("extra", "Lobby was here");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        byte[] bytes = jSONObject2.toString().getBytes();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            OutputStream outputStream = this.compress ? new GZIPOutputStream(byteArrayOutputStream) { // from class: info.flowersoft.theotown.util.SSP.4
                {
                    ((GZIPOutputStream) this).def.setLevel(1);
                }
            } : byteArrayOutputStream;
            outputStream.write(bytes);
            outputStream.write(Hashing.md5(bytes));
            outputStream.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (this.encrypt) {
            xorBytes(byteArray, this.name);
        }
        String str = new String(Base64Coder.encode(byteArray));
        Preferences preferences = Gdx.app.getPreferences(migratePrefFile(getSecureName(this.name)));
        preferences.putString(getSecureName(this.name + ":data"), str);
        preferences.flush();
    }
}
