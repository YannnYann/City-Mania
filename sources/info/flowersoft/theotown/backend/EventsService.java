package info.flowersoft.theotown.backend;

import com.ironsource.C3670j8;
import com.ironsource.C3844t;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.mechanics.LogEntry;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class EventsService extends Service {
    public EventsService() {
        super("user/events.php");
    }

    public Backend.Task logs(List<LogEntry> list, final Runnable runnable, final Runnable runnable2) {
        Service.RequestBuilder requestBuilderBuildRequest = buildRequest("logs");
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            try {
                JSONObject jSONObject = new JSONObject();
                list.get(i).save(jSONObject);
                jSONArray.put(jSONObject);
            } catch (JSONException unused) {
            }
        }
        requestBuilderBuildRequest.put("logs", jSONArray);
        return buildTask(requestBuilderBuildRequest.build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.EventsService.1
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject2) {
                runnable.run();
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject2) {
                runnable2.run();
            }
        });
    }

    public Backend.Task getEvent(String str, final int i, final int i2, final Setter<Tuple<Integer, Long>> setter) {
        Service.RequestBuilder requestBuilderBuildRequest = buildRequest("get event");
        requestBuilderBuildRequest.put(C3670j8.x, str);
        return buildTask(requestBuilderBuildRequest.build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.EventsService.2
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                setter.set(new Tuple(Integer.valueOf(jSONObject.optInt(C3844t.l)), Long.valueOf(jSONObject.optLong("change_time"))));
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                if (jSONObject.optString("status").equals("could not find")) {
                    setter.set(new Tuple(Integer.valueOf(i), 0L));
                } else {
                    setter.set(new Tuple(Integer.valueOf(i2), 0L));
                }
            }
        });
    }

    public Backend.Task maxEvent(String str, int i, final Setter<Tuple<Integer, Long>> setter) {
        Service.RequestBuilder requestBuilderBuildRequest = buildRequest("max event");
        requestBuilderBuildRequest.put(C3670j8.x, str);
        requestBuilderBuildRequest.put(C3844t.l, i);
        return buildTask(requestBuilderBuildRequest.build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.EventsService.4
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                setter.set(new Tuple(Integer.valueOf(jSONObject.optInt(C3844t.l)), Long.valueOf(jSONObject.optLong("change_time"))));
            }
        });
    }
}
