package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public final class Tuple<A, B> implements Cloneable {
    public A first;
    public B second;

    public Tuple(A a, B b) {
        this.first = a;
        this.second = b;
    }

    public Tuple(Tuple<A, B> tuple) {
        this(tuple.getFirst(), tuple.getSecond());
    }

    public A getFirst() {
        return this.first;
    }

    public B getSecond() {
        return this.second;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Tuple<A, B> m2758clone() {
        return new Tuple<>(this);
    }

    public String toString() {
        return "(" + getFirst() + ", " + getSecond() + ")";
    }
}
