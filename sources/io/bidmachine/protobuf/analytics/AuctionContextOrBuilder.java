package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.ContextOrBuilder;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementOrBuilder;
import com.explorestack.protobuf.openrtb.Request;

/* JADX INFO: loaded from: classes5.dex */
public interface AuctionContextOrBuilder extends MessageOrBuilder {
    int getAt();

    Context getContext();

    ContextOrBuilder getContextOrBuilder();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo687getDefaultInstanceForType();

    String getId();

    ByteString getIdBytes();

    Request.Item getItem();

    Request.ItemOrBuilder getItemOrBuilder();

    Placement getPlacement();

    PlacementOrBuilder getPlacementOrBuilder();

    PlacementTag getPlacementTag();

    int getPlacementTagValue();

    boolean getTest();

    String getTimestamp();

    ByteString getTimestampBytes();

    boolean hasContext();

    boolean hasItem();

    boolean hasPlacement();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
