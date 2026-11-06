package info.flowersoft.theotown.backend;

import com.ironsource.C3670j8;
import com.ironsource.C3844t;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class PurchasesService extends Service {
    public PurchasesService() {
        super("user/purchases.php");
    }

    public Backend.Task getPurchases(final Setter<List<Tuple<String, Integer>>> setter) {
        return buildTask(buildRequest("get purchases").build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.PurchasesService.1
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("purchases");
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    arrayList.add(new Tuple(jSONObjectOptJSONObject.optString("purchase_id"), Integer.valueOf(jSONObjectOptJSONObject.optInt(C3844t.l))));
                }
                setter.set(arrayList);
            }
        });
    }

    public Backend.Task addPurchase(String str, int i, final Setter<Tuple<String, Integer>> setter) {
        Service.RequestBuilder requestBuilderBuildRequest = buildRequest("add purchase");
        requestBuilderBuildRequest.put(C3670j8.x, str);
        requestBuilderBuildRequest.put(C3844t.l, i);
        return buildTask(requestBuilderBuildRequest.build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.PurchasesService.2
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                setter.set(new Tuple(jSONObject.optString("purchase_id"), Integer.valueOf(jSONObject.optInt(C3844t.l))));
            }
        });
    }

    public Backend.Task maxPurchase(String str, int i, final Setter<Tuple<String, Integer>> setter) {
        Service.RequestBuilder requestBuilderBuildRequest = buildRequest("max purchase");
        requestBuilderBuildRequest.put(C3670j8.x, str);
        requestBuilderBuildRequest.put(C3844t.l, i);
        return buildTask(requestBuilderBuildRequest.build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.PurchasesService.3
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                setter.set(new Tuple(jSONObject.optString("purchase_id"), Integer.valueOf(jSONObject.optInt(C3844t.l))));
            }
        });
    }
}
