package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class OverlapMetric extends GeneratedMessageV3 implements OverlapMetricOrBuilder {
    public static final int MAX_OVERLAP_PERCENTAGE_FIELD_NUMBER = 2;
    public static final int SCOPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private double maxOverlapPercentage_;
    private byte memoizedIsInitialized;
    private int scope_;
    private static final OverlapMetric DEFAULT_INSTANCE = new OverlapMetric();
    private static final Parser<OverlapMetric> PARSER = new AbstractParser<OverlapMetric>() { // from class: io.bidmachine.protobuf.sdk.OverlapMetric.1
        @Override // com.explorestack.protobuf.Parser
        public OverlapMetric parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new OverlapMetric(codedInputStream, extensionRegistryLite);
        }
    };

    private OverlapMetric(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private OverlapMetric() {
        this.memoizedIsInitialized = (byte) -1;
        this.scope_ = 0;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new OverlapMetric();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private OverlapMetric(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 8) {
                            this.scope_ = codedInputStream.readEnum();
                        } else if (tag == 17) {
                            this.maxOverlapPercentage_ = codedInputStream.readDouble();
                        } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_fieldAccessorTable.ensureFieldAccessorsInitialized(OverlapMetric.class, Builder.class);
    }

    public enum OverlapScope implements Internal.EnumLite {
        VIEW_SIBLINGS(0),
        ALL_VIEWS(1),
        WINDOWS(2),
        UNRECOGNIZED(-1);

        public static final int ALL_VIEWS_VALUE = 1;
        public static final int VIEW_SIBLINGS_VALUE = 0;
        public static final int WINDOWS_VALUE = 2;
        private final int value;
        private static final Internal.EnumLiteMap<OverlapScope> internalValueMap = new Internal.EnumLiteMap<OverlapScope>() { // from class: io.bidmachine.protobuf.sdk.OverlapMetric.OverlapScope.1
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public OverlapScope findValueByNumber(int i) {
                return OverlapScope.forNumber(i);
            }
        };
        private static final OverlapScope[] VALUES = values();

        @Override // com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static OverlapScope valueOf(int i) {
            return forNumber(i);
        }

        public static OverlapScope forNumber(int i) {
            if (i == 0) {
                return VIEW_SIBLINGS;
            }
            if (i == 1) {
                return ALL_VIEWS;
            }
            if (i != 2) {
                return null;
            }
            return WINDOWS;
        }

        public static Internal.EnumLiteMap<OverlapScope> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this == UNRECOGNIZED) {
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }
            return getDescriptor().getValues().get(ordinal());
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return OverlapMetric.getDescriptor().getEnumTypes().get(0);
        }

        public static OverlapScope valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        OverlapScope(int i) {
            this.value = i;
        }
    }

    @Override // io.bidmachine.protobuf.sdk.OverlapMetricOrBuilder
    public int getScopeValue() {
        return this.scope_;
    }

    @Override // io.bidmachine.protobuf.sdk.OverlapMetricOrBuilder
    public OverlapScope getScope() {
        OverlapScope overlapScopeValueOf = OverlapScope.valueOf(this.scope_);
        return overlapScopeValueOf == null ? OverlapScope.UNRECOGNIZED : overlapScopeValueOf;
    }

    @Override // io.bidmachine.protobuf.sdk.OverlapMetricOrBuilder
    public double getMaxOverlapPercentage() {
        return this.maxOverlapPercentage_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.scope_ != OverlapScope.VIEW_SIBLINGS.getNumber()) {
            codedOutputStream.writeEnum(1, this.scope_);
        }
        double d = this.maxOverlapPercentage_;
        if (d != 0.0d) {
            codedOutputStream.writeDouble(2, d);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeEnumSize = this.scope_ != OverlapScope.VIEW_SIBLINGS.getNumber() ? CodedOutputStream.computeEnumSize(1, this.scope_) : 0;
        double d = this.maxOverlapPercentage_;
        if (d != 0.0d) {
            iComputeEnumSize += CodedOutputStream.computeDoubleSize(2, d);
        }
        int serializedSize = iComputeEnumSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OverlapMetric)) {
            return super.equals(obj);
        }
        OverlapMetric overlapMetric = (OverlapMetric) obj;
        return this.scope_ == overlapMetric.scope_ && Double.doubleToLongBits(getMaxOverlapPercentage()) == Double.doubleToLongBits(overlapMetric.getMaxOverlapPercentage()) && this.unknownFields.equals(overlapMetric.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.scope_) * 37) + 2) * 53) + Internal.hashLong(Double.doubleToLongBits(getMaxOverlapPercentage()))) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    public static OverlapMetric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static OverlapMetric parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static OverlapMetric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static OverlapMetric parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static OverlapMetric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static OverlapMetric parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static OverlapMetric parseFrom(InputStream inputStream) throws IOException {
        return (OverlapMetric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static OverlapMetric parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (OverlapMetric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static OverlapMetric parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (OverlapMetric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static OverlapMetric parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (OverlapMetric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static OverlapMetric parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (OverlapMetric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static OverlapMetric parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (OverlapMetric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(OverlapMetric overlapMetric) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(overlapMetric);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements OverlapMetricOrBuilder {
        private double maxOverlapPercentage_;
        private int scope_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_fieldAccessorTable.ensureFieldAccessorsInitialized(OverlapMetric.class, Builder.class);
        }

        private Builder() {
            this.scope_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.scope_ = 0;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.scope_ = 0;
            this.maxOverlapPercentage_ = 0.0d;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public OverlapMetric mo687getDefaultInstanceForType() {
            return OverlapMetric.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public OverlapMetric build() {
            OverlapMetric overlapMetricBuildPartial = buildPartial();
            if (overlapMetricBuildPartial.isInitialized()) {
                return overlapMetricBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) overlapMetricBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public OverlapMetric buildPartial() {
            OverlapMetric overlapMetric = new OverlapMetric(this);
            overlapMetric.scope_ = this.scope_;
            overlapMetric.maxOverlapPercentage_ = this.maxOverlapPercentage_;
            onBuilt();
            return overlapMetric;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo671clone() {
            return (Builder) super.mo671clone();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof OverlapMetric) {
                return mergeFrom((OverlapMetric) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(OverlapMetric overlapMetric) {
            if (overlapMetric == OverlapMetric.getDefaultInstance()) {
                return this;
            }
            if (overlapMetric.scope_ != 0) {
                setScopeValue(overlapMetric.getScopeValue());
            }
            if (overlapMetric.getMaxOverlapPercentage() != 0.0d) {
                setMaxOverlapPercentage(overlapMetric.getMaxOverlapPercentage());
            }
            mergeUnknownFields(((GeneratedMessageV3) overlapMetric).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.sdk.OverlapMetric.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.OverlapMetric.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.OverlapMetric r3 = (io.bidmachine.protobuf.sdk.OverlapMetric) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.bidmachine.protobuf.sdk.OverlapMetric r4 = (io.bidmachine.protobuf.sdk.OverlapMetric) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.OverlapMetric.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.OverlapMetric$Builder");
        }

        @Override // io.bidmachine.protobuf.sdk.OverlapMetricOrBuilder
        public int getScopeValue() {
            return this.scope_;
        }

        public Builder setScopeValue(int i) {
            this.scope_ = i;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.OverlapMetricOrBuilder
        public OverlapScope getScope() {
            OverlapScope overlapScopeValueOf = OverlapScope.valueOf(this.scope_);
            return overlapScopeValueOf == null ? OverlapScope.UNRECOGNIZED : overlapScopeValueOf;
        }

        public Builder setScope(OverlapScope overlapScope) {
            overlapScope.getClass();
            this.scope_ = overlapScope.getNumber();
            onChanged();
            return this;
        }

        public Builder clearScope() {
            this.scope_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.OverlapMetricOrBuilder
        public double getMaxOverlapPercentage() {
            return this.maxOverlapPercentage_;
        }

        public Builder setMaxOverlapPercentage(double d) {
            this.maxOverlapPercentage_ = d;
            onChanged();
            return this;
        }

        public Builder clearMaxOverlapPercentage() {
            this.maxOverlapPercentage_ = 0.0d;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static OverlapMetric getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<OverlapMetric> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<OverlapMetric> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public OverlapMetric mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
