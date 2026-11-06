package io.bidmachine.util.network;

import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.net.URLConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProtoRequestProcessor.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ProtoRequestProcessor extends RequestProcessor {
    @Override // io.bidmachine.util.network.RequestProcessor
    default void setupConnection(URLConnection urlConnection) {
        Intrinsics.checkNotNullParameter(urlConnection, "urlConnection");
        urlConnection.setRequestProperty("Content-Type", CommonGatewayClient.HEADER_PROTOBUF);
    }
}
