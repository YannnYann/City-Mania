package io.blueflower.stapel2d.key;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.utils.TimeUtils;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes5.dex */
public final class KeyMapper {
    public int actualActiveKeys;
    public boolean hasTypedChar;
    public char typedChar;
    public final int REPEATEDKEY_FIRST_DELAY_MS = 400;
    public final int REPEATEDKEY_DELAY_MS = 40;
    public IntList changeList = new IntList(4);
    public IntList keyHit = new IntList();
    public IntList ghostKeyHit = new IntList();
    public IntList keyRelease = new IntList();
    public IntList ghostKeyRelease = new IntList();
    public IntList repeatedKeyHit = new IntList();
    public IntList typedChars = new IntList();
    public InputProcessor processor = new InputProcessor() { // from class: io.blueflower.stapel2d.key.KeyMapper.1
        public int action;
        public int keyCode;
        public KeyEvent keyEvent = new KeyEvent() { // from class: io.blueflower.stapel2d.key.KeyMapper.1.1
            @Override // io.blueflower.stapel2d.key.KeyMapper.KeyEvent
            public int getKeyCode() {
                return AnonymousClass1.this.keyCode;
            }

            @Override // io.blueflower.stapel2d.key.KeyMapper.KeyEvent
            public int getAction() {
                return AnonymousClass1.this.action;
            }
        };

        @Override // com.badlogic.gdx.InputProcessor
        public boolean mouseMoved(int i, int i2) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean scrolled(float f, float f2) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchCancelled(int i, int i2, int i3, int i4) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchDown(int i, int i2, int i3, int i4) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyDown(int i) {
            this.keyCode = i;
            this.action = 1;
            KeyMapper.this.map(this.keyEvent);
            if (i == 4 && Gdx.app.getType() == Application.ApplicationType.Android) {
                this.action = 0;
                KeyMapper.this.map(this.keyEvent);
            }
            return true;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyUp(int i) {
            this.keyCode = i;
            this.action = 0;
            KeyMapper.this.map(this.keyEvent);
            return true;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyTyped(char c) {
            KeyMapper.this.typedChars.add(c);
            return true;
        }
    };
    public int keyCount = 256;
    public boolean[] keyDown = new boolean[256];
    public boolean[] ghostKeyDown = new boolean[256];
    public long[] keyDownStart = new long[256];

    public interface KeyEvent {
        int getAction();

        int getKeyCode();
    }

    public synchronized void map(KeyEvent keyEvent) {
        try {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode >= 0 && keyCode < this.keyCount) {
                this.changeList.add(keyCode);
                int action = keyEvent.getAction();
                if (action == 0) {
                    boolean[] zArr = this.keyDown;
                    if (zArr[keyCode]) {
                        zArr[keyCode] = false;
                        this.keyRelease.add(keyCode);
                        this.actualActiveKeys--;
                    }
                } else if (action == 1) {
                    boolean[] zArr2 = this.keyDown;
                    if (!zArr2[keyCode]) {
                        zArr2[keyCode] = true;
                        this.keyDownStart[keyCode] = TimeUtils.millis() + 400;
                        this.keyHit.add(keyCode);
                        this.actualActiveKeys++;
                    }
                }
            }
        } finally {
        }
    }

    public synchronized void update() {
        try {
            long jMillis = TimeUtils.millis();
            this.repeatedKeyHit.clear();
            for (int i = 0; i < this.changeList.size(); i++) {
                int i2 = this.changeList.get(i);
                boolean[] zArr = this.ghostKeyDown;
                boolean z = this.keyDown[i2];
                zArr[i2] = z;
                if (z) {
                    long[] jArr = this.keyDownStart;
                    if (jArr[i2] < jMillis) {
                        jArr[i2] = 40 + jMillis;
                        this.repeatedKeyHit.add(i2);
                    }
                }
            }
            IntList intList = this.keyHit;
            IntList intList2 = this.ghostKeyHit;
            this.keyHit = intList2;
            this.ghostKeyHit = intList;
            intList2.clear();
            IntList intList3 = this.keyRelease;
            IntList intList4 = this.ghostKeyRelease;
            this.keyRelease = intList4;
            this.ghostKeyRelease = intList3;
            intList4.clear();
            if (!this.typedChars.isEmpty()) {
                this.typedChar = (char) this.typedChars.removeAt(0);
                this.hasTypedChar = true;
            } else {
                this.hasTypedChar = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public char getTypedChar() {
        this.hasTypedChar = false;
        return this.typedChar;
    }

    public boolean hasTypedChar() {
        return this.hasTypedChar;
    }

    public int getActualActiveKeys() {
        return this.actualActiveKeys;
    }

    public synchronized boolean keyRepeatedHit(int i) {
        if (i <= 0) {
            return false;
        }
        return keyHit(i) | this.repeatedKeyHit.removeValue(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized int getActiveModifier() {
        /*
            r2 = this;
            monitor-enter(r2)
            r0 = 129(0x81, float:1.81E-43)
            boolean r0 = r2.keyDown(r0)     // Catch: java.lang.Throwable -> L14
            if (r0 != 0) goto L16
            r0 = 130(0x82, float:1.82E-43)
            boolean r0 = r2.keyDown(r0)     // Catch: java.lang.Throwable -> L14
            if (r0 == 0) goto L12
            goto L16
        L12:
            r0 = 0
            goto L17
        L14:
            r0 = move-exception
            goto L3d
        L16:
            r0 = 1
        L17:
            r1 = 59
            boolean r1 = r2.keyDown(r1)     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L27
            r1 = 60
            boolean r1 = r2.keyDown(r1)     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L29
        L27:
            r0 = r0 | 2
        L29:
            r1 = 57
            boolean r1 = r2.keyDown(r1)     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L39
            r1 = 58
            boolean r1 = r2.keyDown(r1)     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L3b
        L39:
            r0 = r0 | 4
        L3b:
            monitor-exit(r2)
            return r0
        L3d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.key.KeyMapper.getActiveModifier():int");
    }

    public synchronized boolean keyHit(int i) {
        if (i <= 0) {
            return false;
        }
        this.repeatedKeyHit.removeValue(i);
        return this.ghostKeyHit.removeValue(i);
    }

    public synchronized boolean keyHit(int i, int i2) {
        if (i <= 0) {
            return false;
        }
        if (getActiveModifier() != i2) {
            return false;
        }
        this.repeatedKeyHit.removeValue(i);
        return this.ghostKeyHit.removeValue(i);
    }

    public boolean shiftDown() {
        return keyDown(59) || keyDown(60);
    }

    public synchronized boolean keyDown(int i) {
        if (i <= 0) {
            return false;
        }
        return this.ghostKeyDown[i];
    }

    public synchronized boolean keyDown(int i, int i2) {
        boolean z = false;
        if (i <= 0) {
            return false;
        }
        if (getActiveModifier() == i2) {
            if (keyDown(i)) {
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean keyReleased(int i) {
        if (i <= 0) {
            return false;
        }
        return this.ghostKeyRelease.removeValue(i);
    }

    public synchronized void flush() {
        for (int i = 0; i < this.keyCount; i++) {
            try {
                this.keyDown[i] = false;
                this.ghostKeyDown[i] = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.changeList.clear();
        this.keyHit.clear();
        this.ghostKeyHit.clear();
        this.keyRelease.clear();
        this.ghostKeyRelease.clear();
    }

    public synchronized void filteredFlush(int[] iArr) {
        int i = 0;
        while (i < this.keyCount) {
            try {
                boolean z = false;
                for (int i2 = 0; i2 < iArr.length && !z; i2++) {
                    z = i == iArr[i2];
                }
                if (!z) {
                    keyHit(i);
                    keyReleased(i);
                    this.ghostKeyDown[i] = false;
                }
                i++;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
