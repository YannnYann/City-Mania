package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.CarAnimationSpot;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CarDraftLoader extends DraftLoader {
    public static final List<Color> autoColors;
    public static final int[] V2_TO_LEGACY = {1, 0, 3, 2};
    public static final int[] LEGACY_TO_V2 = {1, 0, 3, 2};

    static {
        ArrayList arrayList = new ArrayList();
        autoColors = arrayList;
        arrayList.add(Color.fromHexRGB("5F77BF"));
        arrayList.add(Color.fromHexRGB("B2372C"));
        arrayList.add(Color.fromHexRGB("B28E6B"));
        arrayList.add(Color.fromHexRGB("547F46"));
        arrayList.add(Color.fromHexRGB("CC9F47"));
        arrayList.add(Color.fromHexRGB("946BB2"));
        arrayList.add(Color.fromHexRGB("6FB259"));
        arrayList.add(Color.fromHexRGB("CC603D"));
        arrayList.add(Color.fromHexRGB("3F5072"));
        arrayList.add(Color.fromHexRGB("8288A3"));
        arrayList.add(Color.fromHexRGB("B26291"));
        arrayList.add(Color.fromHexRGB("E5C689"));
        arrayList.add(Color.fromHexRGB("FFFFFF"));
        arrayList.add(Color.fromHexRGB("333333"));
        arrayList.add(Color.fromHexRGB("666666"));
        arrayList.add(Color.fromHexRGB("B5BABF"));
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"car", "bus", "train car"};
    }

    public final void setV2Handle(int[] iArr, IntList intList, IntList intList2, boolean z, int i) {
        if (iArr == null) {
            return;
        }
        Texture texture = Resources.TEXTURE_WORLD;
        int i2 = 0;
        while (i2 < iArr.length) {
            int i3 = iArr[i2];
            int i4 = i2 + 1;
            iArr[i2] = iArr[i4];
            iArr[i4] = i3;
            int i5 = i2 + 2;
            int i6 = iArr[i5];
            int i7 = i2 + 3;
            iArr[i5] = iArr[i7];
            iArr[i7] = i6;
            applyCorrection(iArr[i4], i2, z, 4, 7, intList, intList2);
            applyCorrection(iArr[i2], i4, z, 12, 7, intList, intList2);
            applyCorrection(iArr[i7], i5, z, 12, 3, intList, intList2);
            applyCorrection(iArr[i5], i7, z, 4, 3, intList, intList2);
            if (i >= 8) {
                int i8 = i2 + 4;
                applyCorrection(iArr[i8], i8, z, 10, 5, intList, intList2);
                int i9 = i2 + 5;
                applyCorrection(iArr[i9], i9, z, 14, 3, intList, intList2);
                int i10 = i2 + 6;
                applyCorrection(iArr[i10], i10, z, 4, 2, intList, intList2);
                int i11 = i2 + 7;
                applyCorrection(iArr[i11], i11, z, 7, 3, intList, intList2);
            }
            i2 += i;
        }
    }

    public final void applyCorrection(int i, int i2, boolean z, int i3, int i4, IntList intList, IntList intList2) {
        Image image = Resources.IMAGE_WORLD;
        image.setHandle(i, ((-i3) * (z ? 1 : 0)) + image.getHandleX(i) + intList.get(i2 % intList.size()), ((image.getHeight(i) - i4) * (z ? 1.0f : 0.0f)) + image.getHandleY(i) + intList2.get(i2 % intList2.size()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public CarDraft load() throws JSONException {
        CarDraft carDraft;
        int i;
        char c;
        int[] iArr;
        boolean z;
        int i2;
        int i3;
        int i4 = 8;
        carDraft = (CarDraft) getDraft(this.src, CarDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.CarDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new CarDraft();
            }
        });
        loadDefaults(carDraft);
        String string = this.src.getString("type");
        string.getClass();
        char c2 = 2;
        boolean z2 = true;
        z2 = true;
        int i5 = 0;
        switch (string) {
            case "bus":
                carDraft.vehicleType = 1;
                carDraft.flags = 128L;
                carDraft.chargeable = false;
                carDraft.driveable = false;
                break;
            case "car":
                carDraft.vehicleType = 0;
                carDraft.flags = 96L;
                break;
            case "train car":
                carDraft.vehicleType = 2;
                carDraft.flags = 256L;
                carDraft.chargeable = false;
                carDraft.driveable = false;
                break;
            default:
                throw new JSONException("Could not recognize vehicle type " + this.src.getString("type"));
        }
        JSONArray jSONArrayOptJSONArray = this.src.optJSONArray("v2");
        boolean z3 = jSONArrayOptJSONArray != null || this.src.optBoolean("v2", false);
        int iOptInt = this.src.optInt("frames per variant", carDraft.framesPerVariant);
        carDraft.framesPerVariant = iOptInt;
        if (iOptInt != 4 && iOptInt != 8) {
            throw new IllegalArgumentException("Frames per variant must be 4 or 8 but was " + carDraft.framesPerVariant);
        }
        int[] iArrLoadFrames = loadFrames("frames", "frame", z3 ? ImageHandleResolver.TOP_LEFT : ImageHandleResolver.DEFAULT, carDraft, carDraft.frames);
        carDraft.frames = iArrLoadFrames;
        if (iArrLoadFrames == null) {
            throw new IllegalArgumentException("Got no frames");
        }
        CarDraftLoader carDraftLoader = this;
        carDraft.overlayFrames = carDraftLoader.loadFrames("overlay frames", "overlay frame", z3 ? ImageHandleResolver.TOP_LEFT : ImageHandleResolver.DEFAULT, carDraft, carDraft.overlayFrames);
        if (z3) {
            IntList intList = new IntList();
            IntList intList2 = new IntList();
            if (jSONArrayOptJSONArray != null) {
                for (int i6 = 0; i6 < jSONArrayOptJSONArray.length(); i6++) {
                    JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i6);
                    if (jSONArrayOptJSONArray2 != null) {
                        intList.add(jSONArrayOptJSONArray2.getInt(0));
                        intList2.add(jSONArrayOptJSONArray2.getInt(1));
                    } else {
                        intList.add(0);
                        intList2.add(jSONArrayOptJSONArray.getInt(i6));
                    }
                }
            } else {
                for (int i7 = 0; i7 < carDraft.frames.length; i7++) {
                    intList.add(0);
                    intList2.add(0);
                }
            }
            if (carDraft.frames.length % carDraft.framesPerVariant != 0) {
                throw new IllegalArgumentException("Car " + carDraft.id + " has " + carDraft.frames.length + " frames which is not a multiple of " + carDraft.framesPerVariant);
            }
            boolean zOptBoolean = carDraftLoader.src.optBoolean("auto align", true);
            carDraftLoader.setV2Handle(carDraft.frames, intList, intList2, zOptBoolean, carDraft.framesPerVariant);
            carDraftLoader = this;
            carDraftLoader.setV2Handle(carDraft.overlayFrames, intList, intList2, zOptBoolean, carDraft.framesPerVariant);
        }
        if (carDraftLoader.src.optBoolean("auto colorize", false)) {
            int[] iArr2 = carDraft.frames;
            carDraft.framesPerColor = iArr2.length;
            int[] iArr3 = new int[autoColors.size() * iArr2.length];
            carDraft.frames = iArr3;
            carDraft.colors = new Color[iArr3.length / carDraft.framesPerVariant];
            int i8 = 0;
            while (true) {
                int[] iArr4 = carDraft.frames;
                if (i8 < iArr4.length) {
                    iArr4[i8] = iArr2[i8 % iArr2.length];
                    i8++;
                } else {
                    int i9 = 0;
                    while (true) {
                        Color[] colorArr = carDraft.colors;
                        if (i9 < colorArr.length) {
                            colorArr[i9] = autoColors.get((carDraft.framesPerVariant * i9) / iArr2.length);
                            i9++;
                        }
                    }
                }
            }
        } else {
            Color[] colorArrLoadColors = carDraftLoader.loadColors("colors", carDraftLoader.src);
            carDraft.colors = colorArrLoadColors;
            if (colorArrLoadColors != null) {
                int[] iArr5 = carDraft.frames;
                int length = iArr5.length;
                int i10 = carDraft.framesPerVariant;
                if (colorArrLoadColors.length > length / i10) {
                    carDraft.frames = new int[i10 * colorArrLoadColors.length];
                    int i11 = 0;
                    while (true) {
                        int[] iArr6 = carDraft.frames;
                        if (i11 < iArr6.length) {
                            iArr6[i11] = iArr5[i11 % iArr5.length];
                            i11++;
                        }
                    }
                }
            }
        }
        if (carDraftLoader.src.has("overlay colors")) {
            JSONArray jSONArray = carDraftLoader.src.getJSONArray("overlay colors");
            carDraft.overlayColors = new Color[jSONArray.length()];
            for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                carDraft.overlayColors[i12] = carDraftLoader.loadColorFromObject(jSONArray.getJSONObject(i12));
            }
            int[] iArr7 = carDraft.frames;
            carDraft.frames = new int[iArr7.length * carDraft.overlayColors.length];
            int i13 = 0;
            while (true) {
                int[] iArr8 = carDraft.frames;
                if (i13 < iArr8.length) {
                    iArr8[i13] = iArr7[i13 % iArr7.length];
                    i13++;
                } else {
                    Color[] colorArr2 = carDraft.colors;
                    if (colorArr2 != null) {
                        carDraft.colors = new Color[colorArr2.length * carDraft.overlayColors.length];
                        int i14 = 0;
                        while (true) {
                            Color[] colorArr3 = carDraft.colors;
                            if (i14 < colorArr3.length) {
                                colorArr3[i14] = colorArr2[i14 % colorArr2.length];
                                i14++;
                            }
                        }
                    }
                    Color[] colorArr4 = carDraft.overlayColors;
                    carDraft.overlayColors = new Color[carDraft.frames.length / carDraft.framesPerVariant];
                    int i15 = 0;
                    while (true) {
                        Color[] colorArr5 = carDraft.overlayColors;
                        if (i15 < colorArr5.length) {
                            colorArr5[i15] = colorArr4[i15 % colorArr4.length];
                            i15++;
                        }
                    }
                }
            }
        }
        Color[] colorArr6 = carDraft.colors;
        if (colorArr6 != null && colorArr6.length != carDraft.frames.length / carDraft.framesPerVariant) {
            throw new IllegalArgumentException("Color count missmatch: got " + carDraft.colors.length + " but expected " + (carDraft.frames.length / carDraft.framesPerVariant));
        }
        Color[] colorArr7 = carDraft.overlayColors;
        if (colorArr7 != null && colorArr7.length != carDraft.frames.length / carDraft.framesPerVariant) {
            throw new IllegalArgumentException("Overlay color count missmatch: got " + carDraft.overlayColors.length + " but expected " + (carDraft.frames.length / carDraft.framesPerVariant));
        }
        carDraft.capacity = carDraftLoader.src.optInt("capacity", 0);
        if (carDraftLoader.src.has("animation")) {
            boolean z4 = z3 && carDraftLoader.src.optBoolean("normalize animation pos", true);
            Image image = Resources.IMAGE_WORLD;
            carDraft.animationSpots = new ArrayList();
            JSONArray jSONArray2 = carDraftLoader.src.getJSONArray("animation");
            int i16 = 0;
            boolean z5 = z4;
            while (i16 < jSONArray2.length()) {
                JSONObject jSONObject = jSONArray2.getJSONObject(i16);
                String string2 = jSONObject.getString(C3670j8.x);
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("pos");
                if (jSONArrayOptJSONArray3 == null) {
                    jSONArrayOptJSONArray3 = new JSONArray();
                    c = c2;
                    for (int i17 = i5; i17 < carDraft.framesPerVariant * 2; i17 += z2 ? 1 : 0) {
                        jSONArrayOptJSONArray3.put(i5);
                    }
                } else {
                    c = c2;
                }
                Color colorLoadColor = carDraftLoader.loadColor(C3522b4.i.S, jSONObject);
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("frames");
                if (jSONArrayOptJSONArray4 == null && (jSONObject.has("frames") || jSONObject.has("frame"))) {
                    jSONArrayOptJSONArray4 = new JSONArray();
                    if (jSONObject.has("frames")) {
                        jSONArrayOptJSONArray4.put(jSONObject.getInt("frames"));
                    } else {
                        jSONArrayOptJSONArray4.put(jSONObject.getInt("frame"));
                    }
                }
                if (jSONArrayOptJSONArray4 == null) {
                    int i18 = i5;
                    while (i18 < jSONArrayOptJSONArray3.length()) {
                        if (jSONArrayOptJSONArray3.isNull(i18) || jSONArrayOptJSONArray3.isNull(i18 + 1)) {
                            jSONArrayOptJSONArray3.put(i18, i5);
                            jSONArrayOptJSONArray3.put(i18 + 1, i5);
                            if (jSONArrayOptJSONArray4 == null) {
                                jSONArrayOptJSONArray4 = new JSONArray();
                                for (int i19 = i5; i19 < i18 / 2; i19 += z2 ? 1 : 0) {
                                    jSONArrayOptJSONArray4.put(i19);
                                }
                            }
                        } else if (jSONArrayOptJSONArray4 != null) {
                            jSONArrayOptJSONArray4.put(i18 / 2);
                        }
                        i18 += 2;
                        i5 = 0;
                    }
                }
                boolean z6 = (z5 && jSONObject.optBoolean("normalize pos", z2)) ? z2 ? 1 : 0 : false;
                IntList intList3 = new IntList(carDraft.frames.length * 2);
                boolean z7 = z2 ? 1 : 0;
                int i20 = 0;
                boolean z8 = z5;
                while (i20 < jSONArrayOptJSONArray3.length()) {
                    if (z6) {
                        if (carDraft.framesPerVariant == i4) {
                            int i21 = (i20 / 2) % i4;
                            i2 = i4;
                            if (i21 < 4) {
                                i21 = LEGACY_TO_V2[i21];
                            }
                            i3 = (i21 * 2) + ((i20 / 16) * 16);
                        } else {
                            i2 = i4;
                            i3 = ((i20 / 8) * 8) + (LEGACY_TO_V2[(i20 / 2) % 4] * 2);
                        }
                        z = z8;
                        int i22 = i20 / 2;
                        intList3.add(jSONArrayOptJSONArray3.getInt(i3 % jSONArrayOptJSONArray3.length()) - ((int) image.getHandleX(carDraft.frames[i22])));
                        intList3.add(jSONArrayOptJSONArray3.getInt((i3 + 1) % jSONArrayOptJSONArray3.length()) - ((int) image.getHandleY(carDraft.frames[i22])));
                    } else {
                        z = z8;
                        i2 = i4;
                        intList3.add(jSONArrayOptJSONArray3.getInt(i20 % jSONArrayOptJSONArray3.length()));
                        intList3.add(jSONArrayOptJSONArray3.getInt((i20 + 1) % jSONArrayOptJSONArray3.length()));
                    }
                    i20 += 2;
                    i4 = i2;
                    z8 = z;
                }
                boolean z9 = z8;
                int i23 = i4;
                if (!intList3.isEmpty()) {
                    int size = intList3.size();
                    while (intList3.size() < carDraft.frames.length * 2) {
                        int size2 = intList3.size();
                        intList3.add(intList3.get(size2 % size));
                        intList3.add(intList3.get((size2 + 1) % size));
                    }
                }
                AnimationDraft animationDraft = (AnimationDraft) Drafts.ALL.get(string2);
                if (animationDraft == null) {
                    throw new IllegalStateException("No animation " + string2 + " has been found (for use in car " + carDraft.id + ")");
                }
                boolean zOptBoolean2 = jSONObject.optBoolean("important", false);
                if (jSONArrayOptJSONArray4 != null) {
                    int[] iArr9 = new int[jSONArrayOptJSONArray4.length()];
                    for (int i24 = 0; i24 < jSONArrayOptJSONArray4.length(); i24++) {
                        if (z3 && jSONArrayOptJSONArray4.getInt(i24) % carDraft.framesPerVariant < 4) {
                            int i25 = V2_TO_LEGACY[jSONArrayOptJSONArray4.getInt(i24) % carDraft.framesPerVariant];
                            int i26 = jSONArrayOptJSONArray4.getInt(i24);
                            int i27 = carDraft.framesPerVariant;
                            iArr9[i24] = i25 + ((i26 / i27) * i27);
                        } else {
                            iArr9[i24] = jSONArrayOptJSONArray4.getInt(i24);
                        }
                    }
                    iArr = iArr9;
                } else {
                    iArr = null;
                }
                carDraft.animationSpots.add(new CarAnimationSpot(animationDraft, intList3, zOptBoolean2, iArr, colorLoadColor));
                i16++;
                c2 = c;
                z2 = z7 ? 1 : 0;
                i4 = i23;
                z5 = z9 ? 1 : 0;
                i5 = 0;
            }
        }
        boolean z10 = z2;
        long j = carDraft.flags;
        if (carDraft.getMetaTag("fire brigade") == null && carDraft.getMetaTag("medic") == null && carDraft.getMetaTag("police") == null && carDraft.getMetaTag("swat") == null) {
            i = 0;
        } else {
            j |= 16777216;
            i = 0;
            carDraft.driveable = false;
            carDraft.chargeable = false;
        }
        carDraft.flags = carDraftLoader.roadFlags.load(carDraftLoader.src, "flag", j);
        carDraft.speed = (float) carDraftLoader.src.optDouble("speed", 1.0d);
        carDraft.length = (float) carDraftLoader.src.optDouble("length", 1.75d);
        carDraft.driveable = carDraftLoader.src.optBoolean("driveable", (carDraft.driveable && (carDraft.flags & 7948) == 0) ? z10 ? 1 : 0 : i);
        carDraft.chargeable = carDraftLoader.src.optBoolean("chargeable", carDraft.chargeable);
        JSONArray jSONArrayOptJSONArray5 = carDraftLoader.src.optJSONArray("tail");
        if (jSONArrayOptJSONArray5 != null && jSONArrayOptJSONArray5.length() > 0) {
            carDraft.tail = new CarDraft[jSONArrayOptJSONArray5.length()];
            for (int i28 = i; i28 < jSONArrayOptJSONArray5.length(); i28++) {
                String strOptString = jSONArrayOptJSONArray5.optString(i28, null);
                if (strOptString == null || strOptString.equals(carDraft.id) || jSONArrayOptJSONArray5.isNull(i28)) {
                    carDraft.tail[i28] = carDraft;
                } else {
                    CarDraft carDraft2 = (CarDraft) Drafts.ALL.get(strOptString);
                    if (carDraft2 != null) {
                        carDraft.tail[i28] = carDraft2;
                    } else {
                        throw new IllegalArgumentException("May not find a car with id " + strOptString);
                    }
                }
            }
        }
        carDraft.price = carDraftLoader.signedPrice(carDraftLoader.src.optInt("price", (int) carDraft.price));
        int iMax = Math.max(1000, (int) (carDraft.capacity * 100 * carDraft.speed));
        long j2 = carDraft.price;
        long j3 = iMax;
        if (j2 < j3) {
            carDraft.price = j3;
        }
        if (carDraft.frames.length % carDraft.framesPerVariant != 0) {
            throw new IllegalArgumentException("Frames must be a multiple of frames per variant (" + carDraft.framesPerVariant + ") but was " + carDraft.frames.length);
        }
        CarDraft carDraft3 = (CarDraft) Drafts.ALL.get(carDraft.id);
        if (carDraft3 != null) {
            Drafts.CARS.remove(carDraft3);
        }
        Drafts.CARS.add(carDraft);
        return carDraft;
    }
}
