###### Class io.bidmachine.models.AdObjectParamsKt (io.bidmachine.models.AdObjectParamsKt)
.class public final Lio/bidmachine/models/AdObjectParamsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final classifyCreativeProfile(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAttrList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_USER_INTERACTIVE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    .line 3
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 4
    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->BID_ATTR_13:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 5
    invoke-direct {p0, v0, v1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;-><init>(Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;)V

    return-object p0

    .line 11
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 12
    sget-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->INSTANCE:Lio/bidmachine/rendering/utils/CreativeProfileClassifier;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object p0

    const-string v1, "display.adm"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->classifyByMarkup(Ljava/lang/String;)Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object p0

    return-object p0

    .line 16
    :cond_3f
    sget-object p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->Companion:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;->getDEFAULT_CREATIVE_PROFILE_INFO()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object p0

    return-object p0
.end method
