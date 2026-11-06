package info.flowersoft.theotown.backend;

import com.badlogic.gdx.utils.IntSet;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class UnifiedCommentControl {
    public static final Service MANAGE_SERVICE = new Service("user/manage_comment");
    public static final Service REPORT_SERVICE = new Service("user/report_comment", false);
    public final IntSet reportedComments = new IntSet();
    public final SSP ssp = new SSP("commentcontrol");

    public UnifiedCommentControl(Stapel2DGameContext stapel2DGameContext) {
        load();
    }

    public final synchronized void load() {
        try {
            try {
                JSONArray jSONArray = new JSONArray(this.ssp.load().getString("reported comments", "[]"));
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.reportedComments.add(jSONArray.optInt(i, 0));
                }
                this.reportedComments.remove(0);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void save() {
        try {
            JSONArray jSONArray = new JSONArray();
            IntSet.IntSetIterator it = this.reportedComments.iterator();
            while (it.hasNext) {
                jSONArray.put(it.next());
            }
            SSP.Writer writerEdit = this.ssp.edit();
            writerEdit.putString("reported comments", jSONArray.toString());
            writerEdit.apply();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void sendDeleteRequest(int i, Service.Handler handler) {
        Service service = MANAGE_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("delete").put(C3670j8.x, i).build(), handler));
    }

    public boolean hasReportedComment(int i) {
        return this.reportedComments.contains(i);
    }

    public void sendReportRequest(final int i, String str, final Runnable runnable, final Setter<String> setter) {
        Service service = REPORT_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("report").put(C3670j8.x, i).put("reason", str).build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.UnifiedCommentControl.1
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                synchronized (UnifiedCommentControl.this) {
                    UnifiedCommentControl.this.load();
                    UnifiedCommentControl.this.reportedComments.add(i);
                    UnifiedCommentControl.this.save();
                }
                runnable.run();
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                setter.set(jSONObject.optString("hint", jSONObject.optString("status")));
            }
        }).setUserBound(false));
    }
}
