package info.flowersoft.theotown.components.firework;

import com.ironsource.C3670j8;
import com.ironsource.G5;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Saveable;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.math.Vector3D;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class Firework implements Saveable {
    public City city;
    public List<FireworkParticle> particles = new ArrayList();
    public ProbabilitySelector<AnimationDraft> selector = new ProbabilitySelector<>(Resources.RND);

    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("particles")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    FireworkParticle fireworkParticle = new FireworkParticle(jsonReader);
                    if (fireworkParticle.draft != null) {
                        this.particles.add(fireworkParticle);
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("particles").beginArray();
        for (int i = 0; i < this.particles.size(); i++) {
            jsonWriter.beginObject();
            this.particles.get(i).save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }

    public void bind(City city) {
        this.city = city;
    }

    public void update() {
        update(((DefaultDate) this.city.getComponent(1)).getAnimationTimeDelta());
    }

    public void update(int i) {
        if (i <= 0) {
            return;
        }
        int i2 = 0;
        while (i2 < this.particles.size()) {
            FireworkParticle fireworkParticle = this.particles.get(i2);
            float f = i / 1000.0f;
            fireworkParticle.x += fireworkParticle.xSpeed * f;
            fireworkParticle.y += fireworkParticle.ySpeed * f;
            float f2 = fireworkParticle.z;
            float f3 = fireworkParticle.zSpeed;
            float f4 = f2 + (f * f3);
            fireworkParticle.z = f4;
            fireworkParticle.zSpeed = f3 - (f * 5.0f);
            int i3 = fireworkParticle.restLifeTime - i;
            fireworkParticle.restLifeTime = i3;
            if (f4 <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || i3 <= 0) {
                this.particles.remove(fireworkParticle);
                i2--;
                spawn(fireworkParticle);
            }
            i2++;
        }
    }

    public void draw(Engine engine) {
        IsoConverter isoConverter = this.city.getIsoConverter();
        for (int i = 0; i < this.particles.size(); i++) {
            FireworkParticle fireworkParticle = this.particles.get(i);
            float fOriginalToRotatedX = this.city.originalToRotatedX(fireworkParticle.x, fireworkParticle.y);
            float fOriginalToRotatedY = this.city.originalToRotatedY(fireworkParticle.x, fireworkParticle.y);
            engine.drawImage(Resources.IMAGE_WORLD, (int) isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY), (int) (isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY) - ((isoConverter.getAbsScaleY() * fireworkParticle.z) * 12.0f)), fireworkParticle.draft.frames[0]);
        }
    }

    public void drawScreen(Engine engine, float f) {
        Iterator<FireworkParticle> it = this.particles.iterator();
        while (it.hasNext()) {
            engine.drawImage(Resources.IMAGE_WORLD, Math.round(r1.x * f), Math.round((r1.y - r1.z) * f), it.next().draft.frames[0]);
        }
    }

    public void clear() {
        this.particles.clear();
        this.selector.clear();
    }

    public boolean emit(AnimationDraft animationDraft, int i, int i2, float f) {
        spawn(animationDraft, i + 0.5f, i2 + 0.5f, f + 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        return true;
    }

    public final void spawn(FireworkParticle fireworkParticle) {
        JSONArray jSONArrayOptJSONArray = fireworkParticle.draft.getMetaTag("firework").optJSONArray("next");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                AnimationDraft animationDraft = (AnimationDraft) Drafts.ALL.get(jSONObjectOptJSONObject.optString(C3670j8.x));
                if (animationDraft != null) {
                    float fOptDouble = (float) jSONObjectOptJSONObject.optDouble("p", 1.0d);
                    if (!jSONObjectOptJSONObject.optBoolean("always", false)) {
                        this.selector.insert(animationDraft, fOptDouble);
                    } else if (Resources.RND.nextFloat() < fOptDouble) {
                        spawn(animationDraft, fireworkParticle);
                    }
                }
            }
            if (this.selector.hasResult()) {
                spawn(this.selector.getResult(), fireworkParticle);
            }
            this.selector.clear();
        }
    }

    public final void spawn(AnimationDraft animationDraft, FireworkParticle fireworkParticle) {
        spawn(animationDraft, fireworkParticle.x, fireworkParticle.y, fireworkParticle.z, fireworkParticle.xSpeed, fireworkParticle.ySpeed, fireworkParticle.zSpeed);
    }

    public void spawn(AnimationDraft animationDraft, float f, float f2, float f3, float f4, float f5, float f6) {
        AnimationDraft animationDraft2 = animationDraft;
        JSONObject metaTag = animationDraft2.getMetaTag("firework");
        float fOptDouble = (float) ((metaTag.optDouble("alpha") * 3.141592653589793d) / 180.0d);
        float fOptDouble2 = (float) metaTag.optDouble("speed");
        float fOptDouble3 = (float) metaTag.optDouble("speed variation", 0.0d);
        int iOptInt = metaTag.optInt(G5.q);
        int iOptInt2 = metaTag.optInt("time");
        float fOptDouble4 = (float) metaTag.optDouble("time variation", 0.0d);
        Vector3D vector3D = new Vector3D(f4, f5, f6);
        vector3D.normalize();
        Vector3D vector3DCrossProduct = vector3D.crossProduct(Vector3D.X_AXIS);
        Vector3D vector3DCrossProduct2 = vector3D.crossProduct(vector3DCrossProduct);
        vector3DCrossProduct.normalize();
        vector3DCrossProduct2.normalize();
        int i = 0;
        while (i < iOptInt) {
            Random random = Resources.RND;
            float f7 = fOptDouble4;
            float fNextFloat = ((random.nextFloat() + i) / iOptInt) * 6.2831855f;
            float fNextFloat2 = (((random.nextFloat() * 2.0f) - 1.0f) * fOptDouble3 * fOptDouble2) + fOptDouble2;
            int i2 = iOptInt;
            Vector3D vector3D2 = new Vector3D();
            int i3 = i;
            double d = fNextFloat;
            vector3D2.add((float) Math.cos(d), vector3DCrossProduct);
            vector3D2.add((float) Math.sin(d), vector3DCrossProduct2);
            Vector3D vector3D3 = new Vector3D();
            double d2 = fOptDouble;
            vector3D3.add((float) Math.cos(d2), vector3D);
            vector3D3.add((float) Math.sin(d2), vector3D2);
            vector3D3.multiply(fNextFloat2);
            vector3D3.add(f4, f5, f6);
            this.particles.add(new FireworkParticle(animationDraft2, f, f2, f3, vector3D3.x, vector3D3.y, vector3D3.z, iOptInt2 + ((int) (((random.nextFloat() * 2.0f) - 1.0f) * f7 * iOptInt2))));
            i = i3 + 1;
            animationDraft2 = animationDraft;
            iOptInt2 = iOptInt2;
            fOptDouble4 = f7;
            vector3D = vector3D;
            vector3DCrossProduct = vector3DCrossProduct;
            iOptInt = i2;
            vector3DCrossProduct2 = vector3DCrossProduct2;
        }
    }
}
