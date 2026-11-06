###### Class io.bidmachine.protobuf.sdk.ViewabilityConfigurationOrBuilder (io.bidmachine.protobuf.sdk.ViewabilityConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "ViewabilityConfigurationOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getRules(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
.end method

.method public abstract getRulesCount()I
.end method

.method public abstract getRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRulesOrBuilder(I)Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;
.end method

.method public abstract getRulesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
