###### Class com.unity3d.ads.core.data.repository.CampaignRepository (com.unity3d.ads.core.data.repository.CampaignRepository)
.class public interface abstract Lcom/unity3d/ads/core/data/repository/CampaignRepository;
.super Ljava/lang/Object;
.source "CampaignRepository.kt"


# virtual methods
.method public abstract getCampaign(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;
.end method

.method public abstract getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
.end method

.method public abstract removeState(Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract setCampaign(Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V
.end method

.method public abstract setLoadTimestamp(Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract setShowTimestamp(Lcom/google/protobuf/ByteString;)V
.end method
