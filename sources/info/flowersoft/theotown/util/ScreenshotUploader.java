package info.flowersoft.theotown.util;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.BackendConnector;
import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.ResolutionManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class ScreenshotUploader {
    public String abortReason;
    public boolean aborted;
    public final City city;
    public final Stapel2DGameContext context;
    public float progress;
    public boolean running;
    public boolean success;

    public ScreenshotUploader(City city, Stapel2DGameContext stapel2DGameContext) {
        this.city = city;
        this.context = stapel2DGameContext;
    }

    public void upload(Pixmap pixmap) {
        Pixmap pixmap2;
        JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("gallery");
        if (this.running) {
            throw new IllegalStateException("Can only upload one at a time");
        }
        this.running = true;
        this.aborted = false;
        this.success = false;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int iMax = Math.max((new ResolutionManager(this.context.getWidth(), this.context.getHeight()).getFactor(Settings.displayResolution) / 2) / Math.max(1, Math.round(1.0f / this.city.getIsoConverter().getAbsScaleX())), 1);
        boolean z = false;
        while (Math.max(pixmap.getWidth(), pixmap.getHeight()) / iMax > jSONObjectOptJSONObject.optInt("max upload size", 1024)) {
            iMax *= 2;
            z = true;
        }
        if (iMax > 1) {
            boolean z2 = z;
            pixmap2 = new Pixmap(pixmap.getWidth() / iMax, pixmap.getHeight() / iMax, Pixmap.Format.RGBA8888);
            pixmap2.setBlending(Pixmap.Blending.None);
            pixmap2.setFilter(z2 ? Pixmap.Filter.BiLinear : Pixmap.Filter.NearestNeighbour);
            pixmap2.drawPixmap(pixmap, 0, 0, pixmap.getWidth(), pixmap.getHeight(), 0, 0, pixmap2.getWidth(), pixmap2.getHeight());
        } else {
            pixmap2 = pixmap;
        }
        PixmapIO.PNG png = new PixmapIO.PNG();
        png.setCompression(9);
        png.setFlipY(false);
        try {
            png.write(byteArrayOutputStream, pixmap2);
            requestUpload(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            e.printStackTrace();
            abort(e.toString());
        }
        if (pixmap2 != pixmap) {
            pixmap2.dispose();
        }
    }

    public void abort(String str) {
        this.aborted = true;
        this.running = false;
        this.abortReason = str;
    }

    public String getAbortReason() {
        return this.abortReason;
    }

    public boolean isRunning() {
        return this.running;
    }

    public boolean isAborted() {
        return this.aborted;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public float getProgress() {
        return this.progress;
    }

    public final void requestUpload(final byte[] bArr) {
        final String name = this.city.getName();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", name);
            jSONObject.put(C3670j8.x, this.city.getId());
            jSONObject.put("size", bArr.length);
            jSONObject.put("md5", Hex.bin2hex(Hashing.md5(bArr)));
        } catch (JSONException e) {
            TheoTown.analytics.logException("Upload request", e);
        }
        Backend.getInstance().addTask(new Backend.Task("gallery/upload_scr_request", jSONObject, new Backend.TaskResponseHandler() { // from class: info.flowersoft.theotown.util.ScreenshotUploader.1
            @Override // info.flowersoft.theotown.backend.Backend.TaskResponseHandler
            public void receive(Backend.Task task, JSONObject jSONObject2) {
                if (ScreenshotUploader.this.aborted) {
                    return;
                }
                if (jSONObject2.optString("status").equals("success")) {
                    ScreenshotUploader.this.progress = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    ScreenshotUploader.this.upload(jSONObject2, name, bArr);
                } else {
                    ScreenshotUploader.this.abort(jSONObject2.optString("status", "Unknown"));
                }
            }
        }));
    }

    public final JSONObject buildHeader() {
        DefaultPeople defaultPeople = (DefaultPeople) this.city.getComponent(9);
        DefaultDate defaultDate = (DefaultDate) this.city.getComponent(1);
        DefaultBudget defaultBudget = (DefaultBudget) this.city.getComponent(0);
        DefaultManagement defaultManagement = (DefaultManagement) this.city.getComponent(3);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(C3670j8.x, this.city.getId());
            jSONObject.put("name", this.city.getName());
            jSONObject.put("people", defaultPeople.getPeople());
            jSONObject.put("gamemode", this.city.getGameMode().ordinal());
            jSONObject.put("day", defaultDate.getAbsoluteDay());
            jSONObject.put("budget", defaultBudget.getEstate());
            jSONObject.put("happiness", defaultManagement.getBuildingSurvey().getRatingValue());
            jSONObject.put("diamonds", GameHandler.getInstance().getDiamonds());
            jSONObject.put("seed", "" + this.city.getSeed());
            return jSONObject;
        } catch (JSONException e) {
            TheoTown.analytics.logException("Header", e);
            return jSONObject;
        }
    }

    public final byte[] compress(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes());
            gZIPOutputStream.flush();
            gZIPOutputStream.close();
        } catch (Exception e) {
            TheoTown.analytics.logException("Compress", e);
            abort(e.toString());
        }
        return byteArrayOutputStream.toByteArray();
    }

    public final void upload(JSONObject jSONObject, String str, byte[] bArr) {
        String str2 = "gallery/upload_scr?id=" + jSONObject.optInt("file id") + "&user_id=" + Backend.getInstance().getUser().getId() + "&key=" + jSONObject.optString(C3522b4.i.W);
        byte[] bArrCompress = compress(buildHeader().toString());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        try {
            byteArrayOutputStream.write((bArrCompress.length >> 8) & 255);
            byteArrayOutputStream.write(bArrCompress.length & 255);
            byteArrayOutputStream.write(bArrCompress);
            byteArrayOutputStream.write(bArr);
        } catch (Exception e) {
            TheoTown.analytics.logException("Upload", e);
            abort(e.toString());
        }
        Backend.getInstance().getConnector().sendRequest(str2, BackendConnector.createBinaryRequest(str, byteArrayOutputStream.toByteArray(), new Setter<Float>() { // from class: info.flowersoft.theotown.util.ScreenshotUploader.3
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Float f) {
                ScreenshotUploader.this.progress = f.floatValue();
            }
        }), BackendConnector.COLLECT_TEXT, BackendConnector.buildJSONAdapter(new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.util.ScreenshotUploader.2
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject2) {
                ScreenshotUploader.this.running = false;
                if (jSONObject2.optString("status").equals("success")) {
                    ScreenshotUploader.this.success = true;
                } else {
                    ScreenshotUploader.this.abort(jSONObject2.toString());
                }
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                ScreenshotUploader.this.abort(exc.toString());
                TheoTown.analytics.logException("General", exc);
            }
        }));
    }
}
