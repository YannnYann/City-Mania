package ads_mobile_sdk;

import android.os.Bundle;
import android.view.View;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface p12 {
    View a();

    void a(View view);

    void a(View view, Map map, Map map2);

    void b(View view);

    boolean b();

    View c();

    boolean d();

    void destroy();

    float e();

    ArrayList f();

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    boolean getHasVideoContent();

    String getHeadline();

    s91 getIcon();

    String getPrice();

    String getStore();

    void recordImpression();
}
