package info.flowersoft.theotown.tools;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundType;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveRoadDecorationTool extends RemoveTool {
    public RemoveRoadDecorationTool() {
        super(false, true);
        setMarker(null);
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RemoveRoadDecoration";
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i;
        captureState(i, i2, i3, i4);
        int i7 = 16;
        int i8 = -2;
        if (this.removeUnder) {
            i8 = 16;
            i7 = -2;
            i5 = 1;
        } else {
            i5 = -1;
        }
        int i9 = 0;
        while (i9 <= Math.abs(i4 - i2)) {
            int i10 = 0;
            while (i10 <= Math.abs(i3 - i6)) {
                int iMin = Math.min(i6, i3) + i10;
                int iMin2 = Math.min(i2, i4) + i9;
                int i11 = i7;
                while (true) {
                    if (Math.min(i7, i8) <= i11 && i11 <= Math.max(i7, i8)) {
                        Road road = this.tiles.getRoad(iMin, iMin2, i11);
                        if (road != null && road.countDecorations() > 0) {
                            this.modifier.removeRoadDecoration(iMin, iMin2, i11, road.countDecorations() - 1, null);
                            addDestructionAnimation(iMin, iMin2);
                            this.soundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new TileSoundSource(this.city, iMin, iMin2));
                            break;
                        }
                        i11 += i5;
                    } else {
                        break;
                    }
                }
                i10++;
                i6 = i;
            }
            i9++;
            i6 = i;
        }
        endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        super.drawRoad(i, i2, drawer, i3);
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null || road.countDecorations() <= 0) {
            return true;
        }
        drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-road.absLevel) * 12, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
        return true;
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_ROAD_DECORATION;
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(1411);
    }
}
