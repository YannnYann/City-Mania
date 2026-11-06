package info.flowersoft.theotown.online;

import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CityGiftManager {
    public int cityId;
    public List<VirtualGift> gifts;
    public boolean hasUnclaimedGifts;
    public long lastIssueTime;
    public long lastResultTime;
    public int ownerId;
    public OnlineRegionStore store;
    public RegionUploader uploader;
    public boolean valid;

    public CityGiftManager(OnlineRegionStore onlineRegionStore, RegionUploader regionUploader, int i, int i2) {
        this.store = onlineRegionStore;
        this.uploader = regionUploader;
        this.cityId = i;
        this.ownerId = i2;
        fetch(true);
    }

    public List<VirtualGift> getGifts() {
        return this.gifts;
    }

    public void fetch(boolean z) {
        if (z || System.currentTimeMillis() - this.lastIssueTime >= 10000) {
            final boolean z2 = z || !this.valid;
            if (z2) {
                this.valid = false;
            }
            this.lastIssueTime = System.currentTimeMillis();
            this.store.fetchCityGifts(this.cityId, new Service.Handler() { // from class: info.flowersoft.theotown.online.CityGiftManager.1
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject) {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("gifts");
                    if (jSONArrayOptJSONArray != null) {
                        ArrayList arrayList = new ArrayList();
                        int i = 0;
                        boolean z3 = false;
                        while (true) {
                            boolean z4 = true;
                            if (i >= jSONArrayOptJSONArray.length()) {
                                break;
                            }
                            try {
                                VirtualGift virtualGift = new VirtualGift(jSONArrayOptJSONArray.getJSONObject(i));
                                if (!GameHandler.getInstance().isEventRedeemed("report:gift:" + virtualGift.getId())) {
                                    if (virtualGift.getType() == GiftType.UNKNOWN || virtualGift.getReceiveTime() != 0) {
                                        z4 = false;
                                    }
                                    z3 |= z4;
                                    arrayList.add(virtualGift);
                                }
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                            i++;
                        }
                        CityGiftManager.this.hasUnclaimedGifts = z3;
                        CityGiftManager.this.gifts = arrayList;
                        CityGiftManager.this.lastResultTime = System.currentTimeMillis();
                        if (z2) {
                            CityGiftManager.this.valid = true;
                        }
                    }
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject) {
                    TheoTown.runtimeFeatures.showToast("Failed to look for gifts" + jSONObject.optString("hint", jSONObject.optString("status")));
                }
            });
        }
    }

    public void markGiftsAsSeen() {
        List<VirtualGift> list = this.gifts;
        if (list != null) {
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                final VirtualGift virtualGift = list.get(i2);
                if (virtualGift.getReceiveTime() == 0 && !virtualGift.getType().isConsumable() && virtualGift.getType() != GiftType.UNKNOWN) {
                    i++;
                    redeem(virtualGift, new Runnable() { // from class: info.flowersoft.theotown.online.CityGiftManager.2
                        @Override // java.lang.Runnable
                        public void run() {
                            virtualGift.setReceiveTime(System.currentTimeMillis() / 1000);
                        }
                    }, new Setter<String>() { // from class: info.flowersoft.theotown.online.CityGiftManager.3
                        @Override // io.blueflower.stapel2d.util.Setter
                        public void set(String str) {
                        }
                    });
                }
            }
            if (i > 0) {
                fetch(true);
            }
        }
    }

    public void redeem(VirtualGift virtualGift, final Runnable runnable, final Setter<String> setter) {
        User user = Backend.getInstance().getUser();
        if (virtualGift != null && this.ownerId == user.getId() && user.isValid() && user.isForumConnected() && virtualGift.getReceiveTime() == 0) {
            this.uploader.useGift(virtualGift.getId(), new Service.Handler() { // from class: info.flowersoft.theotown.online.CityGiftManager.4
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject) {
                    runnable.run();
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject) {
                    setter.set(jSONObject.optString("hint", jSONObject.optString("status", jSONObject.toString())));
                }
            });
        } else {
            setter.set("Invalid gift");
        }
    }

    public void createGift(GiftType giftType, double d, String str, boolean z, Runnable runnable, Setter<String> setter) {
        createGift(new String[]{giftType.getId()}, d, str, z, runnable, setter);
    }

    public final void createGift(String[] strArr, double d, String str, boolean z, final Runnable runnable, final Setter<String> setter) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i < strArr.length - 1) {
                sb.append(':');
            }
        }
        User user = Backend.getInstance().getUser();
        if (user.isValid() && user.isForumConnected()) {
            this.uploader.makeGift(this.cityId, sb.toString(), d, str, z, new Service.Handler() { // from class: info.flowersoft.theotown.online.CityGiftManager.5
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject) {
                    runnable.run();
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject) {
                    setter.set(jSONObject.optString("hint", jSONObject.optString("status", jSONObject.toString())));
                }
            });
        } else {
            setter.set("Invalid user");
        }
    }

    public void reportGift(final VirtualGift virtualGift, String str, final Service.Handler handler) {
        this.store.reportGift(virtualGift.getId(), str, new Service.Handler() { // from class: info.flowersoft.theotown.online.CityGiftManager.6
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                GameHandler.getInstance().redeemEvent("report:gift:" + virtualGift.getId());
                handler.onSuccess(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                handler.onFailure(jSONObject);
            }
        });
    }

    public void deleteGift(VirtualGift virtualGift, Service.Handler handler) {
        this.uploader.deleteGift(virtualGift.getId(), handler);
    }

    public boolean isReceiver() {
        User user = Backend.getInstance().getUser();
        return user.isValid() && user.isForumConnected() && user.getId() == ((long) this.ownerId);
    }

    public boolean hasUnclaimedGiftsUser() {
        return this.hasUnclaimedGifts && isReceiver();
    }
}
