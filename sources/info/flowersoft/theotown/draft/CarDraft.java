package info.flowersoft.theotown.draft;

import io.blueflower.stapel2d.drawing.Color;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CarDraft extends ViewportDraft {
    public List<CarAnimationSpot> animationSpots;
    public int capacity;
    public Color[] colors;
    public long flags;
    public float length;
    public Color[] overlayColors;
    public int[] overlayFrames;
    public long price;
    public float speed;
    public CarDraft[] tail;
    public int vehicleType;
    public int framesPerColor = 1;
    public int framesPerVariant = 4;
    public boolean driveable = true;
    public boolean chargeable = true;
}
