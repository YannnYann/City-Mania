package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import gatewayprotocol.v1.ErrorOuterClass;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class AdViewerResponseOuterClass {

    public interface AdViewerResponseOrBuilder extends MessageLiteOrBuilder {
        ErrorOuterClass.Error getError();

        ByteString getPayload();

        int getPayloadVersion();

        boolean hasError();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private AdViewerResponseOuterClass() {
    }

    public static final class AdViewerResponse extends GeneratedMessageLite<AdViewerResponse, Builder> implements AdViewerResponseOrBuilder {
        private static final AdViewerResponse DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 3;
        private static volatile Parser<AdViewerResponse> PARSER = null;
        public static final int PAYLOAD_FIELD_NUMBER = 1;
        public static final int PAYLOAD_VERSION_FIELD_NUMBER = 2;
        private int bitField0_;
        private ErrorOuterClass.Error error_;
        private int payloadVersion_;
        private ByteString payload_ = ByteString.EMPTY;

        private AdViewerResponse() {
        }

        @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
        public ByteString getPayload() {
            return this.payload_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayload(ByteString byteString) {
            byteString.getClass();
            this.payload_ = byteString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayload() {
            this.payload_ = getDefaultInstance().getPayload();
        }

        @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
        public int getPayloadVersion() {
            return this.payloadVersion_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayloadVersion(int i) {
            this.payloadVersion_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayloadVersion() {
            this.payloadVersion_ = 0;
        }

        @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
        public ErrorOuterClass.Error getError() {
            ErrorOuterClass.Error error = this.error_;
            return error == null ? ErrorOuterClass.Error.getDefaultInstance() : error;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(ErrorOuterClass.Error error) {
            error.getClass();
            this.error_ = error;
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeError(ErrorOuterClass.Error error) {
            error.getClass();
            ErrorOuterClass.Error error2 = this.error_;
            if (error2 != null && error2 != ErrorOuterClass.Error.getDefaultInstance()) {
                this.error_ = ErrorOuterClass.Error.newBuilder(this.error_).mergeFrom(error).buildPartial();
            } else {
                this.error_ = error;
            }
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = null;
            this.bitField0_ &= -2;
        }

        public static AdViewerResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static AdViewerResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static AdViewerResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static AdViewerResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static AdViewerResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static AdViewerResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static AdViewerResponse parseFrom(InputStream inputStream) throws IOException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AdViewerResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AdViewerResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdViewerResponse) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AdViewerResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdViewerResponse) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AdViewerResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static AdViewerResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdViewerResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(AdViewerResponse adViewerResponse) {
            return DEFAULT_INSTANCE.createBuilder(adViewerResponse);
        }

        public static final class Builder extends GeneratedMessageLite.Builder<AdViewerResponse, Builder> implements AdViewerResponseOrBuilder {
            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            private Builder() {
                super(AdViewerResponse.DEFAULT_INSTANCE);
            }

            @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
            public ByteString getPayload() {
                return ((AdViewerResponse) this.instance).getPayload();
            }

            public Builder setPayload(ByteString byteString) {
                copyOnWrite();
                ((AdViewerResponse) this.instance).setPayload(byteString);
                return this;
            }

            public Builder clearPayload() {
                copyOnWrite();
                ((AdViewerResponse) this.instance).clearPayload();
                return this;
            }

            @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
            public int getPayloadVersion() {
                return ((AdViewerResponse) this.instance).getPayloadVersion();
            }

            public Builder setPayloadVersion(int i) {
                copyOnWrite();
                ((AdViewerResponse) this.instance).setPayloadVersion(i);
                return this;
            }

            public Builder clearPayloadVersion() {
                copyOnWrite();
                ((AdViewerResponse) this.instance).clearPayloadVersion();
                return this;
            }

            @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
            public boolean hasError() {
                return ((AdViewerResponse) this.instance).hasError();
            }

            @Override // gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder
            public ErrorOuterClass.Error getError() {
                return ((AdViewerResponse) this.instance).getError();
            }

            public Builder setError(ErrorOuterClass.Error error) {
                copyOnWrite();
                ((AdViewerResponse) this.instance).setError(error);
                return this;
            }

            public Builder setError(ErrorOuterClass.Error.Builder builder) {
                copyOnWrite();
                ((AdViewerResponse) this.instance).setError(builder.build());
                return this;
            }

            public Builder mergeError(ErrorOuterClass.Error error) {
                copyOnWrite();
                ((AdViewerResponse) this.instance).mergeError(error);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((AdViewerResponse) this.instance).clearError();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            Parser defaultInstanceBasedParser;
            AnonymousClass1 anonymousClass1 = null;
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
                case 1:
                    return new AdViewerResponse();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0004\u0003ဉ\u0000", new Object[]{"bitField0_", "payload_", "payloadVersion_", "error_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AdViewerResponse> parser = PARSER;
                    if (parser != null) {
                        return parser;
                    }
                    synchronized (AdViewerResponse.class) {
                        try {
                            defaultInstanceBasedParser = PARSER;
                            if (defaultInstanceBasedParser == null) {
                                defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return defaultInstanceBasedParser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            AdViewerResponse adViewerResponse = new AdViewerResponse();
            DEFAULT_INSTANCE = adViewerResponse;
            GeneratedMessageLite.registerDefaultInstance(AdViewerResponse.class, adViewerResponse);
        }

        public static AdViewerResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<AdViewerResponse> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* JADX INFO: renamed from: gatewayprotocol.v1.AdViewerResponseOuterClass$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }
}
