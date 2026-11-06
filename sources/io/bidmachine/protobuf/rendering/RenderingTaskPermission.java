package io.bidmachine.protobuf.rendering;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessageLite;
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
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import io.bidmachine.protobuf.rendering.Rendering;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class RenderingTaskPermission extends GeneratedMessageV3 implements RenderingTaskPermissionOrBuilder {
    private static final RenderingTaskPermission DEFAULT_INSTANCE = new RenderingTaskPermission();
    private static final Parser<RenderingTaskPermission> PARSER = new AbstractParser<RenderingTaskPermission>() { // from class: io.bidmachine.protobuf.rendering.RenderingTaskPermission.1
        @Override // com.explorestack.protobuf.Parser
        public RenderingTaskPermission parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new RenderingTaskPermission(codedInputStream, extensionRegistryLite);
        }
    };
    public static final int REQUEST_FIELD_NUMBER = 1;
    public static final int RESPONSE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int payloadOneofCase_;
    private Object payloadOneof_;

    public interface RequestOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        Rendering.Phase.Event.EventName getEventName();

        int getEventNameValue();

        String getEventSource();

        ByteString getEventSourceBytes();

        @Deprecated
        Rendering.Phase.Event.Task getEventTasks(int i);

        @Deprecated
        int getEventTasksCount();

        @Deprecated
        List<Rendering.Phase.Event.Task> getEventTasksList();

        @Deprecated
        Rendering.Phase.Event.TaskOrBuilder getEventTasksOrBuilder(int i);

        @Deprecated
        List<? extends Rendering.Phase.Event.TaskOrBuilder> getEventTasksOrBuilderList();

        String getEventValue();

        ByteString getEventValueBytes();

        Rendering.Phase.Event.TaskBucket getTaskBuckets(int i);

        int getTaskBucketsCount();

        List<Rendering.Phase.Event.TaskBucket> getTaskBucketsList();

        Rendering.Phase.Event.TaskBucketOrBuilder getTaskBucketsOrBuilder(int i);

        List<? extends Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface ResponseOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        @Deprecated
        Rendering.Phase.Event.Task getEventTasks(int i);

        @Deprecated
        int getEventTasksCount();

        @Deprecated
        List<Rendering.Phase.Event.Task> getEventTasksList();

        @Deprecated
        Rendering.Phase.Event.TaskOrBuilder getEventTasksOrBuilder(int i);

        @Deprecated
        List<? extends Rendering.Phase.Event.TaskOrBuilder> getEventTasksOrBuilderList();

        Rendering.Phase.Event.TaskBucket getTaskBuckets(int i);

        int getTaskBucketsCount();

        List<Rendering.Phase.Event.TaskBucket> getTaskBucketsList();

        Rendering.Phase.Event.TaskBucketOrBuilder getTaskBucketsOrBuilder(int i);

        List<? extends Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    private RenderingTaskPermission(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.payloadOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    private RenderingTaskPermission() {
        this.payloadOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new RenderingTaskPermission();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private RenderingTaskPermission(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            Request.Builder builder = this.payloadOneofCase_ == 1 ? ((Request) this.payloadOneof_).toBuilder() : null;
                            MessageLite message = codedInputStream.readMessage(Request.parser(), extensionRegistryLite);
                            this.payloadOneof_ = message;
                            if (builder != null) {
                                builder.mergeFrom((Request) message);
                                this.payloadOneof_ = builder.buildPartial();
                            }
                            this.payloadOneofCase_ = 1;
                        } else if (tag == 18) {
                            Response.Builder builder2 = this.payloadOneofCase_ == 2 ? ((Response) this.payloadOneof_).toBuilder() : null;
                            MessageLite message2 = codedInputStream.readMessage(Response.parser(), extensionRegistryLite);
                            this.payloadOneof_ = message2;
                            if (builder2 != null) {
                                builder2.mergeFrom((Response) message2);
                                this.payloadOneof_ = builder2.buildPartial();
                            }
                            this.payloadOneofCase_ = 2;
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
        return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable.ensureFieldAccessorsInitialized(RenderingTaskPermission.class, Builder.class);
    }

    public static final class Request extends GeneratedMessageV3 implements RequestOrBuilder {
        public static final int EVENT_NAME_FIELD_NUMBER = 1;
        public static final int EVENT_SOURCE_FIELD_NUMBER = 2;
        public static final int EVENT_TASKS_FIELD_NUMBER = 4;
        public static final int EVENT_VALUE_FIELD_NUMBER = 3;
        public static final int TASK_BUCKETS_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int eventName_;
        private volatile Object eventSource_;
        private List<Rendering.Phase.Event.Task> eventTasks_;
        private volatile Object eventValue_;
        private byte memoizedIsInitialized;
        private List<Rendering.Phase.Event.TaskBucket> taskBuckets_;
        private static final Request DEFAULT_INSTANCE = new Request();
        private static final Parser<Request> PARSER = new AbstractParser<Request>() { // from class: io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request.1
            @Override // com.explorestack.protobuf.Parser
            public Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Request(codedInputStream, extensionRegistryLite);
            }
        };

        private Request(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Request() {
            this.memoizedIsInitialized = (byte) -1;
            this.eventName_ = 0;
            this.eventSource_ = "";
            this.eventValue_ = "";
            List list = Collections.EMPTY_LIST;
            this.eventTasks_ = list;
            this.taskBuckets_ = list;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Request();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Request(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.eventName_ = codedInputStream.readEnum();
                                } else if (tag == 18) {
                                    this.eventSource_ = codedInputStream.readStringRequireUtf8();
                                } else if (tag == 26) {
                                    this.eventValue_ = codedInputStream.readStringRequireUtf8();
                                } else if (tag == 34) {
                                    if ((i & 1) == 0) {
                                        this.eventTasks_ = new ArrayList();
                                        i |= 1;
                                    }
                                    this.eventTasks_.add((Rendering.Phase.Event.Task) codedInputStream.readMessage(Rendering.Phase.Event.Task.parser(), extensionRegistryLite));
                                } else if (tag == 42) {
                                    if ((i & 2) == 0) {
                                        this.taskBuckets_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.taskBuckets_.add((Rendering.Phase.Event.TaskBucket) codedInputStream.readMessage(Rendering.Phase.Event.TaskBucket.parser(), extensionRegistryLite));
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((i & 1) != 0) {
                        this.eventTasks_ = Collections.unmodifiableList(this.eventTasks_);
                    }
                    if ((i & 2) != 0) {
                        this.taskBuckets_ = Collections.unmodifiableList(this.taskBuckets_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i & 1) != 0) {
                this.eventTasks_ = Collections.unmodifiableList(this.eventTasks_);
            }
            if ((i & 2) != 0) {
                this.taskBuckets_ = Collections.unmodifiableList(this.taskBuckets_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public int getEventNameValue() {
            return this.eventName_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public Rendering.Phase.Event.EventName getEventName() {
            Rendering.Phase.Event.EventName eventNameValueOf = Rendering.Phase.Event.EventName.valueOf(this.eventName_);
            return eventNameValueOf == null ? Rendering.Phase.Event.EventName.UNRECOGNIZED : eventNameValueOf;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public String getEventSource() {
            Object obj = this.eventSource_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.eventSource_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public ByteString getEventSourceBytes() {
            Object obj = this.eventSource_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.eventSource_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public String getEventValue() {
            Object obj = this.eventValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.eventValue_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public ByteString getEventValueBytes() {
            Object obj = this.eventValue_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.eventValue_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        @Deprecated
        public List<Rendering.Phase.Event.Task> getEventTasksList() {
            return this.eventTasks_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        @Deprecated
        public List<? extends Rendering.Phase.Event.TaskOrBuilder> getEventTasksOrBuilderList() {
            return this.eventTasks_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        @Deprecated
        public int getEventTasksCount() {
            return this.eventTasks_.size();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        @Deprecated
        public Rendering.Phase.Event.Task getEventTasks(int i) {
            return this.eventTasks_.get(i);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        @Deprecated
        public Rendering.Phase.Event.TaskOrBuilder getEventTasksOrBuilder(int i) {
            return this.eventTasks_.get(i);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public List<Rendering.Phase.Event.TaskBucket> getTaskBucketsList() {
            return this.taskBuckets_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public List<? extends Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsOrBuilderList() {
            return this.taskBuckets_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public int getTaskBucketsCount() {
            return this.taskBuckets_.size();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public Rendering.Phase.Event.TaskBucket getTaskBuckets(int i) {
            return this.taskBuckets_.get(i);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
        public Rendering.Phase.Event.TaskBucketOrBuilder getTaskBucketsOrBuilder(int i) {
            return this.taskBuckets_.get(i);
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
            if (this.eventName_ != Rendering.Phase.Event.EventName.EVENT_NAME_INVALID.getNumber()) {
                codedOutputStream.writeEnum(1, this.eventName_);
            }
            if (!getEventSourceBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.eventSource_);
            }
            if (!getEventValueBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.eventValue_);
            }
            for (int i = 0; i < this.eventTasks_.size(); i++) {
                codedOutputStream.writeMessage(4, this.eventTasks_.get(i));
            }
            for (int i2 = 0; i2 < this.taskBuckets_.size(); i2++) {
                codedOutputStream.writeMessage(5, this.taskBuckets_.get(i2));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeEnumSize = this.eventName_ != Rendering.Phase.Event.EventName.EVENT_NAME_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.eventName_) : 0;
            if (!getEventSourceBytes().isEmpty()) {
                iComputeEnumSize += GeneratedMessageV3.computeStringSize(2, this.eventSource_);
            }
            if (!getEventValueBytes().isEmpty()) {
                iComputeEnumSize += GeneratedMessageV3.computeStringSize(3, this.eventValue_);
            }
            for (int i2 = 0; i2 < this.eventTasks_.size(); i2++) {
                iComputeEnumSize += CodedOutputStream.computeMessageSize(4, this.eventTasks_.get(i2));
            }
            for (int i3 = 0; i3 < this.taskBuckets_.size(); i3++) {
                iComputeEnumSize += CodedOutputStream.computeMessageSize(5, this.taskBuckets_.get(i3));
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
            if (!(obj instanceof Request)) {
                return super.equals(obj);
            }
            Request request = (Request) obj;
            return this.eventName_ == request.eventName_ && getEventSource().equals(request.getEventSource()) && getEventValue().equals(request.getEventValue()) && getEventTasksList().equals(request.getEventTasksList()) && getTaskBucketsList().equals(request.getTaskBucketsList()) && this.unknownFields.equals(request.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.eventName_) * 37) + 2) * 53) + getEventSource().hashCode()) * 37) + 3) * 53) + getEventValue().hashCode();
            if (getEventTasksCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getEventTasksList().hashCode();
            }
            if (getTaskBucketsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getTaskBucketsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Request request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(request);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RequestOrBuilder {
            private int bitField0_;
            private int eventName_;
            private Object eventSource_;
            private RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> eventTasksBuilder_;
            private List<Rendering.Phase.Event.Task> eventTasks_;
            private Object eventValue_;
            private RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> taskBucketsBuilder_;
            private List<Rendering.Phase.Event.TaskBucket> taskBuckets_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
            }

            private Builder() {
                this.eventName_ = 0;
                this.eventSource_ = "";
                this.eventValue_ = "";
                List list = Collections.EMPTY_LIST;
                this.eventTasks_ = list;
                this.taskBuckets_ = list;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.eventName_ = 0;
                this.eventSource_ = "";
                this.eventValue_ = "";
                List list = Collections.EMPTY_LIST;
                this.eventTasks_ = list;
                this.taskBuckets_ = list;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getEventTasksFieldBuilder();
                    getTaskBucketsFieldBuilder();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.eventName_ = 0;
                this.eventSource_ = "";
                this.eventValue_ = "";
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.eventTasks_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV32 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    this.taskBuckets_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -3;
                    return this;
                }
                repeatedFieldBuilderV32.clear();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public Request mo687getDefaultInstanceForType() {
                return Request.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Request build() {
                Request requestBuildPartial = buildPartial();
                if (requestBuildPartial.isInitialized()) {
                    return requestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) requestBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Request buildPartial() {
                Request request = new Request(this);
                request.eventName_ = this.eventName_;
                request.eventSource_ = this.eventSource_;
                request.eventValue_ = this.eventValue_;
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    request.eventTasks_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.eventTasks_ = Collections.unmodifiableList(this.eventTasks_);
                        this.bitField0_ &= -2;
                    }
                    request.eventTasks_ = this.eventTasks_;
                }
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV32 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV32 != null) {
                    request.taskBuckets_ = repeatedFieldBuilderV32.build();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.taskBuckets_ = Collections.unmodifiableList(this.taskBuckets_);
                        this.bitField0_ &= -3;
                    }
                    request.taskBuckets_ = this.taskBuckets_;
                }
                onBuilt();
                return request;
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
                if (message instanceof Request) {
                    return mergeFrom((Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Request request) {
                if (request == Request.getDefaultInstance()) {
                    return this;
                }
                if (request.eventName_ != 0) {
                    setEventNameValue(request.getEventNameValue());
                }
                if (!request.getEventSource().isEmpty()) {
                    this.eventSource_ = request.eventSource_;
                    onChanged();
                }
                if (!request.getEventValue().isEmpty()) {
                    this.eventValue_ = request.eventValue_;
                    onChanged();
                }
                if (this.eventTasksBuilder_ == null) {
                    if (!request.eventTasks_.isEmpty()) {
                        if (this.eventTasks_.isEmpty()) {
                            this.eventTasks_ = request.eventTasks_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureEventTasksIsMutable();
                            this.eventTasks_.addAll(request.eventTasks_);
                        }
                        onChanged();
                    }
                } else if (!request.eventTasks_.isEmpty()) {
                    if (!this.eventTasksBuilder_.isEmpty()) {
                        this.eventTasksBuilder_.addAllMessages(request.eventTasks_);
                    } else {
                        this.eventTasksBuilder_.dispose();
                        this.eventTasksBuilder_ = null;
                        this.eventTasks_ = request.eventTasks_;
                        this.bitField0_ &= -2;
                        this.eventTasksBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getEventTasksFieldBuilder() : null;
                    }
                }
                if (this.taskBucketsBuilder_ == null) {
                    if (!request.taskBuckets_.isEmpty()) {
                        if (this.taskBuckets_.isEmpty()) {
                            this.taskBuckets_ = request.taskBuckets_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureTaskBucketsIsMutable();
                            this.taskBuckets_.addAll(request.taskBuckets_);
                        }
                        onChanged();
                    }
                } else if (!request.taskBuckets_.isEmpty()) {
                    if (!this.taskBucketsBuilder_.isEmpty()) {
                        this.taskBucketsBuilder_.addAllMessages(request.taskBuckets_);
                    } else {
                        this.taskBucketsBuilder_.dispose();
                        this.taskBucketsBuilder_ = null;
                        this.taskBuckets_ = request.taskBuckets_;
                        this.bitField0_ &= -3;
                        this.taskBucketsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getTaskBucketsFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) request).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request.access$1200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.rendering.RenderingTaskPermission$Request r3 = (io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.rendering.RenderingTaskPermission$Request r4 = (io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.rendering.RenderingTaskPermission$Request$Builder");
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public int getEventNameValue() {
                return this.eventName_;
            }

            public Builder setEventNameValue(int i) {
                this.eventName_ = i;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public Rendering.Phase.Event.EventName getEventName() {
                Rendering.Phase.Event.EventName eventNameValueOf = Rendering.Phase.Event.EventName.valueOf(this.eventName_);
                return eventNameValueOf == null ? Rendering.Phase.Event.EventName.UNRECOGNIZED : eventNameValueOf;
            }

            public Builder setEventName(Rendering.Phase.Event.EventName eventName) {
                eventName.getClass();
                this.eventName_ = eventName.getNumber();
                onChanged();
                return this;
            }

            public Builder clearEventName() {
                this.eventName_ = 0;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public String getEventSource() {
                Object obj = this.eventSource_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.eventSource_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public ByteString getEventSourceBytes() {
                Object obj = this.eventSource_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.eventSource_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setEventSource(String str) {
                str.getClass();
                this.eventSource_ = str;
                onChanged();
                return this;
            }

            public Builder clearEventSource() {
                this.eventSource_ = Request.getDefaultInstance().getEventSource();
                onChanged();
                return this;
            }

            public Builder setEventSourceBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.eventSource_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public String getEventValue() {
                Object obj = this.eventValue_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.eventValue_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public ByteString getEventValueBytes() {
                Object obj = this.eventValue_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.eventValue_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setEventValue(String str) {
                str.getClass();
                this.eventValue_ = str;
                onChanged();
                return this;
            }

            public Builder clearEventValue() {
                this.eventValue_ = Request.getDefaultInstance().getEventValue();
                onChanged();
                return this;
            }

            public Builder setEventValueBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.eventValue_ = byteString;
                onChanged();
                return this;
            }

            private void ensureEventTasksIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.eventTasks_ = new ArrayList(this.eventTasks_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            @Deprecated
            public List<Rendering.Phase.Event.Task> getEventTasksList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.eventTasks_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            @Deprecated
            public int getEventTasksCount() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.eventTasks_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            @Deprecated
            public Rendering.Phase.Event.Task getEventTasks(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.eventTasks_.get(i);
                }
                return (Rendering.Phase.Event.Task) repeatedFieldBuilderV3.getMessage(i);
            }

            @Deprecated
            public Builder setEventTasks(int i, Rendering.Phase.Event.Task task) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    task.getClass();
                    ensureEventTasksIsMutable();
                    this.eventTasks_.set(i, task);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, task);
                return this;
            }

            @Deprecated
            public Builder setEventTasks(int i, Rendering.Phase.Event.Task.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            @Deprecated
            public Builder addEventTasks(Rendering.Phase.Event.Task task) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    task.getClass();
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(task);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(task);
                return this;
            }

            @Deprecated
            public Builder addEventTasks(int i, Rendering.Phase.Event.Task task) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    task.getClass();
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(i, task);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, task);
                return this;
            }

            @Deprecated
            public Builder addEventTasks(Rendering.Phase.Event.Task.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            @Deprecated
            public Builder addEventTasks(int i, Rendering.Phase.Event.Task.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            @Deprecated
            public Builder addAllEventTasks(Iterable<? extends Rendering.Phase.Event.Task> iterable) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.eventTasks_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            @Deprecated
            public Builder clearEventTasks() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.eventTasks_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            @Deprecated
            public Builder removeEventTasks(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            @Deprecated
            public Rendering.Phase.Event.Task.Builder getEventTasksBuilder(int i) {
                return (Rendering.Phase.Event.Task.Builder) getEventTasksFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            @Deprecated
            public Rendering.Phase.Event.TaskOrBuilder getEventTasksOrBuilder(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.eventTasks_.get(i);
                }
                return (Rendering.Phase.Event.TaskOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            @Deprecated
            public List<? extends Rendering.Phase.Event.TaskOrBuilder> getEventTasksOrBuilderList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.eventTasks_);
            }

            @Deprecated
            public Rendering.Phase.Event.Task.Builder addEventTasksBuilder() {
                return (Rendering.Phase.Event.Task.Builder) getEventTasksFieldBuilder().addBuilder(Rendering.Phase.Event.Task.getDefaultInstance());
            }

            @Deprecated
            public Rendering.Phase.Event.Task.Builder addEventTasksBuilder(int i) {
                return (Rendering.Phase.Event.Task.Builder) getEventTasksFieldBuilder().addBuilder(i, Rendering.Phase.Event.Task.getDefaultInstance());
            }

            @Deprecated
            public List<Rendering.Phase.Event.Task.Builder> getEventTasksBuilderList() {
                return getEventTasksFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> getEventTasksFieldBuilder() {
                if (this.eventTasksBuilder_ == null) {
                    this.eventTasksBuilder_ = new RepeatedFieldBuilderV3<>(this.eventTasks_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.eventTasks_ = null;
                }
                return this.eventTasksBuilder_;
            }

            private void ensureTaskBucketsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.taskBuckets_ = new ArrayList(this.taskBuckets_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public List<Rendering.Phase.Event.TaskBucket> getTaskBucketsList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.taskBuckets_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public int getTaskBucketsCount() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.taskBuckets_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public Rendering.Phase.Event.TaskBucket getTaskBuckets(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.taskBuckets_.get(i);
                }
                return (Rendering.Phase.Event.TaskBucket) repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setTaskBuckets(int i, Rendering.Phase.Event.TaskBucket taskBucket) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    taskBucket.getClass();
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.set(i, taskBucket);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, taskBucket);
                return this;
            }

            public Builder setTaskBuckets(int i, Rendering.Phase.Event.TaskBucket.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            public Builder addTaskBuckets(Rendering.Phase.Event.TaskBucket taskBucket) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    taskBucket.getClass();
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(taskBucket);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(taskBucket);
                return this;
            }

            public Builder addTaskBuckets(int i, Rendering.Phase.Event.TaskBucket taskBucket) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    taskBucket.getClass();
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(i, taskBucket);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, taskBucket);
                return this;
            }

            public Builder addTaskBuckets(Rendering.Phase.Event.TaskBucket.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            public Builder addTaskBuckets(int i, Rendering.Phase.Event.TaskBucket.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            public Builder addAllTaskBuckets(Iterable<? extends Rendering.Phase.Event.TaskBucket> iterable) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.taskBuckets_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            public Builder clearTaskBuckets() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.taskBuckets_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            public Builder removeTaskBuckets(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            public Rendering.Phase.Event.TaskBucket.Builder getTaskBucketsBuilder(int i) {
                return (Rendering.Phase.Event.TaskBucket.Builder) getTaskBucketsFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public Rendering.Phase.Event.TaskBucketOrBuilder getTaskBucketsOrBuilder(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.taskBuckets_.get(i);
                }
                return (Rendering.Phase.Event.TaskBucketOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder
            public List<? extends Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsOrBuilderList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.taskBuckets_);
            }

            public Rendering.Phase.Event.TaskBucket.Builder addTaskBucketsBuilder() {
                return (Rendering.Phase.Event.TaskBucket.Builder) getTaskBucketsFieldBuilder().addBuilder(Rendering.Phase.Event.TaskBucket.getDefaultInstance());
            }

            public Rendering.Phase.Event.TaskBucket.Builder addTaskBucketsBuilder(int i) {
                return (Rendering.Phase.Event.TaskBucket.Builder) getTaskBucketsFieldBuilder().addBuilder(i, Rendering.Phase.Event.TaskBucket.getDefaultInstance());
            }

            public List<Rendering.Phase.Event.TaskBucket.Builder> getTaskBucketsBuilderList() {
                return getTaskBucketsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsFieldBuilder() {
                if (this.taskBucketsBuilder_ == null) {
                    this.taskBucketsBuilder_ = new RepeatedFieldBuilderV3<>(this.taskBuckets_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.taskBuckets_ = null;
                }
                return this.taskBucketsBuilder_;
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

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Request> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Request> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Request mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class Response extends GeneratedMessageV3 implements ResponseOrBuilder {
        public static final int EVENT_TASKS_FIELD_NUMBER = 1;
        public static final int TASK_BUCKETS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private List<Rendering.Phase.Event.Task> eventTasks_;
        private byte memoizedIsInitialized;
        private List<Rendering.Phase.Event.TaskBucket> taskBuckets_;
        private static final Response DEFAULT_INSTANCE = new Response();
        private static final Parser<Response> PARSER = new AbstractParser<Response>() { // from class: io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response.1
            @Override // com.explorestack.protobuf.Parser
            public Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Response(codedInputStream, extensionRegistryLite);
            }
        };

        private Response(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Response() {
            this.memoizedIsInitialized = (byte) -1;
            List list = Collections.EMPTY_LIST;
            this.eventTasks_ = list;
            this.taskBuckets_ = list;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Response();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Response(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                if ((i & 1) == 0) {
                                    this.eventTasks_ = new ArrayList();
                                    i |= 1;
                                }
                                this.eventTasks_.add((Rendering.Phase.Event.Task) codedInputStream.readMessage(Rendering.Phase.Event.Task.parser(), extensionRegistryLite));
                            } else if (tag == 18) {
                                if ((i & 2) == 0) {
                                    this.taskBuckets_ = new ArrayList();
                                    i |= 2;
                                }
                                this.taskBuckets_.add((Rendering.Phase.Event.TaskBucket) codedInputStream.readMessage(Rendering.Phase.Event.TaskBucket.parser(), extensionRegistryLite));
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
                    if ((i & 1) != 0) {
                        this.eventTasks_ = Collections.unmodifiableList(this.eventTasks_);
                    }
                    if ((i & 2) != 0) {
                        this.taskBuckets_ = Collections.unmodifiableList(this.taskBuckets_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i & 1) != 0) {
                this.eventTasks_ = Collections.unmodifiableList(this.eventTasks_);
            }
            if ((i & 2) != 0) {
                this.taskBuckets_ = Collections.unmodifiableList(this.taskBuckets_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(Response.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        @Deprecated
        public List<Rendering.Phase.Event.Task> getEventTasksList() {
            return this.eventTasks_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        @Deprecated
        public List<? extends Rendering.Phase.Event.TaskOrBuilder> getEventTasksOrBuilderList() {
            return this.eventTasks_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        @Deprecated
        public int getEventTasksCount() {
            return this.eventTasks_.size();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        @Deprecated
        public Rendering.Phase.Event.Task getEventTasks(int i) {
            return this.eventTasks_.get(i);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        @Deprecated
        public Rendering.Phase.Event.TaskOrBuilder getEventTasksOrBuilder(int i) {
            return this.eventTasks_.get(i);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        public List<Rendering.Phase.Event.TaskBucket> getTaskBucketsList() {
            return this.taskBuckets_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        public List<? extends Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsOrBuilderList() {
            return this.taskBuckets_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        public int getTaskBucketsCount() {
            return this.taskBuckets_.size();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        public Rendering.Phase.Event.TaskBucket getTaskBuckets(int i) {
            return this.taskBuckets_.get(i);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
        public Rendering.Phase.Event.TaskBucketOrBuilder getTaskBucketsOrBuilder(int i) {
            return this.taskBuckets_.get(i);
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
            for (int i = 0; i < this.eventTasks_.size(); i++) {
                codedOutputStream.writeMessage(1, this.eventTasks_.get(i));
            }
            for (int i2 = 0; i2 < this.taskBuckets_.size(); i2++) {
                codedOutputStream.writeMessage(2, this.taskBuckets_.get(i2));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = 0;
            for (int i2 = 0; i2 < this.eventTasks_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.eventTasks_.get(i2));
            }
            for (int i3 = 0; i3 < this.taskBuckets_.size(); i3++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, this.taskBuckets_.get(i3));
            }
            int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Response)) {
                return super.equals(obj);
            }
            Response response = (Response) obj;
            return getEventTasksList().equals(response.getEventTasksList()) && getTaskBucketsList().equals(response.getTaskBucketsList()) && this.unknownFields.equals(response.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getEventTasksCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEventTasksList().hashCode();
            }
            if (getTaskBucketsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getTaskBucketsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Response response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(response);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> eventTasksBuilder_;
            private List<Rendering.Phase.Event.Task> eventTasks_;
            private RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> taskBucketsBuilder_;
            private List<Rendering.Phase.Event.TaskBucket> taskBuckets_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(Response.class, Builder.class);
            }

            private Builder() {
                List list = Collections.EMPTY_LIST;
                this.eventTasks_ = list;
                this.taskBuckets_ = list;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                List list = Collections.EMPTY_LIST;
                this.eventTasks_ = list;
                this.taskBuckets_ = list;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getEventTasksFieldBuilder();
                    getTaskBucketsFieldBuilder();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.eventTasks_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV32 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    this.taskBuckets_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -3;
                    return this;
                }
                repeatedFieldBuilderV32.clear();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public Response mo687getDefaultInstanceForType() {
                return Response.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Response build() {
                Response responseBuildPartial = buildPartial();
                if (responseBuildPartial.isInitialized()) {
                    return responseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) responseBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Response buildPartial() {
                Response response = new Response(this);
                int i = this.bitField0_;
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) != 0) {
                        this.eventTasks_ = Collections.unmodifiableList(this.eventTasks_);
                        this.bitField0_ &= -2;
                    }
                    response.eventTasks_ = this.eventTasks_;
                } else {
                    response.eventTasks_ = repeatedFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV32 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV32 != null) {
                    response.taskBuckets_ = repeatedFieldBuilderV32.build();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.taskBuckets_ = Collections.unmodifiableList(this.taskBuckets_);
                        this.bitField0_ &= -3;
                    }
                    response.taskBuckets_ = this.taskBuckets_;
                }
                onBuilt();
                return response;
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
                if (message instanceof Response) {
                    return mergeFrom((Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Response response) {
                if (response == Response.getDefaultInstance()) {
                    return this;
                }
                if (this.eventTasksBuilder_ == null) {
                    if (!response.eventTasks_.isEmpty()) {
                        if (this.eventTasks_.isEmpty()) {
                            this.eventTasks_ = response.eventTasks_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureEventTasksIsMutable();
                            this.eventTasks_.addAll(response.eventTasks_);
                        }
                        onChanged();
                    }
                } else if (!response.eventTasks_.isEmpty()) {
                    if (!this.eventTasksBuilder_.isEmpty()) {
                        this.eventTasksBuilder_.addAllMessages(response.eventTasks_);
                    } else {
                        this.eventTasksBuilder_.dispose();
                        this.eventTasksBuilder_ = null;
                        this.eventTasks_ = response.eventTasks_;
                        this.bitField0_ &= -2;
                        this.eventTasksBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getEventTasksFieldBuilder() : null;
                    }
                }
                if (this.taskBucketsBuilder_ == null) {
                    if (!response.taskBuckets_.isEmpty()) {
                        if (this.taskBuckets_.isEmpty()) {
                            this.taskBuckets_ = response.taskBuckets_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureTaskBucketsIsMutable();
                            this.taskBuckets_.addAll(response.taskBuckets_);
                        }
                        onChanged();
                    }
                } else if (!response.taskBuckets_.isEmpty()) {
                    if (!this.taskBucketsBuilder_.isEmpty()) {
                        this.taskBucketsBuilder_.addAllMessages(response.taskBuckets_);
                    } else {
                        this.taskBucketsBuilder_.dispose();
                        this.taskBucketsBuilder_ = null;
                        this.taskBuckets_ = response.taskBuckets_;
                        this.bitField0_ &= -3;
                        this.taskBucketsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getTaskBucketsFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) response).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response.access$2500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.rendering.RenderingTaskPermission$Response r3 = (io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.rendering.RenderingTaskPermission$Response r4 = (io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.rendering.RenderingTaskPermission$Response$Builder");
            }

            private void ensureEventTasksIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.eventTasks_ = new ArrayList(this.eventTasks_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            @Deprecated
            public List<Rendering.Phase.Event.Task> getEventTasksList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.eventTasks_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            @Deprecated
            public int getEventTasksCount() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.eventTasks_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            @Deprecated
            public Rendering.Phase.Event.Task getEventTasks(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.eventTasks_.get(i);
                }
                return (Rendering.Phase.Event.Task) repeatedFieldBuilderV3.getMessage(i);
            }

            @Deprecated
            public Builder setEventTasks(int i, Rendering.Phase.Event.Task task) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    task.getClass();
                    ensureEventTasksIsMutable();
                    this.eventTasks_.set(i, task);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, task);
                return this;
            }

            @Deprecated
            public Builder setEventTasks(int i, Rendering.Phase.Event.Task.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            @Deprecated
            public Builder addEventTasks(Rendering.Phase.Event.Task task) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    task.getClass();
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(task);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(task);
                return this;
            }

            @Deprecated
            public Builder addEventTasks(int i, Rendering.Phase.Event.Task task) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    task.getClass();
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(i, task);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, task);
                return this;
            }

            @Deprecated
            public Builder addEventTasks(Rendering.Phase.Event.Task.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            @Deprecated
            public Builder addEventTasks(int i, Rendering.Phase.Event.Task.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            @Deprecated
            public Builder addAllEventTasks(Iterable<? extends Rendering.Phase.Event.Task> iterable) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.eventTasks_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            @Deprecated
            public Builder clearEventTasks() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.eventTasks_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            @Deprecated
            public Builder removeEventTasks(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventTasksIsMutable();
                    this.eventTasks_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            @Deprecated
            public Rendering.Phase.Event.Task.Builder getEventTasksBuilder(int i) {
                return (Rendering.Phase.Event.Task.Builder) getEventTasksFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            @Deprecated
            public Rendering.Phase.Event.TaskOrBuilder getEventTasksOrBuilder(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.eventTasks_.get(i);
                }
                return (Rendering.Phase.Event.TaskOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            @Deprecated
            public List<? extends Rendering.Phase.Event.TaskOrBuilder> getEventTasksOrBuilderList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> repeatedFieldBuilderV3 = this.eventTasksBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.eventTasks_);
            }

            @Deprecated
            public Rendering.Phase.Event.Task.Builder addEventTasksBuilder() {
                return (Rendering.Phase.Event.Task.Builder) getEventTasksFieldBuilder().addBuilder(Rendering.Phase.Event.Task.getDefaultInstance());
            }

            @Deprecated
            public Rendering.Phase.Event.Task.Builder addEventTasksBuilder(int i) {
                return (Rendering.Phase.Event.Task.Builder) getEventTasksFieldBuilder().addBuilder(i, Rendering.Phase.Event.Task.getDefaultInstance());
            }

            @Deprecated
            public List<Rendering.Phase.Event.Task.Builder> getEventTasksBuilderList() {
                return getEventTasksFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Rendering.Phase.Event.Task, Rendering.Phase.Event.Task.Builder, Rendering.Phase.Event.TaskOrBuilder> getEventTasksFieldBuilder() {
                if (this.eventTasksBuilder_ == null) {
                    this.eventTasksBuilder_ = new RepeatedFieldBuilderV3<>(this.eventTasks_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.eventTasks_ = null;
                }
                return this.eventTasksBuilder_;
            }

            private void ensureTaskBucketsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.taskBuckets_ = new ArrayList(this.taskBuckets_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            public List<Rendering.Phase.Event.TaskBucket> getTaskBucketsList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.taskBuckets_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            public int getTaskBucketsCount() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.taskBuckets_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            public Rendering.Phase.Event.TaskBucket getTaskBuckets(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.taskBuckets_.get(i);
                }
                return (Rendering.Phase.Event.TaskBucket) repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setTaskBuckets(int i, Rendering.Phase.Event.TaskBucket taskBucket) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    taskBucket.getClass();
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.set(i, taskBucket);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, taskBucket);
                return this;
            }

            public Builder setTaskBuckets(int i, Rendering.Phase.Event.TaskBucket.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            public Builder addTaskBuckets(Rendering.Phase.Event.TaskBucket taskBucket) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    taskBucket.getClass();
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(taskBucket);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(taskBucket);
                return this;
            }

            public Builder addTaskBuckets(int i, Rendering.Phase.Event.TaskBucket taskBucket) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    taskBucket.getClass();
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(i, taskBucket);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, taskBucket);
                return this;
            }

            public Builder addTaskBuckets(Rendering.Phase.Event.TaskBucket.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            public Builder addTaskBuckets(int i, Rendering.Phase.Event.TaskBucket.Builder builder) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            public Builder addAllTaskBuckets(Iterable<? extends Rendering.Phase.Event.TaskBucket> iterable) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.taskBuckets_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            public Builder clearTaskBuckets() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.taskBuckets_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            public Builder removeTaskBuckets(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureTaskBucketsIsMutable();
                    this.taskBuckets_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            public Rendering.Phase.Event.TaskBucket.Builder getTaskBucketsBuilder(int i) {
                return (Rendering.Phase.Event.TaskBucket.Builder) getTaskBucketsFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            public Rendering.Phase.Event.TaskBucketOrBuilder getTaskBucketsOrBuilder(int i) {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.taskBuckets_.get(i);
                }
                return (Rendering.Phase.Event.TaskBucketOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder
            public List<? extends Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsOrBuilderList() {
                RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> repeatedFieldBuilderV3 = this.taskBucketsBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.taskBuckets_);
            }

            public Rendering.Phase.Event.TaskBucket.Builder addTaskBucketsBuilder() {
                return (Rendering.Phase.Event.TaskBucket.Builder) getTaskBucketsFieldBuilder().addBuilder(Rendering.Phase.Event.TaskBucket.getDefaultInstance());
            }

            public Rendering.Phase.Event.TaskBucket.Builder addTaskBucketsBuilder(int i) {
                return (Rendering.Phase.Event.TaskBucket.Builder) getTaskBucketsFieldBuilder().addBuilder(i, Rendering.Phase.Event.TaskBucket.getDefaultInstance());
            }

            public List<Rendering.Phase.Event.TaskBucket.Builder> getTaskBucketsBuilderList() {
                return getTaskBucketsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Rendering.Phase.Event.TaskBucket, Rendering.Phase.Event.TaskBucket.Builder, Rendering.Phase.Event.TaskBucketOrBuilder> getTaskBucketsFieldBuilder() {
                if (this.taskBucketsBuilder_ == null) {
                    this.taskBucketsBuilder_ = new RepeatedFieldBuilderV3<>(this.taskBuckets_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.taskBuckets_ = null;
                }
                return this.taskBucketsBuilder_;
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

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Response> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Response> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Response mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public enum PayloadOneofCase implements Internal.EnumLite {
        REQUEST(1),
        RESPONSE(2),
        PAYLOADONEOF_NOT_SET(0);

        private final int value;

        PayloadOneofCase(int i) {
            this.value = i;
        }

        @Deprecated
        public static PayloadOneofCase valueOf(int i) {
            return forNumber(i);
        }

        public static PayloadOneofCase forNumber(int i) {
            if (i == 0) {
                return PAYLOADONEOF_NOT_SET;
            }
            if (i == 1) {
                return REQUEST;
            }
            if (i != 2) {
                return null;
            }
            return RESPONSE;
        }

        @Override // com.explorestack.protobuf.Internal.EnumLite
        public int getNumber() {
            return this.value;
        }
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
    public PayloadOneofCase getPayloadOneofCase() {
        return PayloadOneofCase.forNumber(this.payloadOneofCase_);
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
    public boolean hasRequest() {
        return this.payloadOneofCase_ == 1;
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
    public Request getRequest() {
        if (this.payloadOneofCase_ == 1) {
            return (Request) this.payloadOneof_;
        }
        return Request.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
    public RequestOrBuilder getRequestOrBuilder() {
        if (this.payloadOneofCase_ == 1) {
            return (Request) this.payloadOneof_;
        }
        return Request.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
    public boolean hasResponse() {
        return this.payloadOneofCase_ == 2;
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
    public Response getResponse() {
        if (this.payloadOneofCase_ == 2) {
            return (Response) this.payloadOneof_;
        }
        return Response.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
    public ResponseOrBuilder getResponseOrBuilder() {
        if (this.payloadOneofCase_ == 2) {
            return (Response) this.payloadOneof_;
        }
        return Response.getDefaultInstance();
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
        if (this.payloadOneofCase_ == 1) {
            codedOutputStream.writeMessage(1, (Request) this.payloadOneof_);
        }
        if (this.payloadOneofCase_ == 2) {
            codedOutputStream.writeMessage(2, (Response) this.payloadOneof_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeMessageSize = this.payloadOneofCase_ == 1 ? CodedOutputStream.computeMessageSize(1, (Request) this.payloadOneof_) : 0;
        if (this.payloadOneofCase_ == 2) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(2, (Response) this.payloadOneof_);
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RenderingTaskPermission)) {
            return super.equals(obj);
        }
        RenderingTaskPermission renderingTaskPermission = (RenderingTaskPermission) obj;
        if (!getPayloadOneofCase().equals(renderingTaskPermission.getPayloadOneofCase())) {
            return false;
        }
        int i = this.payloadOneofCase_;
        if (i == 1) {
            if (!getRequest().equals(renderingTaskPermission.getRequest())) {
                return false;
            }
        } else if (i == 2 && !getResponse().equals(renderingTaskPermission.getResponse())) {
            return false;
        }
        return this.unknownFields.equals(renderingTaskPermission.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i;
        int iHashCode;
        int i2 = this.memoizedHashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode2 = 779 + getDescriptor().hashCode();
        int i3 = this.payloadOneofCase_;
        if (i3 == 1) {
            i = ((iHashCode2 * 37) + 1) * 53;
            iHashCode = getRequest().hashCode();
        } else {
            if (i3 == 2) {
                i = ((iHashCode2 * 37) + 2) * 53;
                iHashCode = getResponse().hashCode();
            }
            int iHashCode3 = (iHashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode3;
            return iHashCode3;
        }
        iHashCode2 = i + iHashCode;
        int iHashCode32 = (iHashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode32;
        return iHashCode32;
    }

    public static RenderingTaskPermission parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static RenderingTaskPermission parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static RenderingTaskPermission parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static RenderingTaskPermission parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static RenderingTaskPermission parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static RenderingTaskPermission parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static RenderingTaskPermission parseFrom(InputStream inputStream) throws IOException {
        return (RenderingTaskPermission) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RenderingTaskPermission parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RenderingTaskPermission) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RenderingTaskPermission parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RenderingTaskPermission) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RenderingTaskPermission parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RenderingTaskPermission) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RenderingTaskPermission parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (RenderingTaskPermission) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static RenderingTaskPermission parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RenderingTaskPermission) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(RenderingTaskPermission renderingTaskPermission) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(renderingTaskPermission);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RenderingTaskPermissionOrBuilder {
        private int payloadOneofCase_;
        private Object payloadOneof_;
        private SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> requestBuilder_;
        private SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> responseBuilder_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable.ensureFieldAccessorsInitialized(RenderingTaskPermission.class, Builder.class);
        }

        private Builder() {
            this.payloadOneofCase_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.payloadOneofCase_ = 0;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.payloadOneofCase_ = 0;
            this.payloadOneof_ = null;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return TaskPermissionProto.internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public RenderingTaskPermission mo687getDefaultInstanceForType() {
            return RenderingTaskPermission.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RenderingTaskPermission build() {
            RenderingTaskPermission renderingTaskPermissionBuildPartial = buildPartial();
            if (renderingTaskPermissionBuildPartial.isInitialized()) {
                return renderingTaskPermissionBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) renderingTaskPermissionBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RenderingTaskPermission buildPartial() {
            RenderingTaskPermission renderingTaskPermission = new RenderingTaskPermission(this);
            if (this.payloadOneofCase_ == 1) {
                SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
                if (singleFieldBuilderV3 == null) {
                    renderingTaskPermission.payloadOneof_ = this.payloadOneof_;
                } else {
                    renderingTaskPermission.payloadOneof_ = singleFieldBuilderV3.build();
                }
            }
            if (this.payloadOneofCase_ == 2) {
                SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV32 = this.responseBuilder_;
                if (singleFieldBuilderV32 == null) {
                    renderingTaskPermission.payloadOneof_ = this.payloadOneof_;
                } else {
                    renderingTaskPermission.payloadOneof_ = singleFieldBuilderV32.build();
                }
            }
            renderingTaskPermission.payloadOneofCase_ = this.payloadOneofCase_;
            onBuilt();
            return renderingTaskPermission;
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
            if (message instanceof RenderingTaskPermission) {
                return mergeFrom((RenderingTaskPermission) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(RenderingTaskPermission renderingTaskPermission) {
            if (renderingTaskPermission == RenderingTaskPermission.getDefaultInstance()) {
                return this;
            }
            int i = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase[renderingTaskPermission.getPayloadOneofCase().ordinal()];
            if (i == 1) {
                mergeRequest(renderingTaskPermission.getRequest());
            } else if (i == 2) {
                mergeResponse(renderingTaskPermission.getResponse());
            }
            mergeUnknownFields(((GeneratedMessageV3) renderingTaskPermission).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.rendering.RenderingTaskPermission.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.rendering.RenderingTaskPermission.access$3400()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.rendering.RenderingTaskPermission r3 = (io.bidmachine.protobuf.rendering.RenderingTaskPermission) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.rendering.RenderingTaskPermission r4 = (io.bidmachine.protobuf.rendering.RenderingTaskPermission) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingTaskPermission.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.rendering.RenderingTaskPermission$Builder");
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
        public PayloadOneofCase getPayloadOneofCase() {
            return PayloadOneofCase.forNumber(this.payloadOneofCase_);
        }

        public Builder clearPayloadOneof() {
            this.payloadOneofCase_ = 0;
            this.payloadOneof_ = null;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
        public boolean hasRequest() {
            return this.payloadOneofCase_ == 1;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
        public Request getRequest() {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadOneofCase_ == 1) {
                    return (Request) this.payloadOneof_;
                }
                return Request.getDefaultInstance();
            }
            if (this.payloadOneofCase_ == 1) {
                return (Request) singleFieldBuilderV3.getMessage();
            }
            return Request.getDefaultInstance();
        }

        public Builder setRequest(Request request) {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                request.getClass();
                this.payloadOneof_ = request;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(request);
            }
            this.payloadOneofCase_ = 1;
            return this;
        }

        public Builder setRequest(Request.Builder builder) {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.payloadOneof_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            this.payloadOneofCase_ = 1;
            return this;
        }

        public Builder mergeRequest(Request request) {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadOneofCase_ == 1 && this.payloadOneof_ != Request.getDefaultInstance()) {
                    this.payloadOneof_ = Request.newBuilder((Request) this.payloadOneof_).mergeFrom(request).buildPartial();
                } else {
                    this.payloadOneof_ = request;
                }
                onChanged();
            } else {
                if (this.payloadOneofCase_ == 1) {
                    singleFieldBuilderV3.mergeFrom(request);
                }
                this.requestBuilder_.setMessage(request);
            }
            this.payloadOneofCase_ = 1;
            return this;
        }

        public Builder clearRequest() {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadOneofCase_ == 1) {
                    this.payloadOneofCase_ = 0;
                    this.payloadOneof_ = null;
                    onChanged();
                }
                return this;
            }
            if (this.payloadOneofCase_ == 1) {
                this.payloadOneofCase_ = 0;
                this.payloadOneof_ = null;
            }
            singleFieldBuilderV3.clear();
            return this;
        }

        public Request.Builder getRequestBuilder() {
            return (Request.Builder) getRequestFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
        public RequestOrBuilder getRequestOrBuilder() {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3;
            int i = this.payloadOneofCase_;
            if (i == 1 && (singleFieldBuilderV3 = this.requestBuilder_) != null) {
                return (RequestOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            if (i == 1) {
                return (Request) this.payloadOneof_;
            }
            return Request.getDefaultInstance();
        }

        private SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> getRequestFieldBuilder() {
            if (this.requestBuilder_ == null) {
                if (this.payloadOneofCase_ != 1) {
                    this.payloadOneof_ = Request.getDefaultInstance();
                }
                this.requestBuilder_ = new SingleFieldBuilderV3<>((Request) this.payloadOneof_, getParentForChildren(), isClean());
                this.payloadOneof_ = null;
            }
            this.payloadOneofCase_ = 1;
            onChanged();
            return this.requestBuilder_;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
        public boolean hasResponse() {
            return this.payloadOneofCase_ == 2;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
        public Response getResponse() {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadOneofCase_ == 2) {
                    return (Response) this.payloadOneof_;
                }
                return Response.getDefaultInstance();
            }
            if (this.payloadOneofCase_ == 2) {
                return (Response) singleFieldBuilderV3.getMessage();
            }
            return Response.getDefaultInstance();
        }

        public Builder setResponse(Response response) {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                response.getClass();
                this.payloadOneof_ = response;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(response);
            }
            this.payloadOneofCase_ = 2;
            return this;
        }

        public Builder setResponse(Response.Builder builder) {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.payloadOneof_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            this.payloadOneofCase_ = 2;
            return this;
        }

        public Builder mergeResponse(Response response) {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadOneofCase_ == 2 && this.payloadOneof_ != Response.getDefaultInstance()) {
                    this.payloadOneof_ = Response.newBuilder((Response) this.payloadOneof_).mergeFrom(response).buildPartial();
                } else {
                    this.payloadOneof_ = response;
                }
                onChanged();
            } else {
                if (this.payloadOneofCase_ == 2) {
                    singleFieldBuilderV3.mergeFrom(response);
                }
                this.responseBuilder_.setMessage(response);
            }
            this.payloadOneofCase_ = 2;
            return this;
        }

        public Builder clearResponse() {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadOneofCase_ == 2) {
                    this.payloadOneofCase_ = 0;
                    this.payloadOneof_ = null;
                    onChanged();
                }
                return this;
            }
            if (this.payloadOneofCase_ == 2) {
                this.payloadOneofCase_ = 0;
                this.payloadOneof_ = null;
            }
            singleFieldBuilderV3.clear();
            return this;
        }

        public Response.Builder getResponseBuilder() {
            return (Response.Builder) getResponseFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingTaskPermissionOrBuilder
        public ResponseOrBuilder getResponseOrBuilder() {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3;
            int i = this.payloadOneofCase_;
            if (i == 2 && (singleFieldBuilderV3 = this.responseBuilder_) != null) {
                return (ResponseOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            if (i == 2) {
                return (Response) this.payloadOneof_;
            }
            return Response.getDefaultInstance();
        }

        private SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> getResponseFieldBuilder() {
            if (this.responseBuilder_ == null) {
                if (this.payloadOneofCase_ != 2) {
                    this.payloadOneof_ = Response.getDefaultInstance();
                }
                this.responseBuilder_ = new SingleFieldBuilderV3<>((Response) this.payloadOneof_, getParentForChildren(), isClean());
                this.payloadOneof_ = null;
            }
            this.payloadOneofCase_ = 2;
            onChanged();
            return this.responseBuilder_;
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

    /* JADX INFO: renamed from: io.bidmachine.protobuf.rendering.RenderingTaskPermission$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase;

        static {
            int[] iArr = new int[PayloadOneofCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase = iArr;
            try {
                iArr[PayloadOneofCase.REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase[PayloadOneofCase.RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase[PayloadOneofCase.PAYLOADONEOF_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static RenderingTaskPermission getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<RenderingTaskPermission> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<RenderingTaskPermission> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public RenderingTaskPermission mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
