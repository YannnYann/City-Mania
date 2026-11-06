package info.flowersoft.theotown.crossplatform;

import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;

/* JADX INFO: loaded from: classes4.dex */
public interface SocialManager {

    public interface State {
        String getType();
    }

    public interface StateListener {
    }

    void dispose();

    State getState();

    boolean isAvailable();

    void registerStateListener(StateListener stateListener);

    void setup();

    void showConnectionDialog(Stapel2DGameContext stapel2DGameContext);
}
