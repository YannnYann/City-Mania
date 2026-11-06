package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.soundsource.AreaSoundSource;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.Functions;
import info.flowersoft.theotown.util.PackedInt2;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class NukeDisaster extends Disaster {
    public final List<Nuke> nukes = new ArrayList();
    public final AnimationDraft animationDraft = (AnimationDraft) Drafts.ALL.get("$mushroomcloud00");

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 0.001f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.nextName();
            jsonReader.skipValue();
        }
    }

    public final float getProgess(Nuke nuke) {
        if (this.date.getAnimationTime() < nuke.startAnimTime) {
            return 1.0f;
        }
        return (((r0 - nuke.startAnimTime) / 200.0f) / this.animationDraft.frames.length) / 4.0f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        int i = 0;
        while (i < this.nukes.size()) {
            if (getProgess(this.nukes.get(i)) >= 1.0f) {
                this.nukes.remove(i);
                i--;
            }
            i++;
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void draw(Engine engine) {
        try {
            if (!this.nukes.isEmpty()) {
                for (int i = 0; i < this.nukes.size(); i++) {
                    Nuke nuke = this.nukes.get(i);
                    int i2 = nuke.x;
                    int i3 = nuke.y;
                    int iOriginalToRotatedX = this.city.originalToRotatedX(i2, i3) - 4;
                    int iOriginalToRotatedY = this.city.originalToRotatedY(i2, i3) - 4;
                    IsoConverter isoConverter = this.city.getIsoConverter();
                    int iFloor = this.city.isValid(i2, i3) ? (int) Math.floor(this.city.getTiles().getTerrainAvgHeight(i2, i3) * 16.0f * isoConverter.getAbsScaleY()) : 0;
                    int iFloor2 = (int) Math.floor(isoConverter.isoToAbsX(iOriginalToRotatedX, iOriginalToRotatedY));
                    int iFloor3 = ((int) Math.floor(isoConverter.isoToAbsY(iOriginalToRotatedX, iOriginalToRotatedY))) - iFloor;
                    Image image = Resources.IMAGE_WORLD;
                    float fMax = Math.max(getProgess(nuke), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    int[] iArr = this.animationDraft.frames;
                    float fMax2 = Math.max(Math.min(fMax * (iArr.length - 2), iArr.length - 0.9f) - 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    double d = fMax2;
                    int iFloor4 = (int) Math.floor(d);
                    int iCeil = (int) Math.ceil(d);
                    float f = fMax2 - iFloor4;
                    float scaleX = engine.getScaleX();
                    float scaleY = engine.getScaleY();
                    engine.setScale(scaleX * 9.0f, 9.0f * scaleY);
                    engine.setTransparency(Math.round(255.0f - (Functions.interpolate(f) * 255.0f)));
                    float f2 = iFloor2;
                    float f3 = iFloor3;
                    engine.drawImage(image, f2, f3, this.animationDraft.frames[iFloor4]);
                    if (iFloor4 != iCeil) {
                        engine.setTransparency(Math.round(Functions.interpolate(f) * 255.0f));
                        engine.drawImage(image, f2, f3, this.animationDraft.frames[iCeil]);
                    }
                    engine.setScale(scaleX, scaleY);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isActive() {
        return !this.nukes.isEmpty();
    }

    public boolean issue(Building building) {
        return issue(building.getX() + (building.getWidth() / 2), building.getY() + (building.getHeight() / 2), building.getDraft().nuclear, building.getDraft().explosionRadius);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue(int i, int i2) {
        Building building;
        if (this.city.isValid(i, i2) && (building = this.city.getTiles().getBuilding(i, i2)) != null) {
            return issue(building);
        }
        return issue(i, i2, true, 20);
    }

    public boolean issue(int i, int i2, boolean z, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        ((Catastrophe) this.city.getComponent(6)).issueFlash();
        IntList intList = new IntList();
        IntList intList2 = new IntList();
        IntList intList3 = new IntList();
        intList.add(PackedInt2.pack(i, i2));
        intList2.add(z ? 1 : 0);
        intList3.add(i3);
        Tiles tiles = this.city.getTiles();
        synchronized (this.city) {
            int i10 = 0;
            i4 = i;
            i5 = i4;
            i6 = i2;
            i7 = i6;
            int i11 = 0;
            while (!intList.isEmpty()) {
                try {
                    int iRemoveAt = intList.removeAt(i10);
                    int iUnpackX = PackedInt2.unpackX(iRemoveAt);
                    int iUnpackY = PackedInt2.unpackY(iRemoveAt);
                    int iMin = Math.min(i4, iUnpackX);
                    int iMin2 = Math.min(i6, iUnpackY);
                    int iMax = Math.max(i5, iUnpackX);
                    int iMax2 = Math.max(i7, iUnpackY);
                    int iRemoveAt2 = intList2.removeAt(i10);
                    int iRemoveAt3 = intList3.removeAt(i10);
                    if (iRemoveAt3 / 4 > 0) {
                        iRemoveAt3 += Resources.RND.nextInt(iRemoveAt3 / 4);
                    }
                    int i12 = iRemoveAt3;
                    int i13 = iRemoveAt2 == 1 ? 1 : 0;
                    int i14 = iUnpackY - i12;
                    while (true) {
                        i8 = iMax;
                        if (i14 > iUnpackY + i12) {
                            break;
                        }
                        int i15 = i14 - iUnpackY;
                        int i16 = i15 * i15;
                        int iCeil = (int) Math.ceil(Math.sqrt((i12 * i12) - i16));
                        int i17 = iUnpackX - iCeil;
                        while (i17 <= iUnpackX + iCeil) {
                            int i18 = i17 - iUnpackX;
                            int i19 = iMin2;
                            int i20 = iMax2;
                            float fSqrt = (float) Math.sqrt((i18 * i18) + i16);
                            Random random = Resources.RND;
                            float fNextFloat = fSqrt * (random.nextFloat() + 1.0f);
                            float f = i12;
                            if (fNextFloat < f) {
                                i9 = i12;
                                if (this.city.isValid(i17, i14)) {
                                    Building building = tiles.getBuilding(i17, i14);
                                    this.modifier.destroy(i17, i14, i13 != 0 && random.nextFloat() < 1.0f - (fNextFloat / f), null);
                                    if (building != null && building.getDraft().explodes && tiles.getBuilding(i17, i14) != building) {
                                        intList.add(PackedInt2.pack(i17, i14));
                                        intList2.add(i13);
                                        i11++;
                                        intList3.add(i9 + i11);
                                    }
                                }
                            } else {
                                i9 = i12;
                            }
                            i17++;
                            iMin2 = i19;
                            iMax2 = i20;
                            i12 = i9;
                        }
                        i14++;
                        iMax = i8;
                    }
                    int i21 = iMin2;
                    int i22 = iMax2;
                    Nuke nuke = new Nuke();
                    nuke.startAnimTime = this.date.getAnimationTime();
                    nuke.x = iUnpackX;
                    nuke.y = iUnpackY;
                    synchronized (this.nukes) {
                        this.nukes.add(nuke);
                    }
                    i4 = iMin;
                    i5 = i8;
                    i6 = i21;
                    i7 = i22;
                    i10 = 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i23 = i4 - 5;
        int i24 = i6 - 5;
        final int[] iArr = {i23, i24, ((i5 + 5) - i23) + 1, ((i7 + 5) - i24) + 1};
        ((DefaultSoundManager) this.city.getComponent(15)).playOnce(Resources.SOUND_METEORITE_IMPACT, SoundType.GAME, new AreaSoundSource() { // from class: info.flowersoft.theotown.components.disaster.NukeDisaster.1
            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return true;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
            public int getX() {
                return iArr[0];
            }

            @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
            public int getY() {
                return iArr[1];
            }

            @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
            public int getWidth() {
                return iArr[2];
            }

            @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
            public int getHeight() {
                return iArr[3];
            }
        });
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        if (this.nukes.isEmpty()) {
            return null;
        }
        Nuke nuke = this.nukes.get(0);
        return new int[]{nuke.x, nuke.y};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterNuke;
    }

    public static class Nuke {
        public int startAnimTime;
        public int x;
        public int y;

        public Nuke() {
        }
    }
}
