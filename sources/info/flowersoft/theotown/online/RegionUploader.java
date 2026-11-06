package info.flowersoft.theotown.online;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.ironsource.C3844t;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.FileUploader;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class RegionUploader {
    public static final Service MANAGE_REGION_SERVICE = new Service("region/manage_region");
    public final FileUploader fileUploader = new FileUploader();

    public void listNotifications(Service.Handler handler, boolean z) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("list notifications").put("unseen_only", z ? 1 : 0).build(), handler));
    }

    public void markNotificationsAsSeen(Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("mark notifications as seen").build(), handler));
    }

    public void makeGift(int i, String str, double d, String str2, boolean z, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("make gift").put("city_id", i).put("type", str).put(C3844t.l, d).put(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, str2).put("private", z ? 1 : 0).build(), handler));
    }

    public void useGift(int i, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("use gift").put("gift_id", i).build(), handler));
    }

    public void deleteGift(int i, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("delete gift").put("gift_id", i).build(), handler));
    }

    public void resetCity(int i, String str, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("reset city").put("city_id", i).put("reason", str).build(), handler));
    }

    public void removeOwner(int i, String str, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("remove city owner").put("city_id", i).put("reason", str).build(), handler));
    }

    public void transferCity(int i, int i2, String str, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("transfer city").put("city_id", i).put("new_owner_id", i2).put("reason", str).build(), handler));
    }

    public void transferRegion(int i, int i2, String str, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("transfer region").put("region_id", i).put("new_owner_id", i2).put("reason", str).build(), handler));
    }

    public void renameRegion(int i, String str, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("rename region").put("region_id", i).put("name", str).build(), handler));
    }

    public void deleteRegion(int i, String str, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("delete region").put("region_id", i).put("reason", str).build(), handler));
    }

    public void setRegionAllowComments(int i, boolean z, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("set region allow comments").put("region_id", i).put("allow", Boolean.valueOf(z)).build(), handler));
    }

    public void setCityAllowComments(int i, boolean z, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("set city allow comments").put("city_id", i).put("allow", Boolean.valueOf(z)).build(), handler));
    }

    public void commentRegion(int i, String str, String str2, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("comment region").put("region_id", i).put(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, str2).put("password", str).build(), handler));
    }

    public void commentCity(int i, String str, String str2, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("comment city").put("city_id", i).put(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, str2).put("password", str).build(), handler));
    }

    public void acquireCity(int i, String str, final Runnable runnable, final Setter<String> setter) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("acquire").put("city_id", i).put("password", str).build(), new Service.Handler() { // from class: info.flowersoft.theotown.online.RegionUploader.1
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                runnable.run();
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                setter.set(jSONObject.optString("hint", "Error"));
            }
        }));
    }

    public void clearRegionReports(int i, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("clear region reports").put("region_id", i).build(), handler));
    }

    public void clearCityRequests(int i, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("clear city reports").put("city_id", i).build(), handler));
    }

    public void setCityProtected(int i, boolean z, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("protect city").put("city_id", i).put("state", z ? 1 : 0).build(), handler));
    }

    public void applyRegionSettings(int i, RegionSettings regionSettings, Service.Handler handler) {
        Service service = MANAGE_REGION_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("configure region").put("region_id", i).put("allow_plugins", regionSettings.allowPlugins ? 1 : 0).put("allow_sandbox", regionSettings.allowSandbox ? 1 : 0).put(C3522b4.i.H0, regionSettings.icon.getTag()).put("rules", regionSettings.rules).put("infos", regionSettings.infos).put("password", regionSettings.password).put("enforce_password", Boolean.valueOf(regionSettings.enforcePassword)).put("winter", regionSettings.winter).put("extra", regionSettings.getExtra().toString()).put("tags", regionSettings.tags.join(",")).build(), handler));
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.online.RegionUploader$2, reason: invalid class name */
    public class AnonymousClass2 implements Getter<String> {
        public boolean done;
        public String failedMessage;
        public int fileId;
        public final /* synthetic */ int val$cityId;
        public final /* synthetic */ File val$file;

        public AnonymousClass2(File file, int i) {
            this.val$file = file;
            this.val$cityId = i;
        }

        @Override // io.blueflower.stapel2d.util.Getter
        public String get() {
            RegionUploader.this.fileUploader.addFile("city", this.val$file, new Setter<Integer>() { // from class: info.flowersoft.theotown.online.RegionUploader.2.1
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Integer num) {
                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                    anonymousClass2.done = true;
                    anonymousClass2.fileId = num.intValue();
                }
            }, new Setter<String>() { // from class: info.flowersoft.theotown.online.RegionUploader.2.2
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(String str) {
                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                    anonymousClass2.done = true;
                    anonymousClass2.failedMessage = str;
                }
            });
            while (!this.done) {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            if (this.failedMessage == null) {
                Backend.getInstance().addTask(RegionUploader.MANAGE_REGION_SERVICE.buildTask(RegionUploader.MANAGE_REGION_SERVICE.buildRequest("update").put("city_id", this.val$cityId).put("file_id", this.fileId).build(), new Service.Handler() { // from class: info.flowersoft.theotown.online.RegionUploader.2.3
                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onSuccess(JSONObject jSONObject) {
                        AnonymousClass2.this.done = true;
                    }

                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onFailure(JSONObject jSONObject) {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        anonymousClass2.done = true;
                        anonymousClass2.failedMessage = jSONObject.optString("hint", jSONObject.toString());
                    }
                }));
                while (!this.done) {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            return this.failedMessage;
        }
    }

    public Getter<String> uploadCity(int i, File file) {
        return new AnonymousClass2(file, i);
    }

    public Getter<String> uploadRegion(final LocalMapDirectory localMapDirectory, final ProgressVariable progressVariable, final String str, final String str2, final boolean z) {
        return new Getter<String>() { // from class: info.flowersoft.theotown.online.RegionUploader.3
            public boolean done;
            public String failedMessage;
            public final Map<CityKeeper, Integer> uploadedCities = new HashMap();

            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                List<CityKeeper> maps = localMapDirectory.getMaps();
                for (int i = 0; i < maps.size() && this.failedMessage == null; i++) {
                    final CityKeeper cityKeeper = maps.get(i);
                    File file = cityKeeper.getFile();
                    this.done = false;
                    RegionUploader.this.fileUploader.addFile("city", file, new Setter<Integer>() { // from class: info.flowersoft.theotown.online.RegionUploader.3.1
                        @Override // io.blueflower.stapel2d.util.Setter
                        public void set(Integer num) {
                            AnonymousClass3.this.uploadedCities.put(cityKeeper, num);
                            AnonymousClass3.this.done = true;
                        }
                    }, new Setter<String>() { // from class: info.flowersoft.theotown.online.RegionUploader.3.2
                        @Override // io.blueflower.stapel2d.util.Setter
                        public void set(String str3) {
                            AnonymousClass3.this.done = true;
                            AnonymousClass3.this.failedMessage = str3;
                        }
                    });
                    while (!this.done) {
                        try {
                            Thread.sleep(10L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    progressVariable.setProgress(i / maps.size());
                }
                if (this.failedMessage == null) {
                    this.done = false;
                    try {
                        JSONObject jSONObjectBuild = RegionUploader.MANAGE_REGION_SERVICE.buildRequest("create").build();
                        String name = str;
                        if (name == null || name.isEmpty()) {
                            name = localMapDirectory.getRegionInformation().getName();
                        }
                        jSONObjectBuild.put("name", name);
                        String str3 = str2;
                        if (str3 != null && !str3.isEmpty()) {
                            jSONObjectBuild.put("password", str2);
                        }
                        jSONObjectBuild.put("allow_plugins", z ? "1" : "0");
                        JSONArray jSONArray = new JSONArray();
                        for (Map.Entry<CityKeeper, Integer> entry : this.uploadedCities.entrySet()) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(C3670j8.x, entry.getValue());
                            jSONObject.put("name", entry.getKey().getFile().getName());
                            jSONArray.put(jSONObject);
                        }
                        jSONObjectBuild.put("files", jSONArray);
                        Backend.getInstance().addTask(RegionUploader.MANAGE_REGION_SERVICE.buildTask(jSONObjectBuild, new Service.Handler() { // from class: info.flowersoft.theotown.online.RegionUploader.3.3
                            @Override // info.flowersoft.theotown.backend.Service.Handler
                            public void onSuccess(JSONObject jSONObject2) {
                                TheoTown.runtimeFeatures.showToast("Successfully uploaded region");
                                AnonymousClass3.this.done = true;
                            }

                            @Override // info.flowersoft.theotown.backend.Service.Handler
                            public void onFailure(JSONObject jSONObject2) {
                                AnonymousClass3.this.failedMessage = jSONObject2.optString("hint", jSONObject2.optString("status", jSONObject2.toString()));
                                AnonymousClass3.this.done = true;
                            }
                        }));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    while (!this.done) {
                        try {
                            Thread.sleep(10L);
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                        }
                    }
                    progressVariable.setProgress(1.0f);
                }
                return this.failedMessage;
            }
        };
    }
}
