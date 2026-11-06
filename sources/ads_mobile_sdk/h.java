package ads_mobile_sdk;

import ads_mobile_sdk.tw1;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class h<MessageType extends tw1> implements aj2<MessageType> {
    private static final er0 a = er0.a();

    private xv3 b(MessageType messagetype) {
        if (messagetype instanceof f) {
            return ((f) messagetype).b();
        }
        return new xv3(messagetype);
    }

    private MessageType a(MessageType messagetype) throws np1 {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw b(messagetype).a().a(messagetype);
    }

    @Override // ads_mobile_sdk.aj2
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public MessageType b(my myVar, er0 er0Var) throws np1 {
        return (MessageType) a(a(myVar, er0Var));
    }

    @Override // ads_mobile_sdk.aj2
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public MessageType a(InputStream inputStream, er0 er0Var) throws np1 {
        return (MessageType) a(c(inputStream, er0Var));
    }

    public MessageType c(InputStream inputStream, er0 er0Var) throws np1 {
        my myVarA = my.a(inputStream);
        MessageType messagetypeA = a(myVarA, er0Var);
        try {
            myVarA.a(0);
            return messagetypeA;
        } catch (np1 e) {
            throw e.a(messagetypeA);
        }
    }
}
