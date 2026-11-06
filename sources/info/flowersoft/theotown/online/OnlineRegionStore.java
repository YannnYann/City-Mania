package info.flowersoft.theotown.online;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.ironsource.R6;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineRegionStore {
    public String GET_FILE_URL;
    public VirtualRegion[] regions;
    public RegionTagMap tags;
    public final Service service = new Service("region/region", false);
    public Map<Integer, VirtualRegion> idToRegion = new HashMap();
    public IntList visitedRegionIds = new IntList();

    public void reportCity(int i, String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("report city").put("city_id", i).put("reason", str).build(), handler).setUserBound(false));
    }

    public void reportRegion(int i, String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("report region").put("region_id", i).put("reason", str).build(), handler).setUserBound(false));
    }

    public void reportGift(int i, String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("report gift").put("gift_id", i).put("reason", str).build(), handler).setUserBound(false));
    }

    public void fetchUsersByName(String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("search user").put("term", str).put("user_id", 0).build(), handler).setUserBound(false));
    }

    public void fetchRegionComments(int i, String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("region comments").put("region_id", i).put("password", str).put("user_id", getUserId()).build(), handler).setUserBound(false));
    }

    public void fetchCityComments(int i, String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("city comments").put("city_id", i).put("password", str).put("user_id", getUserId()).build(), handler).setUserBound(false));
    }

    public void fetchCityGifts(int i, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("city gifts").put("city_id", i).put("user_id", getUserId()).build(), handler).setUserBound(false));
    }

    public final long getUserId() {
        User user = Backend.getInstance().getUser();
        if (user != null && user.isValid() && user.isForumConnected()) {
            return user.getId();
        }
        return 0L;
    }

    public final RegionTagMap parseTags(JSONArray jSONArray) throws JSONException {
        RegionTagMap regionTagMap = new RegionTagMap();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            regionTagMap.put(jSONObject.getInt(C3670j8.x), jSONObject.getString("name"), Color.fromHex(jSONObject.getString(C3522b4.i.S), Colors.BLACK, new Color()), jSONObject.optInt(R6.K0, 0));
        }
        return regionTagMap;
    }

    public void fetchTags(final Runnable runnable) {
        Backend.Task taskBuildTask = this.service.buildTask(this.service.buildRequest("list tags").put("user_id", getUserId()).build(), new Service.Handler() { // from class: info.flowersoft.theotown.online.OnlineRegionStore.1
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                try {
                    synchronized (OnlineRegionStore.this) {
                        OnlineRegionStore onlineRegionStore = OnlineRegionStore.this;
                        onlineRegionStore.tags = onlineRegionStore.parseTags(jSONObject.getJSONArray("tags"));
                    }
                    runnable.run();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                TheoTown.runtimeFeatures.showToast("Error loading tags: " + jSONObject.optString("hint", "Unknown"));
            }
        });
        taskBuildTask.setUserBound(false);
        Backend.getInstance().addTask(taskBuildTask);
    }

    public void fetchListRegions(final Runnable runnable, String str, long j, String str2) {
        Backend.Task taskBuildTask = this.service.buildTask(this.service.buildRequest("list regions").put("type", str).put("type_id", j).put("type_extra", str2).put("user_id", getUserId()).build(), new Service.Handler() { // from class: info.flowersoft.theotown.online.OnlineRegionStore.2
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                try {
                    OnlineRegionStore.this.GET_FILE_URL = jSONObject.getString("get file url");
                    synchronized (OnlineRegionStore.this) {
                        try {
                            OnlineRegionStore onlineRegionStore = OnlineRegionStore.this;
                            onlineRegionStore.tags = onlineRegionStore.parseTags(jSONObject.getJSONArray("tags"));
                            JSONArray jSONArray = jSONObject.getJSONArray("regions");
                            VirtualRegion[] virtualRegionArr = new VirtualRegion[jSONArray.length()];
                            HashMap map = new HashMap();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                VirtualRegion virtualRegion = new VirtualRegion(jSONArray.getJSONObject(i));
                                virtualRegionArr[i] = virtualRegion;
                                map.put(Integer.valueOf(virtualRegion.getId()), virtualRegionArr[i]);
                            }
                            OnlineRegionStore.this.regions = virtualRegionArr;
                            OnlineRegionStore.this.idToRegion = map;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    runnable.run();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                TheoTown.runtimeFeatures.showToast("Error loading region list: " + jSONObject.optString("hint", "Unknown"));
            }
        });
        taskBuildTask.setUserBound(false);
        Backend.getInstance().addTask(taskBuildTask);
    }

    public void fetchEnterRegion(final int i, String str, final Runnable runnable, final Setter<String> setter, int i2) {
        if (i2 > 0 && this.visitedRegionIds.contains(i2)) {
            i2 = 0;
        }
        if (i2 > 0) {
            this.visitedRegionIds.add(i2);
        }
        JSONObject jSONObjectBuild = this.service.buildRequest("enter region").build();
        try {
            jSONObjectBuild.put("region_id", i).put("user_id", getUserId()).put("city_id", i2);
            if (str != null && !str.isEmpty()) {
                jSONObjectBuild.put("password", str);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Backend.Task taskBuildTask = this.service.buildTask(jSONObjectBuild, new Service.Handler() { // from class: info.flowersoft.theotown.online.OnlineRegionStore.3
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                try {
                    OnlineRegionStore.this.GET_FILE_URL = jSONObject.getString("get file url");
                    VirtualRegion virtualRegion = new VirtualRegion(jSONObject.getJSONObject("region"));
                    int regionIndex = OnlineRegionStore.this.getRegionIndex(i);
                    synchronized (OnlineRegionStore.this) {
                        try {
                            if (regionIndex >= 0) {
                                OnlineRegionStore.this.regions[regionIndex] = virtualRegion;
                                OnlineRegionStore.this.idToRegion.put(Integer.valueOf(i), virtualRegion);
                            } else {
                                OnlineRegionStore.this.regions = new VirtualRegion[]{virtualRegion};
                                HashMap map = new HashMap();
                                map.put(Integer.valueOf(i), virtualRegion);
                                OnlineRegionStore.this.idToRegion = map;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    Setter setter2 = setter;
                    if (setter2 != null) {
                        setter2.set(e2.toString());
                    }
                }
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                Setter setter2 = setter;
                if (setter2 != null) {
                    setter2.set(jSONObject.optString("hint", "Error when entering region"));
                }
            }
        });
        taskBuildTask.setUserBound(false);
        Backend.getInstance().addTask(taskBuildTask);
    }

    public VirtualRegion[] getRegions() {
        return this.regions;
    }

    public VirtualRegion getRegion(int i) {
        return this.idToRegion.get(Integer.valueOf(i));
    }

    public RegionTagMap getTags() {
        return this.tags;
    }

    public final int getRegionIndex(int i) {
        int i2 = 0;
        while (true) {
            VirtualRegion[] virtualRegionArr = this.regions;
            if (i2 >= virtualRegionArr.length) {
                return -1;
            }
            if (virtualRegionArr[i2].getId() == i) {
                return i2;
            }
            i2++;
        }
    }

    public String getFilePath(String str) {
        return this.GET_FILE_URL + str;
    }
}
