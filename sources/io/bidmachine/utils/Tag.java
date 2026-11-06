package io.bidmachine.utils;

/* JADX INFO: loaded from: classes5.dex */
public class Tag {
    public final String name;
    public String tag;

    public Tag(String str) {
        this.name = str;
    }

    public String toString() {
        if (this.tag == null) {
            this.tag = this.name + " @" + Integer.toHexString(hashCode());
        }
        return this.tag;
    }
}
