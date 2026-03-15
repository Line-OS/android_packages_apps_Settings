.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 984
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1100()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V
    .locals 0

    .line 977
    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1800(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    return-object p0
.end method

.method public setCardName(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1500(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSliceUri(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    .line 1028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1200(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V

    return-object p0
.end method
