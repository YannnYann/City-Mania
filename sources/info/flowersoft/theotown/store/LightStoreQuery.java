package info.flowersoft.theotown.store;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.resources.ManagedCache;
import info.flowersoft.theotown.resources.PostponedPixmapLoader;
import info.flowersoft.theotown.util.OnlineFileStore;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.StaticBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class LightStoreQuery {
    public final Stapel2DGameContext context;
    public final Engine engine;
    public final List<CachedTexture> cachedTextures = new ArrayList();
    public final Map<String, CachedTexture> textureMap = new HashMap();
    public final PostponedPixmapLoader pixmapLoader = new PostponedPixmapLoader();
    public final OnlineFileStore ofs = new OnlineFileStore();
    public final ManagedPluginsController mpc = ManagedPluginsController.getInstance();

    public LightStoreQuery(Stapel2DGameContext stapel2DGameContext) {
        this.engine = stapel2DGameContext.getEngine();
        this.context = stapel2DGameContext;
    }

    public void fetch(StoreMode storeMode, int i, int i2, final Setter<List<StorePluginWrapper>> setter, final Setter<Exception> setter2) {
        this.mpc.fetchStore(new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.store.LightStoreQuery.1
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject) {
                try {
                    Setter<StorePlugin> setter3 = new Setter<StorePlugin>() { // from class: info.flowersoft.theotown.store.LightStoreQuery.1.1
                        @Override // io.blueflower.stapel2d.util.Setter
                        public void set(StorePlugin storePlugin) {
                        }
                    };
                    ArrayList arrayList = new ArrayList();
                    JSONArray jSONArray = jSONObject.getJSONArray("plugins");
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                        LightStoreQuery lightStoreQuery = LightStoreQuery.this;
                        arrayList.add(lightStoreQuery.wrap(i3, new StorePlugin(jSONObject2, lightStoreQuery.context.getTranslator()), setter3));
                    }
                    Gdx.app.debug("plugins", "" + arrayList.size());
                    setter.set(arrayList);
                } catch (Exception e) {
                    error(e);
                }
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                setter2.set(exc);
            }
        }, storeMode, this.mpc.getAcquiredPluginIds(), "", true, i, i2);
    }

    public StorePluginWrapper wrap(int i, final StorePlugin storePlugin, final Setter<StorePlugin> setter) {
        return new StorePluginWrapper(i, storePlugin, this.context) { // from class: info.flowersoft.theotown.store.LightStoreQuery.2
            @Override // info.flowersoft.theotown.store.PluginWrapper
            public int getFrame() {
                return 0;
            }

            @Override // info.flowersoft.theotown.store.PluginWrapper
            public void visitAuthor() {
                setter.set(storePlugin);
            }

            @Override // info.flowersoft.theotown.store.PluginWrapper
            public Image getImage() {
                return LightStoreQuery.this.getImage(storePlugin);
            }
        };
    }

    public synchronized void clearTextureCache() {
        for (int i = 0; i < this.cachedTextures.size(); i++) {
            try {
                this.engine.releaseTexture(this.cachedTextures.get(i).texture);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.cachedTextures.clear();
        this.textureMap.clear();
    }

    public synchronized Image getImage(StorePlugin storePlugin) {
        byte[] imageData;
        boolean z;
        Pixmap pixmapLoadPixmap;
        String[] strArr = {"", "" + storePlugin.getImg(), "" + storePlugin.getImgThumb()};
        int i = 0;
        while (true) {
            if (i >= 3) {
                return null;
            }
            String str = strArr[i];
            String str2 = "" + storePlugin.getPluginId() + ":" + str;
            CachedTexture cachedTexture = this.textureMap.get(str2);
            if (cachedTexture != null) {
                cachedTexture.lastUsed = TimeUtils.millis();
                return cachedTexture.imgage;
            }
            if (!str.isEmpty()) {
                imageData = this.ofs.request(this.mpc.getFileUrl(str), i);
                z = false;
            } else {
                ManagedPluginFile managedPluginFile = ManagedPluginsController.getInstance().getManagedPluginFile(storePlugin.getPluginId());
                if (managedPluginFile != null) {
                    byte[] bArr = ManagedCache.INSTANCE.get("ct", "" + managedPluginFile.getPluginId(), managedPluginFile.getRevisionId() + "+1");
                    imageData = bArr == null ? managedPluginFile.getImageData() : bArr;
                } else {
                    imageData = null;
                }
                z = true;
            }
            if (imageData != null && (pixmapLoadPixmap = this.pixmapLoader.loadPixmap(str2, imageData, !z)) != null) {
                tidyUpImageCache();
                CachedTexture cachedTexture2 = new CachedTexture();
                Texture texture = new Texture(new StaticBitmapTextureSource(pixmapLoadPixmap, false));
                cachedTexture2.texture = texture;
                texture.setFiltering(9729, 9729);
                Image image = new Image(cachedTexture2.texture);
                cachedTexture2.imgage = image;
                image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, pixmapLoadPixmap.getWidth(), pixmapLoadPixmap.getHeight(), pixmapLoadPixmap.getWidth() / 2, pixmapLoadPixmap.getHeight() / 2);
                cachedTexture2.name = str2;
                cachedTexture2.lastUsed = TimeUtils.millis();
                this.cachedTextures.add(cachedTexture2);
                this.textureMap.put(str2, cachedTexture2);
                return cachedTexture2.imgage;
            }
            i++;
        }
    }

    public synchronized void tidyUpImageCache() {
        try {
            if (this.cachedTextures.size() >= 20) {
                CachedTexture cachedTexture = null;
                for (int i = 0; i < this.cachedTextures.size(); i++) {
                    CachedTexture cachedTexture2 = this.cachedTextures.get(i);
                    if (cachedTexture == null || cachedTexture.lastUsed > cachedTexture2.lastUsed) {
                        cachedTexture = cachedTexture2;
                    }
                }
                this.engine.releaseTexture(cachedTexture.texture);
                this.cachedTextures.remove(cachedTexture);
                this.textureMap.remove(cachedTexture.name);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static class CachedTexture {
        public Image imgage;
        public long lastUsed;
        public String name;
        public Texture texture;

        public CachedTexture() {
        }
    }
}
