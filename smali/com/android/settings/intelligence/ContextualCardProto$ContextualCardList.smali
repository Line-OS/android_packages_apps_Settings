.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private card_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 448
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;-><init>()V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    .line 449
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-void
.end method

.method private addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    .line 108
    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private ensureCardIsMutable()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 77
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    .line 244
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 366
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 441
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 432
    :pswitch_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    monitor-enter p0

    .line 433
    :try_start_0
    sget-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 434
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    .line 436
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 438
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0

    .line 390
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 392
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 397
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    .line 403
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 411
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 414
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 413
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 422
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 424
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 420
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    :goto_3
    throw p0

    .line 429
    :cond_6
    :pswitch_2
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object p0

    .line 381
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 382
    check-cast p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    .line 383
    iget-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 384
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 378
    :pswitch_4
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    invoke-direct {p0, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;-><init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V

    return-object p0

    .line 374
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 371
    :pswitch_6
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object p0

    .line 368
    :pswitch_7
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getCardList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 169
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 175
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 178
    iput v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
