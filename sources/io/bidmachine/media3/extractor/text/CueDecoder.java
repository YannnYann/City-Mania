package io.bidmachine.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import com.google.common.base.Function;
import io.bidmachine.media3.common.text.Cue;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.BundleCollectionUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class CueDecoder {
    public CuesWithTiming decode(long j, byte[] bArr, int i, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, i, i2);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return new CuesWithTiming(BundleCollectionUtil.fromBundleList(new Function() { // from class: io.bidmachine.media3.extractor.text.CueDecoder$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Cue.fromBundle((Bundle) obj);
            }
        }, (ArrayList) Assertions.checkNotNull(bundle.getParcelableArrayList("c"))), j, bundle.getLong("d"));
    }
}
