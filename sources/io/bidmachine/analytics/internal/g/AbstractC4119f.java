package io.bidmachine.analytics.internal.g;

import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.g.C4118e;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC4119f {
    public static final C4118e.a a(ReaderConfig.Rule rule) {
        if (rule instanceof ReaderConfig.Rule.GeneralRule) {
            ReaderConfig.Rule.GeneralRule generalRule = (ReaderConfig.Rule.GeneralRule) rule;
            return new C4118e.a.C1122a(generalRule.getTag(), generalRule.getPath());
        }
        if (!(rule instanceof ReaderConfig.Rule.PurRule)) {
            throw new NoWhenBranchMatchedException();
        }
        ReaderConfig.Rule.PurRule purRule = (ReaderConfig.Rule.PurRule) rule;
        return new C4118e.a.b(purRule.getTag(), purRule.getPath(), purRule.getQuery(), purRule.getShouldReport());
    }
}
