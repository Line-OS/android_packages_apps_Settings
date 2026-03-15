.class public final Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LogProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/LogProto$SettingsLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/LogProto$SettingsLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog;",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/LogProto$SettingsLogOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 665
    invoke-static {}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$000()Lcom/android/settings/intelligence/LogProto$SettingsLog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/intelligence/LogProto$1;)V
    .locals 0

    .line 658
    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setAction(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 754
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$300(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setAttribution(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$100(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setChangedPreferenceIntValue(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    .line 927
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$1000(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setChangedPreferenceKey(Ljava/lang/String;)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$700(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPageId(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$500(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    .line 989
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$1200(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V

    return-object p0
.end method
