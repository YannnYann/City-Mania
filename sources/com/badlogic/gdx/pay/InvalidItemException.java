package com.badlogic.gdx.pay;

/* JADX INFO: loaded from: classes.dex */
public class InvalidItemException extends GdxPayException {
    public InvalidItemException() {
        this("");
    }

    public InvalidItemException(String str) {
        super("Purchase failed, invalid product identifier " + str);
    }
}
