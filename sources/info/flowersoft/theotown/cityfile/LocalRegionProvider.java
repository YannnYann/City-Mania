package info.flowersoft.theotown.cityfile;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.unity3d.ads.BuildConfig;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LocalRegionProvider extends RegionProvider {
    public final Stapel2DGameContext context;
    public boolean loaded;
    public final List<LocalMapDirectory> regions = new ArrayList();
    public String selectedRegion;

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int getAnyId() {
        return 0;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int getIndex(int i) {
        return i;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public boolean isOnline() {
        return false;
    }

    public LocalRegionProvider(Stapel2DGameContext stapel2DGameContext) {
        this.context = stapel2DGameContext;
    }

    public void setSelectedRegionPath(String str) {
        this.selectedRegion = str;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public void load(Runnable runnable) {
        JSONArray jSONArray;
        LocalMapDirectory region;
        ArrayList<String> arrayList = new ArrayList();
        FileHandle fileHandleInternal = Gdx.files.internal(Hashing.internalName("regions.zip", "ae6bb9dcccb3ee65a2a5e1964c8ca37b"));
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(getFileContent("files.lby")).optJSONArray("files");
            int i = 0;
            while (true) {
                if (i >= jSONArrayOptJSONArray.length()) {
                    jSONArray = null;
                    break;
                } else {
                    if (jSONArrayOptJSONArray.getJSONObject(i).optString("original name", "").equals("regions.zip")) {
                        jSONArray = jSONArrayOptJSONArray.getJSONObject(i).getJSONArray("zip");
                        break;
                    }
                    i++;
                }
            }
            if (jSONArray != null) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    String strOptString = jSONObjectOptJSONObject.optString("name");
                    if (!jSONObjectOptJSONObject.optBoolean("dir") && strOptString.endsWith("/region.json")) {
                        String strSubstring = strOptString.substring(0, strOptString.lastIndexOf("region.json"));
                        if (strSubstring.indexOf(47) == strSubstring.length() - 1) {
                            arrayList.add(strSubstring);
                        }
                    }
                }
                List<String> listCollectRegions = LocalMapDirectory.collectRegions();
                for (String str : arrayList) {
                    String strSubstring2 = str.substring(0, str.length() - 1);
                    if (!listCollectRegions.contains(strSubstring2)) {
                        listCollectRegions.add(strSubstring2);
                    }
                }
                Collections.sort(listCollectRegions);
                final HashMap map = new HashMap();
                for (String str2 : listCollectRegions) {
                    if (arrayList.contains(str2 + "/")) {
                        region = LocalMapDirectory.getRegion(str2, this.context, fileHandleInternal, jSONArray);
                    } else {
                        region = LocalMapDirectory.getRegion(str2, this.context);
                    }
                    this.regions.add(region);
                }
                for (int i3 = 0; i3 < this.regions.size(); i3++) {
                    LocalMapDirectory localMapDirectory = this.regions.get(i3);
                    if (localMapDirectory.hasSource()) {
                        localMapDirectory.restoreFromZipSource();
                    }
                    RegionInformation regionInformation = localMapDirectory.getRegionInformation();
                    map.put(localMapDirectory.getDirectory().getName(), Long.valueOf(regionInformation.getTime()));
                    localMapDirectory.saveRegionInformation(regionInformation);
                }
                Collections.sort(this.regions, new Comparator<LocalMapDirectory>() { // from class: info.flowersoft.theotown.cityfile.LocalRegionProvider.1
                    @Override // java.util.Comparator
                    public int compare(LocalMapDirectory localMapDirectory2, LocalMapDirectory localMapDirectory3) {
                        long jLongValue = ((Long) map.get(localMapDirectory2.getDirectory().getName())).longValue();
                        long jLongValue2 = ((Long) map.get(localMapDirectory3.getDirectory().getName())).longValue();
                        if (jLongValue < jLongValue2) {
                            return -1;
                        }
                        return jLongValue > jLongValue2 ? 1 : 0;
                    }
                });
                this.loaded = true;
                runnable.run();
                return;
            }
            throw new IllegalStateException("Couldn't find regions file. Installation is probably corrupted.");
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String getFileContent(String str) {
        return PackedUtils.INSTANCE.readInternalText(str);
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int getDefaultRegionId(String str) {
        File file = new File(TheoTown.APP_DIR, str);
        File parentFile = file.getParentFile();
        if (this.selectedRegion != null) {
            for (int i = 0; i < this.regions.size(); i++) {
                if (this.regions.get(i).getDirectory().getName().equals(this.selectedRegion)) {
                    return i;
                }
            }
        }
        int i2 = -1;
        for (int i3 = 0; i3 < this.regions.size(); i3++) {
            LocalMapDirectory localMapDirectory = this.regions.get(i3);
            if (localMapDirectory.getDirectory().getName().equals(BuildConfig.FLAVOR) && i2 < 0) {
                i2 = i3;
            }
            if (parentFile != null && localMapDirectory.getDirectory().getName().equals(parentFile.getName())) {
                return i3;
            }
            if (!str.isEmpty() && localMapDirectory.getMap(file) != null) {
                i2 = i3;
            }
        }
        return i2;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public MapDirectory get(int i) {
        if (i < 0 || i >= this.regions.size()) {
            return null;
        }
        return this.regions.get(i);
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int size() {
        return this.regions.size();
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int nextId(int i) {
        return (i + 1) % this.regions.size();
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int prevId(int i) {
        return ((i + this.regions.size()) - 1) % this.regions.size();
    }
}
