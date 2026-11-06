package io.bidmachine;

import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.protobuf.sdk.Device;
import io.bidmachine.utils.DeviceUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceConnectionParams {
    private final Context.Device.Connection buildConnection(android.content.Context context, ConnectionType connectionType) {
        Context.Device.Connection connectionBuild = Context.Device.Connection.newBuilder().setType(connectionType).setVpn(DeviceUtils.getVpnStatus(context)).setProxy(DeviceUtils.getProxyStatus(context)).build();
        Intrinsics.checkNotNullExpressionValue(connectionBuild, "newBuilder()\n           …xt))\n            .build()");
        return connectionBuild;
    }

    public final void build(android.content.Context context, Context.Device.Builder deviceBuilder, ConnectionType connectionType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceBuilder, "deviceBuilder");
        Intrinsics.checkNotNullParameter(connectionType, "connectionType");
        deviceBuilder.setConnection(buildConnection(context, connectionType));
    }

    public final void build(android.content.Context context, Device.Builder deviceBuilder, ConnectionType connectionType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceBuilder, "deviceBuilder");
        Intrinsics.checkNotNullParameter(connectionType, "connectionType");
        deviceBuilder.setConnection(buildConnection(context, connectionType));
    }
}
