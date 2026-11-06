package io.blueflower.stapel2d.gamestack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Stage {
    public GameStack stack;

    public abstract void enter();

    public void enterApp() {
    }

    public abstract void leave();

    public void leaveApp() {
    }

    public abstract void prepare();

    public abstract void update();

    public void bind(GameStack gameStack) {
        this.stack = gameStack;
    }

    public boolean isBound() {
        return this.stack != null;
    }

    public GameStack getGameStack() {
        return this.stack;
    }

    public void drop() {
        this.stack = null;
    }

    public String getName() {
        String string = toString();
        return string == null ? "unknown" : string;
    }
}
