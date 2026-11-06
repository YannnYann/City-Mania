package com.badlogic.gdx.utils;

/* JADX INFO: loaded from: classes.dex */
public abstract class Pool<T> {
    public final Array<T> freeObjects;
    public final int max;
    public int peak;

    public interface Poolable {
        void reset();
    }

    public abstract T newObject();

    public Pool(int i, int i2) {
        this.freeObjects = new Array<>(false, i);
        this.max = i2;
    }

    public T obtain() {
        Array<T> array = this.freeObjects;
        return array.size == 0 ? newObject() : array.pop();
    }

    public void free(T t) {
        if (t == null) {
            throw new IllegalArgumentException("object cannot be null.");
        }
        Array<T> array = this.freeObjects;
        if (array.size < this.max) {
            array.add(t);
            this.peak = Math.max(this.peak, this.freeObjects.size);
            reset(t);
            return;
        }
        discard(t);
    }

    public void reset(T t) {
        if (t instanceof Poolable) {
            ((Poolable) t).reset();
        }
    }

    public void discard(T t) {
        reset(t);
    }
}
