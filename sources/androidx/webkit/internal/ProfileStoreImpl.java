package androidx.webkit.internal;

import androidx.webkit.Profile;
import androidx.webkit.ProfileStore;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.ProfileStoreBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* JADX INFO: loaded from: classes.dex */
public class ProfileStoreImpl implements ProfileStore {
    public static ProfileStore sInstance;
    public final ProfileStoreBoundaryInterface mProfileStoreImpl;

    public ProfileStoreImpl(ProfileStoreBoundaryInterface profileStoreBoundaryInterface) {
        this.mProfileStoreImpl = profileStoreBoundaryInterface;
    }

    public static ProfileStore getInstance() {
        if (sInstance == null) {
            sInstance = new ProfileStoreImpl(WebViewGlueCommunicator.getFactory().getProfileStore());
        }
        return sInstance;
    }

    @Override // androidx.webkit.ProfileStore
    public Profile getOrCreateProfile(String str) {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return new ProfileImpl((ProfileBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(ProfileBoundaryInterface.class, this.mProfileStoreImpl.getOrCreateProfile(str)));
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }
}
