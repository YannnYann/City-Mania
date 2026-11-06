package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ViewabilityConfigurationOrBuilder extends MessageOrBuilder {
    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo687getDefaultInstanceForType();

    ViewabilityRule getRules(int i);

    int getRulesCount();

    List<ViewabilityRule> getRulesList();

    ViewabilityRuleOrBuilder getRulesOrBuilder(int i);

    List<? extends ViewabilityRuleOrBuilder> getRulesOrBuilderList();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
