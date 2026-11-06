package vm2;

import com.google.android.gms.common.api.Api;
import com.ironsource.G5;
import java.lang.ref.WeakReference;
import java.util.Vector;

/* JADX INFO: loaded from: classes6.dex */
public class LuaTable extends LuaValue implements Metatable {
    private static final int MIN_HASH_CAPACITY = 2;
    private static final LuaString N = LuaValue.valueOf(G5.q);
    private static final Slot[] NOBUCKETS = new Slot[0];
    protected LuaValue[] array;
    protected Slot[] hash;
    protected int hashEntries;
    protected Metatable m_metatable;
    protected int maxKey;

    public interface Slot {
        Slot add(Slot slot);

        int arraykey(int i);

        StrongSlot find(LuaValue luaValue);

        StrongSlot first();

        boolean keyeq(LuaValue luaValue);

        int keyindex(int i);

        Slot relink(Slot slot);

        Slot remove(StrongSlot strongSlot);

        Slot rest();

        Slot set(StrongSlot strongSlot, LuaValue luaValue);
    }

    public interface StrongSlot extends Slot {
        LuaValue key();

        Varargs toVarargs();

        LuaValue value();
    }

    public static int hashpow2(int i, int i2) {
        return i & i2;
    }

    public static int log2(int i) {
        int i2;
        int i3 = i - 1;
        if (i3 < 0) {
            return Integer.MIN_VALUE;
        }
        if (((-65536) & i3) != 0) {
            i3 >>>= 16;
            i2 = 16;
        } else {
            i2 = 0;
        }
        if ((65280 & i3) != 0) {
            i2 += 8;
            i3 >>>= 8;
        }
        if ((i3 & 240) != 0) {
            i2 += 4;
            i3 >>>= 4;
        }
        switch (i3) {
            case 0:
                return 0;
            case 1:
                return i2 + 1;
            case 2:
                return i2 + 2;
            case 3:
                return i2 + 2;
            case 4:
                return i2 + 3;
            case 5:
                return i2 + 3;
            case 6:
                return i2 + 3;
            case 7:
                return i2 + 3;
            case 8:
                return i2 + 4;
            case 9:
                return i2 + 4;
            case 10:
                return i2 + 4;
            case 11:
                return i2 + 4;
            case 12:
                return i2 + 4;
            case 13:
                return i2 + 4;
            case 14:
                return i2 + 4;
            case 15:
                return i2 + 4;
            default:
                return i2;
        }
    }

    @Override // vm2.LuaValue
    public LuaTable checktable() {
        return this;
    }

    @Override // vm2.LuaValue
    public boolean istable() {
        return true;
    }

    @Override // vm2.LuaValue
    public LuaTable opttable(LuaTable luaTable) {
        return this;
    }

    @Override // vm2.Metatable
    public LuaValue toLuaValue() {
        return this;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 3;
    }

    @Override // vm2.Metatable
    public boolean useWeakKeys() {
        return false;
    }

    @Override // vm2.Metatable
    public boolean useWeakValues() {
        return false;
    }

    @Override // vm2.Metatable
    public LuaValue wrap(LuaValue luaValue) {
        return luaValue;
    }

    public LuaTable() {
        this.maxKey = -1;
        this.array = LuaValue.NOVALS;
        this.hash = NOBUCKETS;
    }

    public LuaTable(int i, int i2) {
        this.maxKey = -1;
        presize(i, i2);
    }

    public LuaTable(LuaValue[] luaValueArr, LuaValue[] luaValueArr2, Varargs varargs) {
        this.maxKey = -1;
        int length = luaValueArr != null ? luaValueArr.length : 0;
        int length2 = luaValueArr2 != null ? luaValueArr2.length : 0;
        presize((varargs != null ? varargs.narg() : 0) + length2, length >> 1);
        int i = 0;
        while (i < length2) {
            int i2 = i + 1;
            rawset(i2, luaValueArr2[i]);
            i = i2;
        }
        if (varargs != null) {
            int iNarg = varargs.narg();
            for (int i3 = 1; i3 <= iNarg; i3++) {
                rawset(length2 + i3, varargs.arg(i3));
            }
        }
        for (int i4 = 0; i4 < length; i4 += 2) {
            int i5 = i4 + 1;
            if (!luaValueArr[i5].isnil()) {
                rawset(luaValueArr[i4], luaValueArr[i5]);
            }
        }
    }

    public LuaTable(Varargs varargs) {
        this(varargs, 1);
    }

    public LuaTable(Varargs varargs, int i) {
        this.maxKey = -1;
        int i2 = i - 1;
        int iMax = Math.max(varargs.narg() - i2, 0);
        presize(iMax, 1);
        set(N, LuaValue.valueOf(iMax));
        for (int i3 = 1; i3 <= iMax; i3++) {
            set(i3, varargs.arg(i3 + i2));
        }
    }

    @Override // vm2.LuaValue
    public String typename() {
        return G5.R;
    }

    @Override // vm2.LuaValue
    public void presize(int i) {
        LuaValue[] luaValueArr = this.array;
        if (i > luaValueArr.length) {
            this.array = resize(luaValueArr, 1 << log2(i));
        }
    }

    public void presize(int i, int i2) {
        if (i2 > 0 && i2 < 2) {
            i2 = 2;
        }
        this.array = i > 0 ? new LuaValue[1 << log2(i)] : LuaValue.NOVALS;
        this.hash = i2 > 0 ? new Slot[1 << log2(i2)] : NOBUCKETS;
        this.hashEntries = 0;
    }

    private static LuaValue[] resize(LuaValue[] luaValueArr, int i) {
        LuaValue[] luaValueArr2 = new LuaValue[i];
        System.arraycopy(luaValueArr, 0, luaValueArr2, 0, luaValueArr.length);
        return luaValueArr2;
    }

    public int getArrayLength() {
        return this.array.length;
    }

    public int getHashLength() {
        return this.hash.length;
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        Metatable metatable = this.m_metatable;
        if (metatable != null) {
            return metatable.toLuaValue();
        }
        return null;
    }

    @Override // vm2.LuaValue
    public LuaValue setmetatable(LuaValue luaValue) {
        Metatable metatable = this.m_metatable;
        boolean z = metatable != null && metatable.useWeakKeys();
        Metatable metatable2 = this.m_metatable;
        boolean z2 = metatable2 != null && metatable2.useWeakValues();
        Metatable metatableMetatableOf = LuaValue.metatableOf(luaValue);
        this.m_metatable = metatableMetatableOf;
        if (z == (metatableMetatableOf != null && metatableMetatableOf.useWeakKeys())) {
            Metatable metatable3 = this.m_metatable;
            if (z2 == (metatable3 != null && metatable3.useWeakValues())) {
                return this;
            }
        }
        rehash(0);
        return this;
    }

    @Override // vm2.LuaValue
    public LuaValue get(int i) {
        LuaValue luaValueRawget = rawget(i);
        return (!luaValueRawget.isnil() || this.m_metatable == null) ? luaValueRawget : LuaValue.gettable(this, LuaValue.valueOf(i));
    }

    @Override // vm2.LuaValue
    public LuaValue get(LuaValue luaValue) {
        LuaValue luaValueRawget = rawget(luaValue);
        return (!luaValueRawget.isnil() || this.m_metatable == null) ? luaValueRawget : LuaValue.gettable(this, luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue rawget(int i) {
        if (i > 0) {
            LuaValue[] luaValueArr = this.array;
            if (i <= luaValueArr.length) {
                Metatable metatable = this.m_metatable;
                int i2 = i - 1;
                LuaValue luaValueArrayget = metatable == null ? luaValueArr[i2] : metatable.arrayget(luaValueArr, i2);
                return luaValueArrayget != null ? luaValueArrayget : LuaValue.NIL;
            }
        }
        return hashget(LuaInteger.valueOf(i));
    }

    @Override // vm2.LuaValue
    public LuaValue rawget(LuaValue luaValue) {
        int i;
        if (luaValue.isinttype() && (i = luaValue.toint()) > 0) {
            LuaValue[] luaValueArr = this.array;
            if (i <= luaValueArr.length) {
                Metatable metatable = this.m_metatable;
                LuaValue luaValueArrayget = metatable == null ? luaValueArr[i - 1] : metatable.arrayget(luaValueArr, i - 1);
                return luaValueArrayget != null ? luaValueArrayget : LuaValue.NIL;
            }
        }
        return hashget(luaValue);
    }

    public LuaValue hashget(LuaValue luaValue) {
        if (this.hashEntries > 0) {
            for (Slot slotRest = this.hash[hashSlot(luaValue)]; slotRest != null; slotRest = slotRest.rest()) {
                StrongSlot strongSlotFind = slotRest.find(luaValue);
                if (strongSlotFind != null) {
                    return strongSlotFind.value();
                }
            }
        }
        return LuaValue.NIL;
    }

    @Override // vm2.LuaValue
    public void set(int i, LuaValue luaValue) {
        if (this.m_metatable != null && rawget(i).isnil() && LuaValue.settable(this, LuaInteger.valueOf(i), luaValue)) {
            return;
        }
        rawset(i, luaValue);
    }

    @Override // vm2.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue == null || (!luaValue.isvalidkey() && !metatag(LuaValue.NEWINDEX).isfunction())) {
            throw new LuaError("value ('" + luaValue + "') can not be used as a table index");
        }
        if (this.m_metatable != null && rawget(luaValue).isnil() && LuaValue.settable(this, luaValue, luaValue2)) {
            return;
        }
        rawset(luaValue, luaValue2);
    }

    @Override // vm2.LuaValue
    public void rawset(int i, LuaValue luaValue) {
        if (arrayset(i, luaValue)) {
            return;
        }
        hashset(LuaInteger.valueOf(i), luaValue);
    }

    @Override // vm2.LuaValue
    public void rawset(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.isinttype() && arrayset(luaValue.toint(), luaValue2)) {
            return;
        }
        hashset(luaValue, luaValue2);
    }

    private boolean arrayset(int i, LuaValue luaValue) {
        if (i <= 0 || i > this.array.length) {
            return false;
        }
        updateMaxKey(i, luaValue.isnil());
        LuaValue[] luaValueArr = this.array;
        int i2 = i - 1;
        if (luaValue.isnil()) {
            luaValue = null;
        } else {
            Metatable metatable = this.m_metatable;
            if (metatable != null) {
                luaValue = metatable.wrap(luaValue);
            }
        }
        luaValueArr[i2] = luaValue;
        return true;
    }

    private void updateMaxKey(int i, boolean z) {
        if (i > 0) {
            if (z) {
                if (i == this.maxKey) {
                    int i2 = i - 1;
                    if (i2 > 0 && !rawget(i2).isnil()) {
                        this.maxKey = i2;
                        return;
                    } else {
                        this.maxKey = -1;
                        return;
                    }
                }
                return;
            }
            this.maxKey = Math.max(this.maxKey, i);
        }
    }

    public LuaValue remove(int i) {
        int length = length();
        if (i == 0) {
            i = length;
        } else if (i > length) {
            return LuaValue.NONE;
        }
        LuaValue luaValue = get(i);
        LuaValue luaValue2 = luaValue;
        while (!luaValue2.isnil()) {
            int i2 = i + 1;
            LuaValue luaValue3 = get(i2);
            set(i, luaValue3);
            i = i2;
            luaValue2 = luaValue3;
        }
        return luaValue.isnil() ? LuaValue.NONE : luaValue;
    }

    public void insert(int i, LuaValue luaValue) {
        if (i == 0) {
            i = length() + 1;
        }
        while (!luaValue.isnil()) {
            LuaValue luaValue2 = get(i);
            set(i, luaValue);
            luaValue = luaValue2;
            i++;
        }
    }

    public LuaValue concat(LuaString luaString, int i, int i2) {
        Buffer buffer = new Buffer();
        if (i <= i2) {
            buffer.append(get(i).checkstring());
            while (true) {
                i++;
                if (i > i2) {
                    break;
                }
                buffer.append(luaString);
                buffer.append(get(i).checkstring());
            }
        }
        return buffer.tostring();
    }

    @Override // vm2.LuaValue
    public int length() {
        if (this.m_metatable != null) {
            LuaValue luaValueLen = len();
            if (!luaValueLen.isint()) {
                throw new LuaError("table length is not an integer: " + luaValueLen);
            }
            return luaValueLen.toint();
        }
        return rawlen();
    }

    @Override // vm2.LuaValue
    public LuaValue len() {
        LuaValue luaValueMetatag = metatag(LuaValue.LEN);
        if (luaValueMetatag.toboolean()) {
            return luaValueMetatag.call(this);
        }
        return LuaInteger.valueOf(rawlen());
    }

    @Override // vm2.LuaValue
    public int rawlen() {
        int i = this.maxKey;
        if (i > -1) {
            return i;
        }
        int arrayLength = getArrayLength();
        int hashLength = arrayLength + 1;
        while (!rawget(hashLength).isnil()) {
            hashLength += getHashLength() + arrayLength + 1;
        }
        while (hashLength >= 1 && rawget(hashLength).isnil()) {
            hashLength--;
        }
        this.maxKey = hashLength;
        return hashLength;
    }

    @Override // vm2.LuaValue
    public Varargs next(LuaValue luaValue) {
        int i;
        int length = 0;
        if (!luaValue.isnil()) {
            if (!luaValue.isinttype() || (i = luaValue.toint()) <= 0 || i > this.array.length) {
                if (this.hash.length == 0) {
                    LuaValue.error("invalid key to 'next' 1: " + luaValue);
                }
                int iHashSlot = hashSlot(luaValue);
                for (Slot slotRest = this.hash[iHashSlot]; slotRest != null; slotRest = slotRest.rest()) {
                    if (length != 0) {
                        StrongSlot strongSlotFirst = slotRest.first();
                        if (strongSlotFirst != null) {
                            return strongSlotFirst.toVarargs();
                        }
                    } else if (slotRest.keyeq(luaValue)) {
                        length = 1;
                    }
                }
                if (length == 0) {
                    LuaValue.error("invalid key to 'next' 2: " + luaValue);
                }
                length = iHashSlot + this.array.length + 1;
            } else {
                length = i;
            }
        }
        while (true) {
            LuaValue[] luaValueArr = this.array;
            if (length < luaValueArr.length) {
                LuaValue luaValueArrayget = luaValueArr[length];
                if (luaValueArrayget != null) {
                    Metatable metatable = this.m_metatable;
                    if (metatable != null) {
                        luaValueArrayget = metatable.arrayget(luaValueArr, length);
                    }
                    if (luaValueArrayget != null) {
                        return LuaValue.varargsOf(LuaInteger.valueOf(length + 1), luaValueArrayget);
                    }
                }
                length++;
            } else {
                int length2 = length - luaValueArr.length;
                while (true) {
                    Slot[] slotArr = this.hash;
                    if (length2 < slotArr.length) {
                        for (Slot slotRest2 = slotArr[length2]; slotRest2 != null; slotRest2 = slotRest2.rest()) {
                            StrongSlot strongSlotFirst2 = slotRest2.first();
                            if (strongSlotFirst2 != null) {
                                return strongSlotFirst2.toVarargs();
                            }
                        }
                        length2++;
                    } else {
                        return LuaValue.NIL;
                    }
                }
            }
        }
    }

    @Override // vm2.LuaValue
    public Varargs inext(LuaValue luaValue) {
        int iCheckint = luaValue.checkint() + 1;
        LuaValue luaValueRawget = rawget(iCheckint);
        return luaValueRawget.isnil() ? LuaValue.NONE : LuaValue.varargsOf(LuaInteger.valueOf(iCheckint), luaValueRawget);
    }

    public void hashset(LuaValue luaValue, LuaValue luaValue2) {
        int iHashSlot;
        Slot slotDefaultEntry;
        if (luaValue.isinttype()) {
            updateMaxKey(luaValue.toint(), luaValue2.isnil());
        }
        if (luaValue2.isnil()) {
            hashRemove(luaValue);
            return;
        }
        if (this.hash.length > 0) {
            iHashSlot = hashSlot(luaValue);
            for (Slot slotRest = this.hash[iHashSlot]; slotRest != null; slotRest = slotRest.rest()) {
                StrongSlot strongSlotFind = slotRest.find(luaValue);
                if (strongSlotFind != null) {
                    Slot[] slotArr = this.hash;
                    slotArr[iHashSlot] = slotArr[iHashSlot].set(strongSlotFind, luaValue2);
                    return;
                }
            }
        } else {
            iHashSlot = 0;
        }
        if (checkLoadFactor()) {
            Metatable metatable = this.m_metatable;
            if ((metatable == null || !metatable.useWeakValues()) && luaValue.isinttype() && luaValue.toint() > 0) {
                rehash(luaValue.toint());
                if (arrayset(luaValue.toint(), luaValue2)) {
                    return;
                }
            } else {
                rehash(-1);
            }
            iHashSlot = hashSlot(luaValue);
        }
        Metatable metatable2 = this.m_metatable;
        if (metatable2 != null) {
            slotDefaultEntry = metatable2.entry(luaValue, luaValue2);
        } else {
            slotDefaultEntry = defaultEntry(luaValue, luaValue2);
        }
        Slot[] slotArr2 = this.hash;
        Slot slot = slotArr2[iHashSlot];
        if (slot != null) {
            slotDefaultEntry = slot.add(slotDefaultEntry);
        }
        slotArr2[iHashSlot] = slotDefaultEntry;
        this.hashEntries++;
    }

    public static int hashmod(int i, int i2) {
        return (i & Api.BaseClientBuilder.API_PRIORITY_OTHER) % i2;
    }

    public static int hashSlot(LuaValue luaValue, int i) {
        int iType = luaValue.type();
        if (iType == 0 || iType == 6 || iType == 9 || iType == 3 || iType == 4) {
            return hashmod(luaValue.hashCode(), i);
        }
        return hashpow2(luaValue.hashCode(), i);
    }

    private int hashSlot(LuaValue luaValue) {
        return hashSlot(luaValue, this.hash.length - 1);
    }

    private void hashRemove(LuaValue luaValue) {
        if (this.hash.length > 0) {
            int iHashSlot = hashSlot(luaValue);
            for (Slot slotRest = this.hash[iHashSlot]; slotRest != null; slotRest = slotRest.rest()) {
                StrongSlot strongSlotFind = slotRest.find(luaValue);
                if (strongSlotFind != null) {
                    Slot[] slotArr = this.hash;
                    slotArr[iHashSlot] = slotArr[iHashSlot].remove(strongSlotFind);
                    this.hashEntries--;
                    return;
                }
            }
        }
    }

    private boolean checkLoadFactor() {
        return this.hashEntries >= this.hash.length;
    }

    private int countHashKeys() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Slot[] slotArr = this.hash;
            if (i >= slotArr.length) {
                return i2;
            }
            for (Slot slotRest = slotArr[i]; slotRest != null; slotRest = slotRest.rest()) {
                if (slotRest.first() != null) {
                    i2++;
                }
            }
            i++;
        }
    }

    private void dropWeakArrayValues() {
        int i = 0;
        while (true) {
            LuaValue[] luaValueArr = this.array;
            if (i >= luaValueArr.length) {
                return;
            }
            this.m_metatable.arrayget(luaValueArr, i);
            i++;
        }
    }

    private int countIntKeys(int[] iArr) {
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        for (int i4 = 0; i4 < 31; i4++) {
            LuaValue[] luaValueArr = this.array;
            if (i3 > luaValueArr.length) {
                break;
            }
            int iMin = Math.min(luaValueArr.length, 1 << i4);
            int i5 = 0;
            while (i3 <= iMin) {
                int i6 = i3 + 1;
                if (this.array[i3 - 1] != null) {
                    i5++;
                }
                i3 = i6;
            }
            iArr[i4] = i5;
            i2 += i5;
        }
        while (true) {
            Slot[] slotArr = this.hash;
            if (i >= slotArr.length) {
                return i2;
            }
            for (Slot slotRest = slotArr[i]; slotRest != null; slotRest = slotRest.rest()) {
                int iArraykey = slotRest.arraykey(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                if (iArraykey > 0) {
                    int iLog2 = log2(iArraykey);
                    iArr[iLog2] = iArr[iLog2] + 1;
                    i2++;
                }
            }
            i++;
        }
    }

    private void rehash(int i) {
        LuaValue[] luaValueArr;
        Slot[] slotArr;
        int i2;
        Slot slotDefaultEntry;
        Metatable metatable = this.m_metatable;
        if (metatable != null && (metatable.useWeakKeys() || this.m_metatable.useWeakValues())) {
            this.hashEntries = countHashKeys();
            if (this.m_metatable.useWeakValues()) {
                dropWeakArrayValues();
            }
        }
        int[] iArr = new int[32];
        int iCountIntKeys = countIntKeys(iArr);
        if (i > 0) {
            iCountIntKeys++;
            int iLog2 = log2(i);
            iArr[iLog2] = iArr[iLog2] + 1;
        }
        int i3 = iArr[0];
        int i4 = 1;
        int i5 = 0;
        while (true) {
            if (i4 >= 32) {
                break;
            }
            i3 += iArr[i4];
            int i6 = 1 << i4;
            if (iCountIntKeys * 2 < i6) {
                break;
            }
            if (i3 >= (1 << (i4 - 1))) {
                i5 = i6;
            }
            i4++;
        }
        LuaValue[] luaValueArr2 = this.array;
        Slot[] slotArr2 = this.hash;
        int i7 = (i <= 0 || i > i5) ? 0 : -1;
        if (i5 != luaValueArr2.length) {
            luaValueArr = new LuaValue[i5];
            if (i5 > luaValueArr2.length) {
                int iLog22 = log2(i5) + 1;
                for (int iLog23 = log2(luaValueArr2.length + 1); iLog23 < iLog22; iLog23++) {
                    i7 += iArr[iLog23];
                }
            } else if (luaValueArr2.length > i5) {
                int iLog24 = log2(luaValueArr2.length) + 1;
                for (int iLog25 = log2(i5 + 1); iLog25 < iLog24; iLog25++) {
                    i7 -= iArr[iLog25];
                }
            }
            System.arraycopy(luaValueArr2, 0, luaValueArr, 0, Math.min(luaValueArr2.length, i5));
        } else {
            luaValueArr = luaValueArr2;
        }
        int i8 = (this.hashEntries - i7) + ((i < 0 || i > i5) ? 1 : 0);
        if (i8 > 0) {
            int iLog26 = i8 >= 2 ? 1 << log2(i8) : 2;
            i2 = iLog26 - 1;
            slotArr = new Slot[iLog26];
        } else {
            slotArr = NOBUCKETS;
            i2 = 0;
        }
        for (Slot slotRest : slotArr2) {
            for (; slotRest != null; slotRest = slotRest.rest()) {
                int iArraykey = slotRest.arraykey(i5);
                if (iArraykey > 0) {
                    StrongSlot strongSlotFirst = slotRest.first();
                    if (strongSlotFirst != null) {
                        luaValueArr[iArraykey - 1] = strongSlotFirst.value();
                    }
                } else if (!(slotRest instanceof DeadSlot)) {
                    int iKeyindex = slotRest.keyindex(i2);
                    slotArr[iKeyindex] = slotRest.relink(slotArr[iKeyindex]);
                }
            }
        }
        while (i5 < luaValueArr2.length) {
            int i9 = i5 + 1;
            LuaValue luaValue = luaValueArr2[i5];
            if (luaValue != null) {
                int iHashmod = hashmod(LuaInteger.hashCode(i9), i2);
                Metatable metatable2 = this.m_metatable;
                if (metatable2 != null) {
                    slotDefaultEntry = metatable2.entry(LuaValue.valueOf(i9), luaValue);
                    if (slotDefaultEntry == null) {
                    }
                } else {
                    slotDefaultEntry = defaultEntry(LuaValue.valueOf(i9), luaValue);
                }
                Slot slot = slotArr[iHashmod];
                if (slot != null) {
                    slotDefaultEntry = slot.add(slotDefaultEntry);
                }
                slotArr[iHashmod] = slotDefaultEntry;
            }
            i5 = i9;
        }
        this.hash = slotArr;
        this.array = luaValueArr;
        this.hashEntries -= i7;
    }

    @Override // vm2.Metatable
    public Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        return defaultEntry(luaValue, luaValue2);
    }

    public static boolean isLargeKey(LuaValue luaValue) {
        int iType = luaValue.type();
        return (iType == 2 || iType == 4 || (iType == 5 && luaValue.rawlen() <= 32)) ? false : true;
    }

    public static Entry defaultEntry(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.isinttype()) {
            return new IntKeyEntry(luaValue.toint(), luaValue2);
        }
        if (luaValue2.type() == 4) {
            return new NumberValueEntry(luaValue, luaValue2.todouble());
        }
        return new NormalEntry(luaValue, luaValue2);
    }

    public void sort(LuaValue luaValue) {
        if (len().tolong() >= 2147483647L) {
            throw new LuaError("array too big: " + len().tolong());
        }
        Metatable metatable = this.m_metatable;
        if (metatable != null && metatable.useWeakValues()) {
            dropWeakArrayValues();
        }
        int length = length();
        if (length > 1) {
            if (luaValue.isnil()) {
                luaValue = null;
            }
            heapSort(length, luaValue);
        }
    }

    private void heapSort(int i, LuaValue luaValue) {
        heapify(i, luaValue);
        while (i > 1) {
            LuaValue luaValue2 = get(i);
            set(i, get(1));
            set(1, luaValue2);
            i--;
            siftDown(1, i, luaValue);
        }
    }

    private void heapify(int i, LuaValue luaValue) {
        for (int i2 = i / 2; i2 > 0; i2--) {
            siftDown(i2, i, luaValue);
        }
    }

    private void siftDown(int i, int i2, LuaValue luaValue) {
        while (true) {
            int i3 = i * 2;
            if (i3 > i2) {
                return;
            }
            if (i3 < i2) {
                int i4 = i3 + 1;
                if (compare(i3, i4, luaValue)) {
                    i3 = i4;
                }
            }
            if (!compare(i, i3, luaValue)) {
                return;
            }
            LuaValue luaValue2 = get(i);
            set(i, get(i3));
            set(i3, luaValue2);
            i = i3;
        }
    }

    private boolean compare(int i, int i2, LuaValue luaValue) {
        LuaValue luaValue2 = get(i);
        LuaValue luaValue3 = get(i2);
        if (luaValue2 == null || luaValue3 == null) {
            return false;
        }
        if (luaValue != null) {
            return luaValue.call(luaValue2, luaValue3).toboolean();
        }
        return luaValue2.lt_b(luaValue3);
    }

    public int keyCount() {
        LuaValue luaValueArg1 = LuaValue.NIL;
        int i = 0;
        while (true) {
            luaValueArg1 = next(luaValueArg1).arg1();
            if (luaValueArg1.isnil()) {
                return i;
            }
            i++;
        }
    }

    public LuaValue[] keys() {
        Vector vector = new Vector();
        LuaValue luaValueArg1 = LuaValue.NIL;
        while (true) {
            luaValueArg1 = next(luaValueArg1).arg1();
            if (!luaValueArg1.isnil()) {
                vector.addElement(luaValueArg1);
            } else {
                LuaValue[] luaValueArr = new LuaValue[vector.size()];
                vector.copyInto(luaValueArr);
                return luaValueArr;
            }
        }
    }

    @Override // vm2.LuaValue
    public LuaValue eq(LuaValue luaValue) {
        return eq_b(luaValue) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        LuaValue luaValue2;
        if (this == luaValue) {
            return true;
        }
        return this.m_metatable != null && luaValue.istable() && (luaValue2 = luaValue.getmetatable()) != null && LuaValue.eqmtcall(this, this.m_metatable.toLuaValue(), luaValue, luaValue2);
    }

    public Varargs unpack() {
        return unpack(1, rawlen());
    }

    public Varargs unpack(int i) {
        return unpack(i, rawlen());
    }

    public Varargs unpack(int i, int i2) {
        if (i2 < i) {
            return LuaValue.NONE;
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new LuaError("too many results to unpack: greater 2147483647");
        }
        if (i3 >= 16777215) {
            throw new LuaError("too many results to unpack: " + i3 + " (max is 16777215)");
        }
        int i4 = (i2 + 1) - i;
        if (i4 == 0) {
            return LuaValue.NONE;
        }
        if (i4 == 1) {
            return get(i);
        }
        if (i4 == 2) {
            return LuaValue.varargsOf(get(i), get(i + 1));
        }
        if (i4 < 0) {
            return LuaValue.NONE;
        }
        try {
            LuaValue[] luaValueArr = new LuaValue[i4];
            while (true) {
                i4--;
                if (i4 >= 0) {
                    luaValueArr[i4] = get(i + i4);
                } else {
                    return LuaValue.varargsOf(luaValueArr);
                }
            }
        } catch (OutOfMemoryError unused) {
            throw new LuaError("too many results to unpack [out of memory]: " + i4);
        }
    }

    public static class LinkSlot implements StrongSlot {
        private Entry entry;
        private Slot next;

        public LinkSlot(Entry entry, Slot slot) {
            this.entry = entry;
            this.next = slot;
        }

        @Override // vm2.LuaTable.StrongSlot
        public LuaValue key() {
            return this.entry.key();
        }

        @Override // vm2.LuaTable.Slot
        public int keyindex(int i) {
            return this.entry.keyindex(i);
        }

        @Override // vm2.LuaTable.StrongSlot
        public LuaValue value() {
            return this.entry.value();
        }

        @Override // vm2.LuaTable.StrongSlot
        public Varargs toVarargs() {
            return this.entry.toVarargs();
        }

        @Override // vm2.LuaTable.Slot
        public StrongSlot first() {
            return this.entry;
        }

        @Override // vm2.LuaTable.Slot
        public StrongSlot find(LuaValue luaValue) {
            if (this.entry.keyeq(luaValue)) {
                return this;
            }
            return null;
        }

        @Override // vm2.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return this.entry.keyeq(luaValue);
        }

        @Override // vm2.LuaTable.Slot
        public Slot rest() {
            return this.next;
        }

        @Override // vm2.LuaTable.Slot
        public int arraykey(int i) {
            return this.entry.arraykey(i);
        }

        @Override // vm2.LuaTable.Slot
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            if (strongSlot == this) {
                this.entry = this.entry.set(luaValue);
                return this;
            }
            return setnext(this.next.set(strongSlot, luaValue));
        }

        @Override // vm2.LuaTable.Slot
        public Slot add(Slot slot) {
            return setnext(this.next.add(slot));
        }

        @Override // vm2.LuaTable.Slot
        public Slot remove(StrongSlot strongSlot) {
            if (this == strongSlot) {
                return new DeadSlot(key(), this.next);
            }
            this.next = this.next.remove(strongSlot);
            return this;
        }

        @Override // vm2.LuaTable.Slot
        public Slot relink(Slot slot) {
            return slot != null ? new LinkSlot(this.entry, slot) : this.entry;
        }

        private Slot setnext(Slot slot) {
            if (slot != null) {
                this.next = slot;
                return this;
            }
            return this.entry;
        }

        public String toString() {
            return this.entry + "; " + this.next;
        }
    }

    public static abstract class Entry extends Varargs implements StrongSlot {
        @Override // vm2.LuaTable.Slot
        public int arraykey(int i) {
            return 0;
        }

        @Override // vm2.LuaTable.Slot
        public StrongSlot first() {
            return this;
        }

        @Override // vm2.LuaTable.StrongSlot
        public abstract LuaValue key();

        @Override // vm2.LuaTable.Slot
        public abstract boolean keyeq(LuaValue luaValue);

        @Override // vm2.LuaTable.Slot
        public abstract int keyindex(int i);

        @Override // vm2.Varargs
        public int narg() {
            return 2;
        }

        @Override // vm2.LuaTable.Slot
        public Slot rest() {
            return null;
        }

        public abstract Entry set(LuaValue luaValue);

        @Override // vm2.LuaTable.StrongSlot
        public abstract LuaValue value();

        @Override // vm2.Varargs
        public LuaValue arg(int i) {
            if (i == 1) {
                return key();
            }
            if (i == 2) {
                return value();
            }
            return LuaValue.NIL;
        }

        @Override // vm2.LuaTable.StrongSlot
        public Varargs toVarargs() {
            return LuaValue.varargsOf(key(), value());
        }

        @Override // vm2.Varargs
        public LuaValue arg1() {
            return key();
        }

        @Override // vm2.Varargs
        public Varargs subargs(int i) {
            if (i == 1) {
                return this;
            }
            if (i == 2) {
                return value();
            }
            return LuaValue.NONE;
        }

        @Override // vm2.LuaTable.Slot
        public StrongSlot find(LuaValue luaValue) {
            if (keyeq(luaValue)) {
                return this;
            }
            return null;
        }

        @Override // vm2.LuaTable.Slot
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            return set(luaValue);
        }

        @Override // vm2.LuaTable.Slot
        public Slot add(Slot slot) {
            return new LinkSlot(this, slot);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vm2.LuaTable.Slot
        public Slot remove(StrongSlot strongSlot) {
            return new DeadSlot(key(), null);
        }

        @Override // vm2.LuaTable.Slot
        public Slot relink(Slot slot) {
            return slot != null ? new LinkSlot(this, slot) : this;
        }
    }

    public static class NormalEntry extends Entry {
        private final LuaValue key;
        private LuaValue value;

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.StrongSlot
        public Varargs toVarargs() {
            return this;
        }

        public NormalEntry(LuaValue luaValue, LuaValue luaValue2) {
            this.key = luaValue;
            this.value = luaValue2;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.StrongSlot
        public LuaValue key() {
            return this.key;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.StrongSlot
        public LuaValue value() {
            return this.value;
        }

        @Override // vm2.LuaTable.Entry
        public Entry set(LuaValue luaValue) {
            this.value = luaValue;
            return this;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashSlot(this.key, i);
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.key);
        }
    }

    public static class IntKeyEntry extends Entry {
        private final int key;
        private LuaValue value;

        public IntKeyEntry(int i, LuaValue luaValue) {
            this.key = i;
            this.value = luaValue;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.StrongSlot
        public LuaValue key() {
            return LuaValue.valueOf(this.key);
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.Slot
        public int arraykey(int i) {
            int i2 = this.key;
            if (i2 < 1 || i2 > i) {
                return 0;
            }
            return i2;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.StrongSlot
        public LuaValue value() {
            return this.value;
        }

        @Override // vm2.LuaTable.Entry
        public Entry set(LuaValue luaValue) {
            this.value = luaValue;
            return this;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashmod(LuaInteger.hashCode(this.key), i);
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.key);
        }
    }

    public static class NumberValueEntry extends Entry {
        private final LuaValue key;
        private double value;

        public NumberValueEntry(LuaValue luaValue, double d) {
            this.key = luaValue;
            this.value = d;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.StrongSlot
        public LuaValue key() {
            return this.key;
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.StrongSlot
        public LuaValue value() {
            return LuaValue.valueOf(this.value);
        }

        @Override // vm2.LuaTable.Entry
        public Entry set(LuaValue luaValue) {
            if (luaValue.type() == 4) {
                LuaValue luaValue2 = luaValue.tonumber();
                if (!luaValue2.isnil()) {
                    this.value = luaValue2.todouble();
                    return this;
                }
            }
            return new NormalEntry(this.key, luaValue);
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashSlot(this.key, i);
        }

        @Override // vm2.LuaTable.Entry, vm2.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.key);
        }
    }

    public static class DeadSlot implements Slot {
        private final Object key;
        private Slot next;

        @Override // vm2.LuaTable.Slot
        public int arraykey(int i) {
            return -1;
        }

        @Override // vm2.LuaTable.Slot
        public StrongSlot find(LuaValue luaValue) {
            return null;
        }

        @Override // vm2.LuaTable.Slot
        public StrongSlot first() {
            return null;
        }

        @Override // vm2.LuaTable.Slot
        public int keyindex(int i) {
            return 0;
        }

        @Override // vm2.LuaTable.Slot
        public Slot relink(Slot slot) {
            return slot;
        }

        private DeadSlot(LuaValue luaValue, Slot slot) {
            this.key = LuaTable.isLargeKey(luaValue) ? new WeakReference(luaValue) : luaValue;
            this.next = slot;
        }

        private LuaValue key() {
            Object obj = this.key;
            if (obj instanceof WeakReference) {
                obj = ((WeakReference) obj).get();
            }
            return (LuaValue) obj;
        }

        @Override // vm2.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            LuaValue luaValueKey = key();
            return luaValueKey != null && luaValue.raweq(luaValueKey);
        }

        @Override // vm2.LuaTable.Slot
        public Slot rest() {
            return this.next;
        }

        @Override // vm2.LuaTable.Slot
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            Slot slot = this.next;
            Slot slot2 = slot != null ? slot.set(strongSlot, luaValue) : null;
            if (key() == null) {
                return slot2;
            }
            this.next = slot2;
            return this;
        }

        @Override // vm2.LuaTable.Slot
        public Slot add(Slot slot) {
            Slot slot2 = this.next;
            return slot2 != null ? slot2.add(slot) : slot;
        }

        @Override // vm2.LuaTable.Slot
        public Slot remove(StrongSlot strongSlot) {
            if (key() != null) {
                this.next = this.next.remove(strongSlot);
                return this;
            }
            return this.next;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<dead");
            LuaValue luaValueKey = key();
            if (luaValueKey != null) {
                stringBuffer.append(": ");
                stringBuffer.append(luaValueKey.toString());
            }
            stringBuffer.append('>');
            if (this.next != null) {
                stringBuffer.append("; ");
                stringBuffer.append(this.next.toString());
            }
            return stringBuffer.toString();
        }
    }

    @Override // vm2.Metatable
    public LuaValue arrayget(LuaValue[] luaValueArr, int i) {
        return luaValueArr[i];
    }
}
