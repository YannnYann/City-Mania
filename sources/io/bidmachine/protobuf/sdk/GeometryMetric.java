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
public final class GeometryMetric extends GeneratedMessageV3 implements GeometryMetricOrBuilder {
    public static final int MIN_ALPHA_FIELD_NUMBER = 6;
    public static final int MIN_HEIGHT_FIELD_NUMBER = 2;
    public static final int MIN_WIDTH_FIELD_NUMBER = 1;
    public static final int VISIBLE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private double minAlpha_;
    private int minHeight_;
    private int minWidth_;
    private boolean visible_;
    private static final GeometryMetric DEFAULT_INSTANCE = new GeometryMetric();
    private static final Parser<GeometryMetric> PARSER = new AbstractParser<GeometryMetric>() { // from class: io.bidmachine.protobuf.sdk.GeometryMetric.1
        @Override // com.explorestack.protobuf.Parser
        public GeometryMetric parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new GeometryMetric(codedInputStream, extensionRegistryLite);
        }
    };

    private GeometryMetric(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private GeometryMetric() {
        this.memoizedIsInitialized = (byte) -1;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new GeometryMetric();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private GeometryMetric(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.bitField0_ |= 1;
                            this.minWidth_ = codedInputStream.readUInt32();
                        } else if (tag == 16) {
                            this.bitField0_ |= 2;
                            this.minHeight_ = codedInputStream.readUInt32();
                        } else if (tag == 24) {
                            this.visible_ = codedInputStream.readBool();
                        } else if (tag == 49) {
                            this.bitField0_ |= 4;
                            this.minAlpha_ = codedInputStream.readDouble();
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
        return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_fieldAccessorTable.ensureFieldAccessorsInitialized(GeometryMetric.class, Builder.class);
    }

    @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
    public boolean hasMinWidth() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
    public int getMinWidth() {
        return this.minWidth_;
    }

    @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
    public boolean hasMinHeight() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
    public int getMinHeight() {
        return this.minHeight_;
    }

    @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
    public boolean getVisible() {
        return this.visible_;
    }

    @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
    public boolean hasMinAlpha() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
    public double getMinAlpha() {
        return this.minAlpha_;
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
        if ((this.bitField0_ & 1) != 0) {
            codedOutputStream.writeUInt32(1, this.minWidth_);
        }
        if ((this.bitField0_ & 2) != 0) {
            codedOutputStream.writeUInt32(2, this.minHeight_);
        }
        boolean z = this.visible_;
        if (z) {
            codedOutputStream.writeBool(3, z);
        }
        if ((this.bitField0_ & 4) != 0) {
            codedOutputStream.writeDouble(6, this.minAlpha_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.minWidth_) : 0;
        if ((this.bitField0_ & 2) != 0) {
            iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.minHeight_);
        }
        boolean z = this.visible_;
        if (z) {
            iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, z);
        }
        if ((this.bitField0_ & 4) != 0) {
            iComputeUInt32Size += CodedOutputStream.computeDoubleSize(6, this.minAlpha_);
        }
        int serializedSize = iComputeUInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GeometryMetric)) {
            return super.equals(obj);
        }
        GeometryMetric geometryMetric = (GeometryMetric) obj;
        if (hasMinWidth() != geometryMetric.hasMinWidth()) {
            return false;
        }
        if ((hasMinWidth() && getMinWidth() != geometryMetric.getMinWidth()) || hasMinHeight() != geometryMetric.hasMinHeight()) {
            return false;
        }
        if ((!hasMinHeight() || getMinHeight() == geometryMetric.getMinHeight()) && getVisible() == geometryMetric.getVisible() && hasMinAlpha() == geometryMetric.hasMinAlpha()) {
            return (!hasMinAlpha() || Double.doubleToLongBits(getMinAlpha()) == Double.doubleToLongBits(geometryMetric.getMinAlpha())) && this.unknownFields.equals(geometryMetric.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = 779 + getDescriptor().hashCode();
        if (hasMinWidth()) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getMinWidth();
        }
        if (hasMinHeight()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getMinHeight();
        }
        int iHashBoolean = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getVisible());
        if (hasMinAlpha()) {
            iHashBoolean = (((iHashBoolean * 37) + 6) * 53) + Internal.hashLong(Double.doubleToLongBits(getMinAlpha()));
        }
        int iHashCode2 = (iHashBoolean * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    public static GeometryMetric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static GeometryMetric parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static GeometryMetric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static GeometryMetric parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static GeometryMetric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static GeometryMetric parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static GeometryMetric parseFrom(InputStream inputStream) throws IOException {
        return (GeometryMetric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static GeometryMetric parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (GeometryMetric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static GeometryMetric parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GeometryMetric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GeometryMetric parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (GeometryMetric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static GeometryMetric parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (GeometryMetric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static GeometryMetric parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (GeometryMetric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(GeometryMetric geometryMetric) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(geometryMetric);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements GeometryMetricOrBuilder {
        private int bitField0_;
        private double minAlpha_;
        private int minHeight_;
        private int minWidth_;
        private boolean visible_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_fieldAccessorTable.ensureFieldAccessorsInitialized(GeometryMetric.class, Builder.class);
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.minWidth_ = 0;
            int i = this.bitField0_;
            this.minHeight_ = 0;
            this.visible_ = false;
            this.minAlpha_ = 0.0d;
            this.bitField0_ = i & (-8);
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKViewabilityProto.internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public GeometryMetric mo687getDefaultInstanceForType() {
            return GeometryMetric.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public GeometryMetric build() {
            GeometryMetric geometryMetricBuildPartial = buildPartial();
            if (geometryMetricBuildPartial.isInitialized()) {
                return geometryMetricBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) geometryMetricBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public GeometryMetric buildPartial() {
            int i;
            GeometryMetric geometryMetric = new GeometryMetric(this);
            int i2 = this.bitField0_;
            if ((i2 & 1) != 0) {
                geometryMetric.minWidth_ = this.minWidth_;
                i = 1;
            } else {
                i = 0;
            }
            if ((i2 & 2) != 0) {
                geometryMetric.minHeight_ = this.minHeight_;
                i |= 2;
            }
            geometryMetric.visible_ = this.visible_;
            if ((i2 & 4) != 0) {
                geometryMetric.minAlpha_ = this.minAlpha_;
                i |= 4;
            }
            geometryMetric.bitField0_ = i;
            onBuilt();
            return geometryMetric;
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
            if (message instanceof GeometryMetric) {
                return mergeFrom((GeometryMetric) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(GeometryMetric geometryMetric) {
            if (geometryMetric == GeometryMetric.getDefaultInstance()) {
                return this;
            }
            if (geometryMetric.hasMinWidth()) {
                setMinWidth(geometryMetric.getMinWidth());
            }
            if (geometryMetric.hasMinHeight()) {
                setMinHeight(geometryMetric.getMinHeight());
            }
            if (geometryMetric.getVisible()) {
                setVisible(geometryMetric.getVisible());
            }
            if (geometryMetric.hasMinAlpha()) {
                setMinAlpha(geometryMetric.getMinAlpha());
            }
            mergeUnknownFields(((GeneratedMessageV3) geometryMetric).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.sdk.GeometryMetric.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.GeometryMetric.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.GeometryMetric r3 = (io.bidmachine.protobuf.sdk.GeometryMetric) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.GeometryMetric r4 = (io.bidmachine.protobuf.sdk.GeometryMetric) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.GeometryMetric.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.GeometryMetric$Builder");
        }

        @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
        public boolean hasMinWidth() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
        public int getMinWidth() {
            return this.minWidth_;
        }

        public Builder setMinWidth(int i) {
            this.bitField0_ |= 1;
            this.minWidth_ = i;
            onChanged();
            return this;
        }

        public Builder clearMinWidth() {
            this.bitField0_ &= -2;
            this.minWidth_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
        public boolean hasMinHeight() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
        public int getMinHeight() {
            return this.minHeight_;
        }

        public Builder setMinHeight(int i) {
            this.bitField0_ |= 2;
            this.minHeight_ = i;
            onChanged();
            return this;
        }

        public Builder clearMinHeight() {
            this.bitField0_ &= -3;
            this.minHeight_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
        public boolean getVisible() {
            return this.visible_;
        }

        public Builder setVisible(boolean z) {
            this.visible_ = z;
            onChanged();
            return this;
        }

        public Builder clearVisible() {
            this.visible_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
        public boolean hasMinAlpha() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // io.bidmachine.protobuf.sdk.GeometryMetricOrBuilder
        public double getMinAlpha() {
            return this.minAlpha_;
        }

        public Builder setMinAlpha(double d) {
            this.bitField0_ |= 4;
            this.minAlpha_ = d;
            onChanged();
            return this;
        }

        public Builder clearMinAlpha() {
            this.bitField0_ &= -5;
            this.minAlpha_ = 0.0d;
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

    public static GeometryMetric getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<GeometryMetric> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<GeometryMetric> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public GeometryMetric mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
