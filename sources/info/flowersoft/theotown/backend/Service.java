package info.flowersoft.theotown.backend;

import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class Service {
    public final String script;
    public final boolean secured;

    public interface Handler {
        void onFailure(JSONObject jSONObject);

        void onSuccess(JSONObject jSONObject);
    }

    public Service(String str, boolean z) {
        this.script = str;
        this.secured = z;
    }

    public Service(String str) {
        this(str, true);
    }

    public RequestBuilder buildRequest(String str) {
        return new RequestBuilder(str);
    }

    public Backend.Task buildTask(JSONObject jSONObject, final Handler handler) {
        Backend.Task task = new Backend.Task(this.script, jSONObject, new Backend.TaskResponseHandler() { // from class: info.flowersoft.theotown.backend.Service$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.backend.Backend.TaskResponseHandler
            public final void receive(Backend.Task task2, JSONObject jSONObject2) {
                Service.$r8$lambda$2VmXnbE2vgffllwpR4oD1qvkHS0(handler, task2, jSONObject2);
            }
        });
        task.setSecured(this.secured);
        return task;
    }

    public static /* synthetic */ void $r8$lambda$2VmXnbE2vgffllwpR4oD1qvkHS0(Handler handler, Backend.Task task, JSONObject jSONObject) {
        if (handler != null) {
            if (jSONObject.optString("status").equals("success")) {
                handler.onSuccess(jSONObject);
            } else {
                handler.onFailure(jSONObject);
            }
        }
    }

    public static class RequestBuilder {
        public JSONObject json;

        public RequestBuilder(String str) {
            this.json = new JSONObject();
            put("cmd", str);
        }

        public RequestBuilder put(String str, Object obj) {
            try {
                this.json.put(str, obj);
                return this;
            } catch (JSONException e) {
                e.printStackTrace();
                return this;
            }
        }

        public RequestBuilder put(String str, int i) {
            try {
                this.json.put(str, i);
                return this;
            } catch (JSONException e) {
                e.printStackTrace();
                return this;
            }
        }

        public RequestBuilder put(String str, float f) {
            try {
                this.json.put(str, f);
                return this;
            } catch (JSONException e) {
                e.printStackTrace();
                return this;
            }
        }

        public RequestBuilder put(String str, double d) {
            try {
                this.json.put(str, d);
                return this;
            } catch (JSONException e) {
                e.printStackTrace();
                return this;
            }
        }

        public JSONObject build() {
            return this.json;
        }
    }
}
