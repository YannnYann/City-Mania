package com.badlogic.gdx.pay;

/* JADX INFO: loaded from: classes.dex */
public class FetchItemInformationException extends GdxPayException {
    public FetchItemInformationException(String str) {
        super("Failed to fetch item list - check your connection (" + str + ")");
    }
}
