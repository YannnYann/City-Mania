package ads_mobile_sdk;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
public final class v93 {
    public static final v93 d;
    public final boolean a;
    public final ImmutableList b;
    public final ImmutableList c;

    static {
        ImmutableList.Builder builder = ImmutableList.builder();
        ImmutableList.Builder builder2 = ImmutableList.builder();
        Preconditions.checkState(true, "A SourcePolicy can only set internal() or external() once.");
        Boolean bool = Boolean.FALSE;
        Preconditions.checkNotNull(bool, "Must call internal() or external() when building a SourcePolicy.");
        d = new v93(false, builder.build(), builder2.build());
        ImmutableList.Builder builder3 = ImmutableList.builder();
        ImmutableList.Builder builder4 = ImmutableList.builder();
        Preconditions.checkState(true, "A SourcePolicy can only set internal() or external() once.");
        u93 u93Var = new u93();
        Preconditions.checkNotNull(bool, "Must call internal() or external() before appending rules.");
        builder3.add(u93Var);
        Preconditions.checkNotNull(bool, "Must call internal() or external() when building a SourcePolicy.");
        builder3.build();
        builder4.build();
        ImmutableList.Builder builder5 = ImmutableList.builder();
        ImmutableList.Builder builder6 = ImmutableList.builder();
        Preconditions.checkState(true, "A SourcePolicy can only set internal() or external() once.");
        Preconditions.checkNotNull(Boolean.TRUE, "Must call internal() or external() when building a SourcePolicy.");
        builder5.build();
        builder6.build();
    }

    public v93(boolean z, ImmutableList immutableList, ImmutableList immutableList2) {
        this.a = z;
        this.b = immutableList;
        this.c = immutableList2;
    }
}
