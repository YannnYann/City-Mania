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
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class LifecycleMetric extends GeneratedMessageV3 implements LifecycleMetricOrBuilder {
    public static final int REQUIRED_STATES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int requiredStatesMemoizedSerializedSize;
    private List<Integer> requiredStates_;
    private static final Internal.ListAdapter.Converter<Integer, LifecycleState> requiredStates_converter_ = new Internal.ListAdapter.Converter<Integer, LifecycleState>() { // from class: io.bidmachine.protobuf.sdk.LifecycleMetric.1
        @Override // com.explorestack.protobuf.Internal.ListAdapter.Converter
        public LifecycleState convert(Integer num) {
            LifecycleState lifecycleStateValueOf = LifecycleState.valueOf(num.intValue());
            return lifecycleStateValueOf == null ? LifecycleState.UNRECOGNIZED : lifecycleStateValueOf;
        }
    };
    private static final LifecycleMetric DEFAULT_INSTANCE = new LifecycleMetric();
    private static final Parser<LifecycleMetric> PARSER = new AbstractParser<LifecycleMetric>() { // from class: io.bidmachine.protobuf.sdk.LifecycleMetric.2
        @Override // com.explorestack.protobuf.Parser
        public LifecycleMetric parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new LifecycleMetric(codedInputStream, extensionRegistryLite);
        }
    };

    private LifecycleMetric(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private LifecycleMetric() {
        this.memoizedIsInitialized = (byte) -1;
        this.requiredStates_ = Collections.EMPTY_LIST;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new LifecycleMetric();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private LifecycleMetric(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 8) {
                            int i = codedInputStream.readEnum();
                            if (!z2) {
                                this.requiredStates_ = new ArrayList();
                                z2 = true;
                            }
                            this.requiredStates_.add(Integer.valueOf(i));
                        } else if (tag == 10) {
                            int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                int i2 = codedInputStream.readEnum();
                                if (!z2) {
                                    this.requiredStates_ = new ArrayList();
                                    z2 = true;
                                }
                                this.requiredStates_.add(Integer.valueOf(i2));
                            }
                            codedInputStream.popLimit(iPushLimit);
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
                if (z2) {
                    this.requiredStates_ = Collections.unmodifiableList(this.requiredStates_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z2) {
            this.requiredStates_ = Collections.unmodifiableList(this.requiredStates_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_fieldAccessorTable.ensureFieldAccessorsInitialized(LifecycleMetric.class, Builder.class);
    }

    public enum LifecycleState implements Internal.EnumLite {
        FOREGROUND(0),
        HAS_WINDOW_FOCUS(1),
        VIEW_APPEARED(2),
        UNRECOGNIZED(-1);

        public static final int FOREGROUND_VALUE = 0;
        public static final int HAS_WINDOW_FOCUS_VALUE = 1;
        public static final int VIEW_APPEARED_VALUE = 2;
        private final int value;
        private static final Internal.EnumLiteMap<LifecycleState> internalValueMap = new Internal.EnumLiteMap<LifecycleState>() { // from class: io.bidmachine.protobuf.sdk.LifecycleMetric.LifecycleState.1
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public LifecycleState findValueByNumber(int i) {
                return LifecycleState.forNumber(i);
            }
        };
        private static final LifecycleState[] VALUES = values();

        @Override // com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static LifecycleState valueOf(int i) {
            return forNumber(i);
        }

        public static LifecycleState forNumber(int i) {
            if (i == 0) {
                return FOREGROUND;
            }
            if (i == 1) {
                return HAS_WINDOW_FOCUS;
            }
            if (i != 2) {
                return null;
            }
            return VIEW_APPEARED;
        }

        public static Internal.EnumLiteMap<LifecycleState> internalGetValueMap() {
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
            return LifecycleMetric.getDescriptor().getEnumTypes().get(0);
        }

        public static LifecycleState valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        LifecycleState(int i) {
            this.value = i;
        }
    }

    @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
    public List<LifecycleState> getRequiredStatesList() {
        return new Internal.ListAdapter(this.requiredStates_, requiredStates_converter_);
    }

    @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
    public int getRequiredStatesCount() {
        return this.requiredStates_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
    public LifecycleState getRequiredStates(int i) {
        return requiredStates_converter_.convert(this.requiredStates_.get(i));
    }

    @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
    public List<Integer> getRequiredStatesValueList() {
        return this.requiredStates_;
    }

    @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
    public int getRequiredStatesValue(int i) {
        return this.requiredStates_.get(i).intValue();
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
        getSerializedSize();
        if (getRequiredStatesList().size() > 0) {
            codedOutputStream.writeUInt32NoTag(10);
            codedOutputStream.writeUInt32NoTag(this.requiredStatesMemoizedSerializedSize);
        }
        for (int i = 0; i < this.requiredStates_.size(); i++) {
            codedOutputStream.writeEnumNoTag(this.requiredStates_.get(i).intValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeEnumSizeNoTag = 0;
        for (int i2 = 0; i2 < this.requiredStates_.size(); i2++) {
            iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(this.requiredStates_.get(i2).intValue());
        }
        int iComputeUInt32SizeNoTag = !getRequiredStatesList().isEmpty() ? iComputeEnumSizeNoTag + 1 + CodedOutputStream.computeUInt32SizeNoTag(iComputeEnumSizeNoTag) : iComputeEnumSizeNoTag;
        this.requiredStatesMemoizedSerializedSize = iComputeEnumSizeNoTag;
        int serializedSize = iComputeUInt32SizeNoTag + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LifecycleMetric)) {
            return super.equals(obj);
        }
        LifecycleMetric lifecycleMetric = (LifecycleMetric) obj;
        return this.requiredStates_.equals(lifecycleMetric.requiredStates_) && this.unknownFields.equals(lifecycleMetric.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = 779 + getDescriptor().hashCode();
        if (getRequiredStatesCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + this.requiredStates_.hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    public static LifecycleMetric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static LifecycleMetric parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static LifecycleMetric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static LifecycleMetric parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static LifecycleMetric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static LifecycleMetric parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static LifecycleMetric parseFrom(InputStream inputStream) throws IOException {
        return (LifecycleMetric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LifecycleMetric parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (LifecycleMetric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static LifecycleMetric parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LifecycleMetric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LifecycleMetric parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (LifecycleMetric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static LifecycleMetric parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (LifecycleMetric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static LifecycleMetric parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (LifecycleMetric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(LifecycleMetric lifecycleMetric) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(lifecycleMetric);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements LifecycleMetricOrBuilder {
        private int bitField0_;
        private List<Integer> requiredStates_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_fieldAccessorTable.ensureFieldAccessorsInitialized(LifecycleMetric.class, Builder.class);
        }

        private Builder() {
            this.requiredStates_ = Collections.EMPTY_LIST;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.requiredStates_ = Collections.EMPTY_LIST;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.requiredStates_ = Collections.EMPTY_LIST;
            this.bitField0_ &= -2;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public LifecycleMetric mo687getDefaultInstanceForType() {
            return LifecycleMetric.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public LifecycleMetric build() {
            LifecycleMetric lifecycleMetricBuildPartial = buildPartial();
            if (lifecycleMetricBuildPartial.isInitialized()) {
                return lifecycleMetricBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) lifecycleMetricBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public LifecycleMetric buildPartial() {
            LifecycleMetric lifecycleMetric = new LifecycleMetric(this);
            if ((this.bitField0_ & 1) != 0) {
                this.requiredStates_ = Collections.unmodifiableList(this.requiredStates_);
                this.bitField0_ &= -2;
            }
            lifecycleMetric.requiredStates_ = this.requiredStates_;
            onBuilt();
            return lifecycleMetric;
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
            if (message instanceof LifecycleMetric) {
                return mergeFrom((LifecycleMetric) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(LifecycleMetric lifecycleMetric) {
            if (lifecycleMetric == LifecycleMetric.getDefaultInstance()) {
                return this;
            }
            if (!lifecycleMetric.requiredStates_.isEmpty()) {
                if (this.requiredStates_.isEmpty()) {
                    this.requiredStates_ = lifecycleMetric.requiredStates_;
                    this.bitField0_ &= -2;
                } else {
                    ensureRequiredStatesIsMutable();
                    this.requiredStates_.addAll(lifecycleMetric.requiredStates_);
                }
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) lifecycleMetric).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.sdk.LifecycleMetric.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.LifecycleMetric.access$600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.LifecycleMetric r3 = (io.bidmachine.protobuf.sdk.LifecycleMetric) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.LifecycleMetric r4 = (io.bidmachine.protobuf.sdk.LifecycleMetric) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.LifecycleMetric.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.LifecycleMetric$Builder");
        }

        private void ensureRequiredStatesIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.requiredStates_ = new ArrayList(this.requiredStates_);
                this.bitField0_ |= 1;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
        public List<LifecycleState> getRequiredStatesList() {
            return new Internal.ListAdapter(this.requiredStates_, LifecycleMetric.requiredStates_converter_);
        }

        @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
        public int getRequiredStatesCount() {
            return this.requiredStates_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
        public LifecycleState getRequiredStates(int i) {
            return (LifecycleState) LifecycleMetric.requiredStates_converter_.convert(this.requiredStates_.get(i));
        }

        public Builder setRequiredStates(int i, LifecycleState lifecycleState) {
            lifecycleState.getClass();
            ensureRequiredStatesIsMutable();
            this.requiredStates_.set(i, Integer.valueOf(lifecycleState.getNumber()));
            onChanged();
            return this;
        }

        public Builder addRequiredStates(LifecycleState lifecycleState) {
            lifecycleState.getClass();
            ensureRequiredStatesIsMutable();
            this.requiredStates_.add(Integer.valueOf(lifecycleState.getNumber()));
            onChanged();
            return this;
        }

        public Builder addAllRequiredStates(Iterable<? extends LifecycleState> iterable) {
            ensureRequiredStatesIsMutable();
            Iterator<? extends LifecycleState> it = iterable.iterator();
            while (it.hasNext()) {
                this.requiredStates_.add(Integer.valueOf(it.next().getNumber()));
            }
            onChanged();
            return this;
        }

        public Builder clearRequiredStates() {
            this.requiredStates_ = Collections.EMPTY_LIST;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
        public List<Integer> getRequiredStatesValueList() {
            return Collections.unmodifiableList(this.requiredStates_);
        }

        @Override // io.bidmachine.protobuf.sdk.LifecycleMetricOrBuilder
        public int getRequiredStatesValue(int i) {
            return this.requiredStates_.get(i).intValue();
        }

        public Builder setRequiredStatesValue(int i, int i2) {
            ensureRequiredStatesIsMutable();
            this.requiredStates_.set(i, Integer.valueOf(i2));
            onChanged();
            return this;
        }

        public Builder addRequiredStatesValue(int i) {
            ensureRequiredStatesIsMutable();
            this.requiredStates_.add(Integer.valueOf(i));
            onChanged();
            return this;
        }

        public Builder addAllRequiredStatesValue(Iterable<Integer> iterable) {
            ensureRequiredStatesIsMutable();
            for (Integer num : iterable) {
                num.intValue();
                this.requiredStates_.add(num);
            }
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

    public static LifecycleMetric getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<LifecycleMetric> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<LifecycleMetric> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public LifecycleMetric mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
