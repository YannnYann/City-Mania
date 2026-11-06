package info.flowersoft.theotown.resources;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3670j8;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.BackendConnector;
import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.OnlineFileStore;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.drawing.TiledTextureSource;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class ScreenshotStore {
    public final Stapel2DGameContext context;
    public long currentUserId;
    public int fetchingCounter;
    public final Service service = new Service("gallery/rate_screenshot");
    public final List<Screenshot> screenshots = new ArrayList();
    public final IntIntMap screenshotRatings = new IntIntMap();
    public int currentMode = 2;
    public final Executor executor = Executors.newSingleThreadExecutor();
    public final List<Runnable> postponedTasks = new ArrayList();
    public final PostponedPixmapLoader pixmapLoader = new PostponedPixmapLoader();
    public final OnlineFileStore onlineFileStore = new OnlineFileStore();

    public static /* synthetic */ int access$1210(ScreenshotStore screenshotStore) {
        int i = screenshotStore.fetchingCounter;
        screenshotStore.fetchingCounter = i - 1;
        return i;
    }

    public ScreenshotStore(Stapel2DGameContext stapel2DGameContext) {
        this.context = stapel2DGameContext;
    }

    public final void addPostponedTask(Runnable runnable) {
        synchronized (this.postponedTasks) {
            this.postponedTasks.add(runnable);
        }
    }

    public List<Screenshot> getScreenshots() {
        return this.screenshots;
    }

    public void switchMode(int i, long j) {
        synchronized (this.screenshots) {
            releaseAllTextures();
            this.currentMode = i;
            this.currentUserId = j;
            this.screenshots.clear();
            fetchScreenshots();
        }
    }

    public int getMode() {
        return this.currentMode;
    }

    public void fetchComments(int i, final Setter<JSONObject> setter, final Setter<Exception> setter2) {
        Backend.getInstance().getConnector().sendRequest("gallery/list_screenshots?c=true&img_id=" + i, BackendConnector.EMPTY_REQUEST, BackendConnector.COLLECT_COMPRESSED_TEXT, BackendConnector.buildJSONAdapter(new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.resources.ScreenshotStore.1
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject) {
                setter.set(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                setter2.set(exc);
            }
        }));
    }

    public void fetch() {
        fetchScreenshots();
        fetchRatings();
    }

    public boolean isFetching() {
        return this.fetchingCounter > 0;
    }

    public void fetchScreenshots() {
        final int i = this.currentMode;
        this.fetchingCounter++;
        this.executor.execute(new Runnable() { // from class: info.flowersoft.theotown.resources.ScreenshotStore$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenshotStore.$r8$lambda$4_MKw0bBjAP5qnpSmy4Ex8HgcqA(this.f$0, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$4_MKw0bBjAP5qnpSmy4Ex8HgcqA(ScreenshotStore screenshotStore, int i) {
        screenshotStore.getClass();
        String str = "gallery/list_screenshots?c=true&mode=" + new String[]{"recent", "user", "trends"}[i];
        if (i == 1) {
            str = str + "&user_id=" + screenshotStore.currentUserId;
        }
        Backend.getInstance().getConnector().sendRequest(str, BackendConnector.EMPTY_REQUEST, BackendConnector.COLLECT_COMPRESSED_TEXT, BackendConnector.buildJSONAdapter(screenshotStore.new AnonymousClass2(i)));
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.resources.ScreenshotStore$2, reason: invalid class name */
    public class AnonymousClass2 implements ResponseHandler<JSONObject> {
        public final /* synthetic */ int val$mode;

        public AnonymousClass2(int i) {
            this.val$mode = i;
        }

        @Override // info.flowersoft.theotown.backend.ResponseHandler
        public void handle(JSONObject jSONObject) {
            JSONObject jSONObjectOptJSONObject;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("screenshots");
            synchronized (ScreenshotStore.this.screenshots) {
                try {
                    ScreenshotStore.access$1210(ScreenshotStore.this);
                    if (this.val$mode != ScreenshotStore.this.currentMode) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList(ScreenshotStore.this.screenshots);
                    ScreenshotStore.this.screenshots.clear();
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("meta")) != null) {
                            Screenshot screenshot = ScreenshotStore.this.new Screenshot(jSONObjectOptJSONObject2.optInt(C3670j8.x), jSONObjectOptJSONObject2.optString("name"), jSONObjectOptJSONObject2.optInt("owner_id"), jSONObjectOptJSONObject2.optString("user_name"), jSONObjectOptJSONObject2.optInt("rating"), jSONObjectOptJSONObject2.optString("image"), jSONObjectOptJSONObject2.optString("thumbnail"), jSONObjectOptJSONObject2.optLong("creation_time"), jSONObjectOptJSONObject2.optInt("comments"), jSONObjectOptJSONObject2.optInt("allow_comments") != 0, jSONObjectOptJSONObject);
                            Screenshot screenshot2 = null;
                            for (int i2 = 0; i2 < arrayList.size() && screenshot2 == null; i2++) {
                                screenshot2 = (Screenshot) arrayList.get(i2);
                                if (screenshot2.id == screenshot.id) {
                                    arrayList.remove(i2);
                                } else {
                                    screenshot2 = null;
                                }
                            }
                            if (screenshot2 != null) {
                                screenshot.imageImg = screenshot2.imageImg;
                                screenshot.thumbnailImg = screenshot2.thumbnailImg;
                            }
                            ScreenshotStore.this.screenshots.add(screenshot);
                        }
                    }
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        final Screenshot screenshot3 = (Screenshot) arrayList.get(i3);
                        ScreenshotStore.this.addPostponedTask(new Runnable() { // from class: info.flowersoft.theotown.resources.ScreenshotStore$2$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                ScreenshotStore.this.releaseTextures(screenshot3);
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // info.flowersoft.theotown.backend.ResponseHandler
        public void error(Exception exc) {
            TheoTown.analytics.logException("General", exc);
            synchronized (ScreenshotStore.this.screenshots) {
                ScreenshotStore.access$1210(ScreenshotStore.this);
            }
        }
    }

    public void fetchRatings() {
        Backend.getInstance().addTask(new Backend.Task("gallery/get_ratings", new JSONObject(), new Backend.TaskResponseHandler() { // from class: info.flowersoft.theotown.resources.ScreenshotStore.3
            @Override // info.flowersoft.theotown.backend.Backend.TaskResponseHandler
            public void receive(Backend.Task task, JSONObject jSONObject) {
                if (jSONObject.optString("status").equals("success")) {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ratings");
                    synchronized (ScreenshotStore.this.screenshotRatings) {
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            try {
                                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                                if (jSONObjectOptJSONObject != null) {
                                    ScreenshotStore.this.screenshotRatings.put(jSONObjectOptJSONObject.optInt("screenshot_id"), jSONObjectOptJSONObject.optInt("rating"));
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
            }
        }));
    }

    public final void rate(Screenshot screenshot, int i) {
        synchronized (this.screenshotRatings) {
            int i2 = i - this.screenshotRatings.get(screenshot.id, 0);
            this.screenshotRatings.put(screenshot.id, i);
            screenshot.setOverallRating(screenshot.getOverallRating() + i2);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("screenshot_id", screenshot.id);
            jSONObject.put("rating", i);
            Backend.getInstance().addTask(new Backend.Task("gallery/rate_screenshot", jSONObject, new Backend.TaskResponseHandler() { // from class: info.flowersoft.theotown.resources.ScreenshotStore.4
                @Override // info.flowersoft.theotown.backend.Backend.TaskResponseHandler
                public void receive(Backend.Task task, JSONObject jSONObject2) {
                    jSONObject2.optString("status").equals("success");
                    ScreenshotStore.this.fetchRatings();
                    ScreenshotStore.this.fetchScreenshots();
                }
            }));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public final void comment(Screenshot screenshot, String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("comment").put("screenshot_id", screenshot.id).put(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, str).build(), handler));
    }

    public final void setAllowComments(final Screenshot screenshot, final boolean z, final Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("set allow comments").put("screenshot_id", screenshot.id).put("allow", Boolean.valueOf(z)).build(), new Service.Handler() { // from class: info.flowersoft.theotown.resources.ScreenshotStore.5
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                screenshot.setAllowComments(z);
                handler.onSuccess(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                handler.onFailure(jSONObject);
            }
        }));
    }

    public final void delete(Screenshot screenshot) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("screenshot_id", screenshot.id);
            Backend.getInstance().addTask(new Backend.Task("gallery/remove_screenshot", jSONObject, new Backend.TaskResponseHandler() { // from class: info.flowersoft.theotown.resources.ScreenshotStore$$ExternalSyntheticLambda1
                @Override // info.flowersoft.theotown.backend.Backend.TaskResponseHandler
                public final void receive(Backend.Task task, JSONObject jSONObject2) {
                    ScreenshotStore.$r8$lambda$v3epM5jcYqP5YxhM8IWqpOR2534(this.f$0, task, jSONObject2);
                }
            }));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static /* synthetic */ void $r8$lambda$v3epM5jcYqP5YxhM8IWqpOR2534(ScreenshotStore screenshotStore, Backend.Task task, JSONObject jSONObject) {
        screenshotStore.getClass();
        if (jSONObject.optString("status").equals("success")) {
            screenshotStore.fetch();
        }
    }

    public void tidyTexturesUp() {
        tidyTexturesUp(10);
    }

    public void tidyTexturesUp(int i) {
        int i2;
        synchronized (this.screenshots) {
            try {
                long jMillis = TimeUtils.millis();
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < this.screenshots.size(); i5++) {
                    Screenshot screenshot = this.screenshots.get(i5);
                    if (screenshot.imageImg != null || screenshot.thumbnailImg != null) {
                        long j = jMillis - screenshot.lastDrawn;
                        if (j <= ((long) i) * 1000 || screenshot.lastDrawn == 0) {
                            if (j > ((long) i4) * 1000) {
                                i4 = (int) (j / 1000);
                            }
                            i3++;
                        } else {
                            releaseTextures(screenshot);
                        }
                    }
                }
                if (i3 > 16 && i4 > 0 && i4 < i) {
                    tidyTexturesUp(i4);
                }
            } finally {
            }
        }
        synchronized (this.postponedTasks) {
            for (i2 = 0; i2 < this.postponedTasks.size(); i2++) {
                try {
                    this.postponedTasks.get(i2).run();
                } finally {
                }
            }
            this.postponedTasks.clear();
        }
    }

    public void releaseTextures(Screenshot screenshot) {
        try {
            if (screenshot.thumbnailImg != null) {
                this.context.getEngine().releaseTexture(screenshot.thumbnailImg.getTextureOfId(0));
                screenshot.thumbnailImg = null;
            }
            if (screenshot.imageImg != null) {
                this.context.getEngine().releaseTexture(screenshot.imageImg.getTextureOfId(0));
                screenshot.imageImg = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void releaseAllTextures() {
        synchronized (this.screenshots) {
            for (int i = 0; i < this.screenshots.size(); i++) {
                try {
                    releaseTextures(this.screenshots.get(i));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final Image getImage(final String str, int i) {
        final Pixmap pixmapLoadPixmap;
        final byte[] bArrRequest = this.onlineFileStore.request(str, i);
        if (bArrRequest == null || (pixmapLoadPixmap = this.pixmapLoader.loadPixmap(str, bArrRequest, true)) == null) {
            return null;
        }
        int width = pixmapLoadPixmap.getWidth();
        int height = pixmapLoadPixmap.getHeight();
        TiledTextureSource tiledTextureSource = new TiledTextureSource(width, height);
        tiledTextureSource.addSource(new AbstractBitmapTextureSource() { // from class: info.flowersoft.theotown.resources.ScreenshotStore.6
            @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
            public boolean isAsync() {
                return false;
            }

            @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
            public Pixmap getBitmap(Texture texture) {
                Pixmap pixmap = pixmapLoadPixmap;
                return pixmap.isDisposed() ? ScreenshotStore.this.pixmapLoader.loadPixmap(str, bArrRequest, true) : pixmap;
            }
        }, 0, 0);
        return Image.createSingleFrame(new Texture(tiledTextureSource), width, height);
    }

    public class Screenshot implements Comparable<Screenshot> {
        public boolean allowComments;
        public final int comments;
        public final long creationTime;
        public final int id;
        public Image imageImg;
        public final String imageUrl;
        public long lastDrawn;
        public final JSONObject meta;
        public final String name;
        public final int owner_id;
        public int rating;
        public Image thumbnailImg;
        public final String thumbnailUrl;
        public final String user_name;

        public Screenshot(int i, String str, int i2, String str2, int i3, String str3, String str4, long j, int i4, boolean z, JSONObject jSONObject) {
            this.id = i;
            this.name = str;
            this.owner_id = i2;
            this.user_name = str2;
            this.rating = i3;
            this.imageUrl = str3;
            this.thumbnailUrl = str4;
            this.creationTime = j;
            this.comments = i4;
            this.allowComments = z;
            this.meta = jSONObject;
        }

        public int getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public String getUserName() {
            return this.user_name;
        }

        public Image getImage() {
            Image image = this.imageImg;
            if (image != null) {
                return image;
            }
            this.imageImg = ScreenshotStore.this.getImage(this.imageUrl, 0);
            Image image2 = this.thumbnailImg;
            if (image2 != null) {
                return image2;
            }
            this.thumbnailImg = ScreenshotStore.this.getImage(this.thumbnailUrl, 10);
            return null;
        }

        public void prefetchThumbnail() {
            if (this.thumbnailImg == null) {
                ScreenshotStore.this.getImage(this.thumbnailUrl, 10);
            }
        }

        public void rate(int i) {
            ScreenshotStore.this.rate(this, i);
        }

        public void comment(String str, Service.Handler handler) {
            ScreenshotStore.this.comment(this, str, handler);
        }

        public void setAllowComments(boolean z, Service.Handler handler) {
            ScreenshotStore.this.setAllowComments(this, z, handler);
        }

        public int getOwnRating() {
            int i;
            synchronized (ScreenshotStore.this.screenshotRatings) {
                i = ScreenshotStore.this.screenshotRatings.get(this.id, 0);
            }
            return i;
        }

        public int getOverallRating() {
            return this.rating;
        }

        public void setOverallRating(int i) {
            this.rating = i;
        }

        public int getComments() {
            return this.comments;
        }

        public boolean allowsComments() {
            return this.allowComments;
        }

        public void setAllowComments(boolean z) {
            this.allowComments = z;
        }

        public void indicateUsage() {
            this.lastDrawn = TimeUtils.millis();
        }

        public void delete() {
            ScreenshotStore.this.delete(this);
        }

        public int getOwnerId() {
            return this.owner_id;
        }

        public boolean isMyOwn() {
            User user = Backend.getInstance().getUser();
            return user.isValid() && user.getId() == ((long) this.owner_id);
        }

        public boolean equals(Object obj) {
            return (obj instanceof Screenshot) && ((Screenshot) obj).id == this.id;
        }

        @Override // java.lang.Comparable
        public int compareTo(Screenshot screenshot) {
            return (int) (screenshot.creationTime - this.creationTime);
        }
    }
}
