package com.google.protobuf;

import com.google.protobuf.Mixin;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MixinKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class MixinKt {
    public static final MixinKt INSTANCE = new MixinKt();

    /* JADX INFO: compiled from: MixinKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final Mixin.Builder _builder;

        public /* synthetic */ Dsl(Mixin.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(Mixin.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: MixinKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Mixin.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ Mixin _build() {
            Mixin mixinBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(mixinBuild, "_builder.build()");
            return mixinBuild;
        }

        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "_builder.getName()");
            return name;
        }

        public final void setName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final String getRoot() {
            String root = this._builder.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "_builder.getRoot()");
            return root;
        }

        public final void setRoot(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setRoot(value);
        }

        public final void clearRoot() {
            this._builder.clearRoot();
        }
    }

    private MixinKt() {
    }
}
