package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AnimationDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"animation"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        AnimationDraft animationDraft = (AnimationDraft) getDraft(this.src, AnimationDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.AnimationDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new AnimationDraft();
            }
        });
        loadDefaults(animationDraft);
        int[] iArrLoadFrames = loadFrames("frames", "frame", ImageHandleResolver.TOP_LEFT, animationDraft, animationDraft.frames);
        animationDraft.frames = iArrLoadFrames;
        int i = 0;
        if (iArrLoadFrames == null) {
            animationDraft.frames = new int[0];
        }
        animationDraft.additive = this.src.optBoolean("additive", false);
        animationDraft.light = this.src.optBoolean("light", animationDraft.light);
        animationDraft.lightSwitching = this.src.optBoolean("light switching", animationDraft.lightSwitching);
        animationDraft.nightLightProbability = (float) this.src.optDouble("night light probability", animationDraft.nightLightProbability);
        animationDraft.speed = (float) this.src.optDouble("speed", 1.0d);
        animationDraft.rotationAware = this.src.optBoolean("rotation aware", false);
        animationDraft.colors = loadColors(this.src.has("colors") ? "colors" : C3522b4.i.S, this.src);
        boolean zOptBoolean = this.src.optBoolean("loop", true);
        int iOptInt = this.src.optInt("handle interpolation", 1);
        if (iOptInt > 1) {
            int length = animationDraft.frames.length * iOptInt;
            if (!zOptBoolean) {
                length -= iOptInt - 1;
            }
            IntList intList = new IntList(length);
            Image image = Resources.IMAGE_WORLD;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 % iOptInt;
                if (i3 == 0) {
                    int i4 = i2 / iOptInt;
                    image.selectTexture(image.getTextureId(animationDraft.frames[i4]));
                    intList.add(animationDraft.frames[i4]);
                } else {
                    float f = i3 / iOptInt;
                    int[] iArr = animationDraft.frames;
                    int i5 = i2 / iOptInt;
                    int i6 = iArr[i5];
                    int i7 = iArr[(i5 + 1) % iArr.length];
                    float f2 = 1.0f - f;
                    float handleX = (image.getHandleX(i6) * f2) + (image.getHandleX(i7) * f);
                    float handleY = (f2 * image.getHandleY(i6)) + (image.getHandleY(i7) * f);
                    if (f >= 0.5f) {
                        i6 = i7;
                    }
                    intList.add(image.addFrame(i6, Math.round(handleX), Math.round(handleY)));
                }
            }
            image.selectTexture(0);
            animationDraft.frames = intList.reduce();
        }
        if (this.src.optBoolean("ping pong", false)) {
            IntList intList2 = new IntList((animationDraft.frames.length * 2) - 2);
            while (true) {
                int[] iArr2 = animationDraft.frames;
                if (i >= (iArr2.length * 2) - 2) {
                    break;
                }
                intList2.add(iArr2[i < iArr2.length ? i : iArr2.length - i]);
                i++;
            }
            animationDraft.frames = intList2.reduce();
        }
        if (this.src.has("animation")) {
            List<AnimationSpot> listLoadAnimations = loadAnimations(animationDraft.hashCode(), "animation");
            animationDraft.animationSpots = listLoadAnimations;
            animationDraft.animationSpotIndices = loadFrameAnimationIndices(animationDraft.id, "frame animation indices", animationDraft.frames.length, listLoadAnimations.size(), this.src);
        }
        return animationDraft;
    }
}
