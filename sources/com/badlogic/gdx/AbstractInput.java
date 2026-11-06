package com.badlogic.gdx;

import com.badlogic.gdx.utils.IntSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractInput implements Input {
    public boolean keyJustPressed;
    public int pressedKeyCount;
    public final IntSet keysToCatch = new IntSet();
    public final boolean[] pressedKeys = new boolean[256];
    public final boolean[] justPressedKeys = new boolean[256];

    @Override // com.badlogic.gdx.Input
    public boolean isKeyPressed(int i) {
        if (i == -1) {
            return this.pressedKeyCount > 0;
        }
        if (i < 0 || i > 255) {
            return false;
        }
        return this.pressedKeys[i];
    }

    @Override // com.badlogic.gdx.Input
    public void setCatchKey(int i, boolean z) {
        if (!z) {
            this.keysToCatch.remove(i);
        } else {
            this.keysToCatch.add(i);
        }
    }

    public boolean isCatchKey(int i) {
        return this.keysToCatch.contains(i);
    }
}
