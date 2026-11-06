package info.flowersoft.theotown.draft;

import io.blueflower.stapel2d.drawing.Color;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AnimationDraft extends ViewportDraft {
    public boolean additive;
    public int[][] animationSpotIndices;
    public List<AnimationSpot> animationSpots;
    public Color[] colors;
    public boolean light;
    public boolean lightSwitching;
    public float nightLightProbability = 1.0f;
    public boolean rotationAware;
    public float speed;
}
