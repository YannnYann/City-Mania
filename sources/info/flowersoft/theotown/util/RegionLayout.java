package info.flowersoft.theotown.util;

import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.IntList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class RegionLayout implements Cloneable {
    public int maxDivisor;
    public IntList xLocations = new IntList();
    public IntList yLocations = new IntList();
    public IntList divisors = new IntList();
    public IntList enabled = new IntList();
    public int maxAllowedDivisor = 8;

    public RegionLayout() {
        reset();
    }

    public void reset() {
        this.xLocations.clear();
        this.yLocations.clear();
        this.divisors.clear();
        this.enabled.clear();
        this.maxDivisor = 1;
        this.xLocations.add(0);
        this.yLocations.add(0);
        this.divisors.add(1);
        this.enabled.add(1);
        this.maxAllowedDivisor = 8;
    }

    public int countPlaces() {
        return this.xLocations.size();
    }

    public int getX(int i) {
        return this.xLocations.get(i);
    }

    public int getY(int i) {
        return this.yLocations.get(i);
    }

    public int getDivisor(int i) {
        return this.divisors.get(i);
    }

    public float getRelativeX(int i) {
        return getX(i) / getMaxDivisor();
    }

    public float getRelativeY(int i) {
        return getY(i) / getMaxDivisor();
    }

    public float getRelativeSize(int i) {
        return 1.0f / getDivisor(i);
    }

    public boolean getEnabled(int i) {
        return this.enabled.get(i) > 0;
    }

    public void setEnabled(int i, boolean z) {
        this.enabled.set(i, z ? 1 : 0);
    }

    public int getMaxDivisor() {
        return this.maxDivisor;
    }

    public void setMaxAllowedDivisor(int i) {
        this.maxAllowedDivisor = i;
    }

    public int getCellIndex(float f, float f2) {
        for (int i = 0; i < countPlaces(); i++) {
            if (getRelativeX(i) <= f && getRelativeY(i) <= f2 && f <= getRelativeX(i) + getRelativeSize(i) && f2 <= getRelativeY(i) + getRelativeSize(i)) {
                return i;
            }
        }
        return -1;
    }

    public final int[] collectNeighboringIndices(int i) {
        IntList intList = new IntList();
        int divisor = getDivisor(i);
        int x = getX(i);
        int y = getY(i);
        int i2 = this.maxDivisor / divisor;
        for (int i3 = 0; i3 < countPlaces(); i3++) {
            if (getX(i3) >= x && getY(i3) >= y && getX(i3) <= x + i2 && getY(i3) <= y + i2 && getDivisor(i3) == divisor) {
                intList.add(i3);
            }
        }
        if (intList.size() == 4) {
            return intList.toArray();
        }
        return null;
    }

    public boolean canMerge(int i) {
        return collectNeighboringIndices(i) != null;
    }

    public int merge(int i) {
        return merge(collectNeighboringIndices(i));
    }

    public int countEnabledCells() {
        int i = 0;
        for (int i2 = 0; i2 < countPlaces(); i2++) {
            if (getEnabled(i2)) {
                i++;
            }
        }
        return i;
    }

    public int getMaxUsedDivisor() {
        int iMax = 0;
        for (int i = 0; i < countPlaces(); i++) {
            if (getEnabled(i)) {
                iMax = Math.max(iMax, getDivisor(i));
            }
        }
        return iMax;
    }

    public boolean isValid() {
        return countEnabledCells() > 0 && getMaxUsedDivisor() <= this.maxAllowedDivisor;
    }

    public int merge(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("indices may not be null or empty");
        }
        int iMin = this.maxDivisor;
        int i = this.enabled.get(iArr[0]);
        Arrays.sort(iArr);
        int iMax = 0;
        int iMax2 = 0;
        int iMin2 = iMin;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 > 0 && iArr[i2 - 1] == iArr[i2]) {
                throw new IllegalArgumentException("indices may not contain duplicates");
            }
            int i3 = iArr[i2];
            int x = getX(i3);
            int y = getY(i3);
            int divisor = this.maxDivisor / getDivisor(i3);
            iMin = Math.min(iMin, x);
            iMin2 = Math.min(iMin2, y);
            iMax = Math.max(iMax, x + divisor);
            iMax2 = Math.max(iMax2, y + divisor);
        }
        int i4 = iMax - iMin;
        if (i4 != iMax2 - iMin2) {
            throw new IllegalArgumentException("Merge area must be a square");
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            int i5 = iArr[length];
            this.xLocations.removeAt(i5);
            this.yLocations.removeAt(i5);
            this.divisors.removeAt(i5);
            this.enabled.removeAt(i5);
        }
        int size = this.xLocations.size();
        this.xLocations.add(iMin);
        this.yLocations.add(iMin2);
        this.divisors.add(this.maxDivisor / i4);
        this.enabled.add(i);
        return size;
    }

    public boolean canDivide(int i, int i2) {
        return getDivisor(i) * i2 <= this.maxAllowedDivisor;
    }

    public int divide(int i, int i2) {
        int divisor = getDivisor(i) * i2;
        if (divisor > this.maxDivisor) {
            divideRaw(i2);
        }
        int iRemoveAt = this.xLocations.removeAt(i);
        int iRemoveAt2 = this.yLocations.removeAt(i);
        int iRemoveAt3 = this.enabled.removeAt(i);
        this.divisors.removeAt(i);
        int size = this.xLocations.size();
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                this.xLocations.add(((this.maxDivisor * i4) / divisor) + iRemoveAt);
                this.yLocations.add(((this.maxDivisor * i3) / divisor) + iRemoveAt2);
                this.divisors.add(divisor);
                this.enabled.add(iRemoveAt3);
            }
        }
        return size;
    }

    public boolean equals(Object obj) {
        if (obj instanceof RegionLayout) {
            RegionLayout regionLayout = (RegionLayout) obj;
            if (this.xLocations.equals(regionLayout.xLocations) && this.yLocations.equals(regionLayout.yLocations) && this.divisors.equals(regionLayout.divisors) && this.enabled.equals(regionLayout.enabled) && this.maxDivisor == regionLayout.maxDivisor) {
                return true;
            }
        }
        return false;
    }

    public void setTo(RegionLayout regionLayout) {
        this.xLocations = regionLayout.xLocations.m2757clone();
        this.yLocations = regionLayout.yLocations.m2757clone();
        this.divisors = regionLayout.divisors.m2757clone();
        this.enabled = regionLayout.enabled.m2757clone();
        this.maxDivisor = regionLayout.maxDivisor;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RegionLayout m2410clone() {
        RegionLayout regionLayout = new RegionLayout();
        regionLayout.xLocations = this.xLocations.m2757clone();
        regionLayout.yLocations = this.yLocations.m2757clone();
        regionLayout.divisors = this.divisors.m2757clone();
        regionLayout.enabled = this.enabled.m2757clone();
        regionLayout.maxDivisor = this.maxDivisor;
        return regionLayout;
    }

    public final void divideRaw(int i) {
        this.maxDivisor *= i;
        for (int i2 = 0; i2 < countPlaces(); i2++) {
            IntList intList = this.xLocations;
            intList.set(i2, intList.get(i2) * i);
            IntList intList2 = this.yLocations;
            intList2.set(i2, intList2.get(i2) * i);
        }
    }

    public void fromJSON(JSONObject jSONObject) throws JSONException {
        this.xLocations.clear();
        this.yLocations.clear();
        this.divisors.clear();
        this.enabled.clear();
        JSONArray jSONArray = jSONObject.getJSONArray("xyde");
        int i = jSONObject.getInt("stride");
        for (int i2 = 0; i2 < jSONArray.length(); i2 += i) {
            this.xLocations.add(jSONArray.getInt(i2));
            this.yLocations.add(jSONArray.getInt(i2 + 1));
            this.divisors.add(jSONArray.getInt(i2 + 2));
            this.enabled.add(jSONArray.getInt(i2 + 3));
        }
        this.maxDivisor = jSONObject.getInt("max divisor");
        this.maxAllowedDivisor = jSONObject.optInt("max allowed divisor", this.maxAllowedDivisor);
    }

    public JSONObject toJSON() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < this.xLocations.size(); i++) {
            jSONArray.put(this.xLocations.get(i));
            jSONArray.put(this.yLocations.get(i));
            jSONArray.put(this.divisors.get(i));
            jSONArray.put(this.enabled.get(i));
        }
        jSONObject.put("xyde", jSONArray);
        jSONObject.put("stride", 4);
        jSONObject.put("max divisor", this.maxDivisor);
        jSONObject.put("max allowed divisor", this.maxAllowedDivisor);
        return jSONObject;
    }
}
