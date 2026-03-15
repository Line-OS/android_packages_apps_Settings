.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;,
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cardCategory_:I

.field private cardName_:Ljava/lang/String;

.field private cardScore_:D

.field private sliceUri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1302
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;-><init>()V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 1303
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 546
    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    .line 547
    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    const-wide/16 v0, 0x0

    .line 549
    iput-wide v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    return-void
.end method

.method static synthetic access$1100()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
    .locals 1

    .line 540
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->setSliceUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->setCardName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    .line 968
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation

    .line 1313
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 823
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 824
    invoke-virtual {p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    return-void

    .line 821
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private setCardName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 771
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 772
    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    return-void

    .line 769
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private setSliceUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 696
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 697
    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    return-void

    .line 694
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1191
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1295
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 1286
    :pswitch_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    monitor-enter p0

    .line 1287
    :try_start_0
    sget-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1288
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    .line 1290
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1292
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0

    .line 1225
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1227
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_9

    .line 1232
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    const/16 v1, 0xa

    if-eq p3, v1, :cond_7

    const/16 v1, 0x1a

    if-eq p3, v1, :cond_6

    const/16 v1, 0x20

    if-eq p3, v1, :cond_4

    const/16 v1, 0x29

    if-eq p3, v1, :cond_3

    .line 1238
    invoke-virtual {p0, p3, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 1267
    :cond_3
    iget p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 1268
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    goto :goto_1

    .line 1256
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    .line 1257
    invoke-static {p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->forNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_5

    .line 1259
    invoke-super {p0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_1

    .line 1261
    :cond_5
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 1262
    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    goto :goto_1

    .line 1250
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1251
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 1252
    iput-object p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    goto :goto_1

    .line 1244
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1245
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 1246
    iput-object p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1276
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1278
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1274
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1279
    :goto_3
    throw p0

    .line 1283
    :cond_9
    :pswitch_2
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object p0

    .line 1205
    :pswitch_3
    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1206
    check-cast p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 1208
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasSliceUri()Z

    move-result p2

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    .line 1209
    invoke-virtual {p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasSliceUri()Z

    move-result v1

    iget-object v2, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    .line 1207
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    .line 1211
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardName()Z

    move-result p2

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    .line 1212
    invoke-virtual {p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardName()Z

    move-result v1

    iget-object v2, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    .line 1210
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardCategory()Z

    move-result p2

    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    .line 1214
    invoke-virtual {p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardCategory()Z

    move-result v1

    iget v2, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    .line 1213
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p2

    iput p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    .line 1216
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardScore()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    .line 1217
    invoke-virtual {p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardScore()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    move-object v0, p1

    .line 1215
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    .line 1218
    sget-object p2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p1, p2, :cond_a

    .line 1220
    iget p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    iget p2, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    :cond_a
    return-object p0

    .line 1202
    :pswitch_4
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    invoke-direct {p0, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;-><init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V

    return-object p0

    :pswitch_5
    return-object v0

    .line 1196
    :pswitch_6
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object p0

    .line 1193
    :pswitch_7
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;-><init>()V

    return-object p0

    nop

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

.method public getCardName()Ljava/lang/String;
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 881
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 885
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getSliceUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 889
    :cond_1
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 893
    :cond_2
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 894
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    .line 895
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 897
    :cond_3
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 898
    iget-wide v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    .line 899
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 901
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 902
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSliceUri()Ljava/lang/String;
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    return-object p0
.end method

.method public hasCardCategory()Z
    .locals 1

    .line 807
    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCardName()Z
    .locals 1

    .line 736
    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCardScore()Z
    .locals 1

    .line 840
    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSliceUri()Z
    .locals 1

    .line 661
    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getSliceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 868
    :cond_0
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 871
    :cond_1
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 872
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 874
    :cond_2
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 875
    iget-wide v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 877
    :cond_3
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
