package io.bidmachine.ads.networks.adaptiverendering;

import com.explorestack.protobuf.InvalidProtocolBufferException;
import io.bidmachine.internal.AbstractC4224h;
import io.bidmachine.protobuf.rendering.RenderingTaskPermission;
import io.bidmachine.rendering.model.EventTaskBucketParams;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.utils.NetworkRequestBuilder;
import io.bidmachine.util.network.ByteResponseProcessor;
import io.bidmachine.util.network.Method;
import io.bidmachine.util.network.NetworkError;
import io.bidmachine.util.network.NetworkRequest;
import io.bidmachine.util.network.ProtoRequestProcessor;
import io.bidmachine.util.network.ResponseProcessor;
import java.net.URLConnection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingNetworkRequestBuilder implements NetworkRequestBuilder {

    public static final class a implements NetworkRequest.Listener {
        public final Function1 a;

        public a(Function1 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.a = callback;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
        @Override // io.bidmachine.util.network.NetworkRequest.Listener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onSuccess(io.bidmachine.protobuf.rendering.RenderingTaskPermission r2) {
            /*
                r1 = this;
                if (r2 == 0) goto L13
                io.bidmachine.protobuf.rendering.RenderingTaskPermission$Response r2 = r2.getResponse()     // Catch: java.lang.Throwable -> L13
                if (r2 == 0) goto L13
                java.util.List r2 = r2.getTaskBucketsList()     // Catch: java.lang.Throwable -> L13
                if (r2 == 0) goto L13
                java.util.List r2 = io.bidmachine.internal.AbstractC4224h.b(r2)     // Catch: java.lang.Throwable -> L13
                goto L14
            L13:
                r2 = 0
            L14:
                kotlin.jvm.functions.Function1 r0 = r1.a
                r0.invoke(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder.a.onSuccess(io.bidmachine.protobuf.rendering.RenderingTaskPermission):void");
        }

        @Override // io.bidmachine.util.network.NetworkRequest.Listener
        public void onError(NetworkError networkError) {
            Intrinsics.checkNotNullParameter(networkError, "networkError");
            this.a.invoke(null);
        }
    }

    public static final class b implements ProtoRequestProcessor {
        public final EventType a;
        public final String b;
        public final String c;
        public final List d;

        public b(EventType eventType, String sourceName, String str, List eventTaskBucketParamsList) {
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            Intrinsics.checkNotNullParameter(sourceName, "sourceName");
            Intrinsics.checkNotNullParameter(eventTaskBucketParamsList, "eventTaskBucketParamsList");
            this.a = eventType;
            this.b = sourceName;
            this.c = str;
            this.d = eventTaskBucketParamsList;
        }

        @Override // io.bidmachine.util.network.RequestProcessor
        public byte[] getBody() {
            RenderingTaskPermission.Request.Builder builderAddAllTaskBuckets = RenderingTaskPermission.Request.newBuilder().setEventName(AbstractC4224h.a(this.a)).setEventSource(this.b).addAllTaskBuckets(AbstractC4224h.a(this.d));
            Intrinsics.checkNotNullExpressionValue(builderAddAllTaskBuckets, "newBuilder()\n           …pToEventTaskBucketList())");
            String str = this.c;
            if (str != null) {
                builderAddAllTaskBuckets.setEventValue(str);
            }
            return RenderingTaskPermission.newBuilder().setRequest(builderAddAllTaskBuckets).build().toByteArray();
        }
    }

    public static final class c implements ResponseProcessor {
        public final ByteResponseProcessor a = new ByteResponseProcessor();

        @Override // io.bidmachine.util.network.ResponseProcessor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RenderingTaskPermission process(URLConnection urlConnection) throws InvalidProtocolBufferException {
            Intrinsics.checkNotNullParameter(urlConnection, "urlConnection");
            RenderingTaskPermission from = RenderingTaskPermission.parseFrom(this.a.process(urlConnection));
            Intrinsics.checkNotNullExpressionValue(from, "parseFrom(byteResponsePr…r.process(urlConnection))");
            return from;
        }
    }

    @Override // io.bidmachine.rendering.utils.NetworkRequestBuilder
    public NetworkRequest<?> createRequestPermissionRequest(String sourceName, EventType eventType, String str, List<EventTaskBucketParams> eventTaskBucketParamsList, String url, Function1<? super List<EventTaskBucketParams>, Unit> callback) {
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventTaskBucketParamsList, "eventTaskBucketParamsList");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return new NetworkRequest.Builder(url, Method.Post).setRequestProcessor(new b(eventType, sourceName, str, eventTaskBucketParamsList)).setResponseProcessor(new c()).setListener(new a(callback)).build();
    }
}
