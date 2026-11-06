package info.flowersoft.theotown.backend;

import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class UserService extends Service {

    public interface UnlinkSteamHandler {
        void onFailure(String str);

        void onSuccess();
    }

    public UserService() {
        super("user/user.php");
    }

    public Backend.Task unlinkSteamAccount(final UnlinkSteamHandler unlinkSteamHandler) {
        return buildTask(buildRequest("unlink steam").build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.UserService.3
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                unlinkSteamHandler.onSuccess();
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                unlinkSteamHandler.onFailure(jSONObject.optString("status"));
            }
        });
    }
}
