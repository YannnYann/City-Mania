package info.flowersoft.theotown.util;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class SortedList<E> extends ArrayList<E> {
    public final Interpreter<E> interpreter;

    public interface Interpreter<E> {
        int interprete(E e);
    }

    public SortedList(Interpreter<E> interpreter) {
        this.interpreter = interpreter;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        if (e == null) {
            throw new IllegalArgumentException("May not add null");
        }
        add(getIndexOfValue(this.interpreter.interprete(e)), e);
        return true;
    }

    public int getIndexOfValue(int i) {
        int size = size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = (i2 + size) / 2;
            E e = get(i3);
            if (e == null) {
                size = size();
            } else {
                int iInterprete = this.interpreter.interprete(e);
                if (iInterprete > i) {
                    size = i3;
                } else if (iInterprete < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3;
                    i2 = size;
                }
            }
        }
        return i2;
    }

    public int getValue(E e) {
        return this.interpreter.interprete(e);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        E e;
        if (obj != null && !isEmpty()) {
            int iInterprete = this.interpreter.interprete(obj);
            int indexOfValue = getIndexOfValue(iInterprete);
            for (int i = indexOfValue - 1; i >= 0; i--) {
                E e2 = get(i);
                if (e2 == null || this.interpreter.interprete(e2) != iInterprete) {
                    break;
                }
                if (obj.equals(e2)) {
                    return i;
                }
            }
            while (indexOfValue < size() && (e = get(indexOfValue)) != null && this.interpreter.interprete(e) == iInterprete) {
                if (obj.equals(e)) {
                    return indexOfValue;
                }
                indexOfValue++;
            }
        }
        return -1;
    }

    public boolean absoluteContains(Object obj) {
        return absoluteIndexOf(obj) >= 0;
    }

    public boolean absoluteRemove(Object obj) {
        int iAbsoluteIndexOf = absoluteIndexOf(obj);
        if (iAbsoluteIndexOf < 0) {
            return false;
        }
        remove(iAbsoluteIndexOf);
        return true;
    }

    public int absoluteIndexOf(Object obj) {
        if (obj != null && !isEmpty()) {
            for (int i = 0; i < size(); i++) {
                if (get(i).equals(obj)) {
                    return i;
                }
            }
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public E get(int i) {
        try {
            return (E) super.get(i);
        } catch (Exception unused) {
            return null;
        }
    }
}
