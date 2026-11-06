package info.flowersoft.theotown.android;

import com.badlogic.gdx.backends.android.AndroidApplication;
import info.flowersoft.theotown.crossplatform.SocialManager;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidSocialManager implements SocialManager {
    public final List<SocialManager.StateListener> stateListeners = new ArrayList();

    @Override // info.flowersoft.theotown.crossplatform.SocialManager
    public boolean isAvailable() {
        return false;
    }

    @Override // info.flowersoft.theotown.crossplatform.SocialManager
    public void setup() {
    }

    @Override // info.flowersoft.theotown.crossplatform.SocialManager
    public void showConnectionDialog(Stapel2DGameContext stapel2DGameContext) {
    }

    public AndroidSocialManager(AndroidApplication androidApplication) {
    }

    @Override // info.flowersoft.theotown.crossplatform.SocialManager
    public void dispose() {
        this.stateListeners.clear();
    }

    @Override // info.flowersoft.theotown.crossplatform.SocialManager
    public SocialManager.State getState() {
        return new SocialManager.State() { // from class: info.flowersoft.theotown.android.AndroidSocialManager.1
            @Override // info.flowersoft.theotown.crossplatform.SocialManager.State
            public String getType() {
                return "fb";
            }
        };
    }

    @Override // info.flowersoft.theotown.crossplatform.SocialManager
    public void registerStateListener(SocialManager.StateListener stateListener) {
        this.stateListeners.add(stateListener);
    }
}
