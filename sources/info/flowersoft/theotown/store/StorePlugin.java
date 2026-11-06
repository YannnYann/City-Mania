package info.flowersoft.theotown.store;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class StorePlugin {
    public boolean allowComments;
    public final String author;
    public final Color authorColor;
    public final int authorId;
    public final boolean available;
    public StoreCategory category;
    public final boolean certifiedPluginQuality;
    public int comments;
    public String description;
    public final int downloads;
    public final boolean featured;
    public final String hash;
    public final String img;
    public final String imgThumb;
    public final long lastUpdate;
    public final int pluginId;
    public final int price;
    public int ratingCount;
    public int ratingSum;
    public final int revisionId;
    public final long size;
    public String title;
    public final int version;

    public StorePlugin(ManagedPluginFile managedPluginFile) {
        this.pluginId = managedPluginFile.getPluginId();
        this.revisionId = managedPluginFile.getRevisionId();
        this.version = managedPluginFile.getVersion();
        this.title = managedPluginFile.getTitle();
        this.description = managedPluginFile.getText();
        if (Settings.translatePlugins) {
            this.title = managedPluginFile.translateInline(this.title);
            this.description = managedPluginFile.translateInline(this.description);
        }
        this.authorId = managedPluginFile.getAuthorId();
        this.img = "";
        this.imgThumb = "";
        this.hash = "";
        this.size = managedPluginFile.getFileSize();
        this.ratingSum = 0;
        this.ratingCount = -1;
        this.downloads = -1;
        this.lastUpdate = managedPluginFile.getLastUpdate();
        this.author = managedPluginFile.getAuthor();
        this.authorColor = managedPluginFile.getAuthorColor();
        this.certifiedPluginQuality = false;
        this.price = 0;
        this.featured = false;
        this.available = false;
        this.comments = -1;
        this.allowComments = false;
        this.category = null;
    }

    public StorePlugin(JSONObject jSONObject, Translator translator) throws JSONException {
        this.pluginId = jSONObject.getInt("plugin_id");
        this.revisionId = jSONObject.getInt("revision_id");
        this.version = jSONObject.getInt("version");
        this.title = jSONObject.getString(C3522b4.i.D0);
        this.description = jSONObject.getString("description");
        this.authorId = jSONObject.getInt("author_id");
        this.img = jSONObject.getString("img");
        this.imgThumb = jSONObject.getString("img_thumb");
        this.hash = jSONObject.getString("hash");
        this.size = jSONObject.getLong("size");
        this.ratingSum = jSONObject.getInt("rating_sum");
        this.ratingCount = jSONObject.getInt("rating_count");
        this.downloads = jSONObject.getInt("downloads");
        this.lastUpdate = jSONObject.getLong("last_update");
        this.author = jSONObject.getString("author_name");
        this.authorColor = Color.fromHexRGB(jSONObject.getString("author_color"));
        this.certifiedPluginQuality = jSONObject.getBoolean("cpq");
        this.price = jSONObject.getInt("price");
        this.featured = jSONObject.optBoolean("featured");
        this.available = true;
        this.comments = jSONObject.optInt("comments", -1);
        this.allowComments = jSONObject.getInt("allow_comments") != 0;
        this.category = new StoreCategory(jSONObject.getJSONObject("category"), translator);
    }

    public boolean isAvailable() {
        return this.available;
    }

    public int getPrice() {
        return this.price;
    }

    public int getPluginId() {
        return this.pluginId;
    }

    public int getRevisionId() {
        return this.revisionId;
    }

    public int getVersion() {
        return this.version;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDescription() {
        return this.description;
    }

    public int getAuthorId() {
        return this.authorId;
    }

    public String getImg() {
        return this.img;
    }

    public String getImgThumb() {
        return this.imgThumb;
    }

    public long getSize() {
        return this.size;
    }

    public int getRatingSum() {
        return this.ratingSum;
    }

    public int getRatingCount() {
        return this.ratingCount;
    }

    public int getDownloads() {
        return this.downloads;
    }

    public String getAuthor() {
        return this.author;
    }

    public Color getAuthorColor() {
        return this.authorColor;
    }

    public boolean isCertifiedPluginQuality() {
        return this.certifiedPluginQuality;
    }

    public boolean isFeatured() {
        return this.featured;
    }

    public void setRatingSum(int i) {
        this.ratingSum = i;
    }

    public void setRatingCount(int i) {
        this.ratingCount = i;
    }

    public int getComments() {
        return this.comments;
    }

    public boolean allowsComments() {
        return this.allowComments;
    }

    public StoreCategory getCategory() {
        return this.category;
    }

    public void setAllowComments(boolean z) {
        this.allowComments = z;
    }
}
